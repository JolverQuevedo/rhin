<%@ Language=VBScript %>
<%Usuario = Request.Cookies("Usuario")("USUARIO")%>
<%Response.Buffer = TRUE %>
<!--#include file="../includes/Cnn.inc"-->
<!--#include file="../comun/funcionescomunes.asp"-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="GENERATOR" Content="Microsoft Visual Studio 6.0">
</head>
<body>
<% 
'*********************** OJO **********************
'REVISAR EL LARGO DE LAS COLUMNAS de la tabla
'*********************** OJO **********************
CHK = Request.QueryString("chk")
COD = ucase(TRIM(Request.QueryString("cod")))
DES = ucase(TRIM(Request.QueryString("DES")))
TBL = TRIM(Request.QueryString("TBL"))
PK  = TRIM(Request.QueryString("PK"))
DS  = TRIM(Request.QueryString("DS"))
URL = TRIM(Request.QueryString("URL"))
largo = TRIM(Request.QueryString("largo"))
tipo =  TRIM(Request.QueryString("tipo"))
marca =  TRIM(Request.QueryString("marca"))
modelo =  TRIM(Request.QueryString("modelo"))
galga =  TRIM(Request.QueryString("galga"))
agujas =  TRIM(Request.QueryString("agujas"))
diametro =  TRIM(Request.QueryString("diametro"))
sistemas =  TRIM(Request.QueryString("sistemas"))
alimenta =  TRIM(Request.QueryString("alimenta"))
FECHA ="{ fn NOW() }"


cad = "select "&pk&", "&ds&" from "&tbl&" where "&ds&" = '"&des&"' and estado= 'a' " & _
" and ltrim(rtrim(modelo)) = '"&modelo&"' and galga = "&galga&" " & _
" and agujas = "&agujas&" and diametro = "&diametro&" and sistemas = "&sistemas&" " & _
" and alimenta = "&alimenta&" "
   response.Write(cad)


rs.open cad,cnn

if rs.recordcount > 0 and chk = "0" then
    rs.movefirst
    cod= rs.fields.item(0)
%>
<script type="text/jscript" language="jscript">
top.window.alert("Registro Duplicado")
cad = trim('<%=url%>')+ 'perfil=1&pos='+ '<%=trim(cod)%>'
top.window.location.replace(cad)
</script>
<%
response.End
end if
rs.close

CAD = " SELECT "&PK&" FROM "&TBL&" WHERE "&PK&"='"&COD&"' "
'response.Write(cad)

rs.open cad,cnn
'response.Write(rs.recordcount)
'response.end
TOTALREG = rs.recordcount
RS.CLOSE
IF TOTALREG>0 THEN	
	if chk = "" then
		CAD =	" UPDATE  "&TBL&" set           " & _
				" "&DS&"   = '"&DES&"',         " & _ 
				" TIPO     = '"&TIPO&"',        " & _
				" MARCA    = '"&MARCA&"',       " & _
				" MODELO   = '"&modelo&"',      " & _
				" GALGA    =  "&GALGA&",        " & _
				" AGUJAS   =  "&AGUJAS&",       " & _
				" DIAMETRO =  "&DIAMETRO&",     " & _
				" SISTEMAS =  "&SISTEMAS&" ,    " & _
				" ALIMENTA =  "&ALIMENTA&",     " & _
				" ESTADO   = 'A',               " & _
				" USUARIO  = '"&USUARIO&"',     " & _
				" FECHA    = "&fecha&"          " & _
				" WHERE   "&PK&" = '"&COD&"';   "
	else
		CAD =	" UPDATE "&TBL&"                " & _
				" SET  USUARIO = '"&USUARIO&"', " & _
				" FECHA = "&fecha&" ,           " & _
				" ESTADO = 'E'	                " & _ 
				" WHERE "&PK&" = '"&COD&"';     "
				cod=""
	end if	
else
    if 	trim(cod) = "AUTO" then
        rs.open "select count(*) from "&tbl&"", cnn
        xx = ""
        for i=0 to largo
            xx = xx + "0"
        next
        if rs.recordcount > 0  then
            cod = xx + trim(cstr(rs.fields.item(0)+1))    
            cod = right(cod,largo)
        ELSE
            cod = xx
        end if    
    end if        

	CAD = 	" insert into tejedoras             " & _
			" ("&PK&", "&DS&", tipo, marca,     " & _
			" MODELO, GALGA, AGUJAS, DIAMETRO,  " & _
			" SISTEMAS, ALIMENTA, ESTADO,       " & _
			" usuario, fecha )                  " & _
			" values('"&COD&"', '" & DES & "',  " & _
			" '"&TIPO&"', '"&MARCA&"',          " & _
			" '"&MODELO&"', '"&GALGA&"',        " & _
			" '"&AGUJAS&"', '"&DIAMETRO&"',     " & _
			" '"&SISTEMAS&"', '"&ALIMENTA&"',   " & _
			"  'A', '"&USUARIO&"', "&fecha&" )  " 
End if
' Inicia transacci�n , para que los datos no queden a medias
RESPONSE.WRITE("<br>")
RESPONSE.WRITE(CAD)
'RESPONSE.END
Cnn.BeginTrans	
Cnn.Execute(CAD)
if  err.number <> 0 then
	Response.Write ("No se han podido actualizar los datos soliciatados,  Reintente en unos minutos")
	Cnn.RollbackTrans
	Cnn.Abort
else
	Cnn.CommitTrans	
end if

Cnn.Close	
set Cnn = Nothing
SET RS = Nothing	
'regresa a la p�gina de donde fu� llamado, para que vea que agreg� el registro
%>
<script language="javascript" type="text/jscript">

cad = trim('<%=url%>')+ 'perfil=1&pos='+ '<%=trim(cod)%>'

top.window.location.replace(cad)
</script>
</BODY>
</HTML>
