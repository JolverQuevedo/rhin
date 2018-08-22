<%@ Language=VBScript %>
<%Usuario = Request.Cookies("Usuario")("USUARIO")%>
<!--#include file="../includes/Cnn.inc"-->

<%Response.Buffer = TRUE %>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
</HEAD>
<BODY>

<%
'*********************** OJO **********************
'REVISAR EL LARGO DE LAS COLUMNAS de la tabla
'*********************** OJO **********************

OC =    TRIM(REQUEST.QUERYSTRING("OC"))
rs.open ("select oc_Ccodpro,OC_CTIPORD, OC_DFECDOC, oc_ntipcam, oc_ccodmon from RSFACCAR..CO0001MOVC  where oc_cnumord = '"&OC&"'"),cnn
pro  = rs("oc_ccodpro")
TIP = RS("OC_CTIPORD")
FECD = RS("OC_DFECDOC")
cam= rs("oc_ntipcam")
mon = rs("oc_ccodmon")
tc = rs("oc_ntipcam")
rs.close
' capturo el codigo de proveedor de la cabecera

lin =   UCASE(TRIM(REQUEST.QUERYSTRING("lin")))


' Borra la linea
CAD = " Delete From RSFACCAR..CO0001MOVD Where OC_CNUMORD='"&OC&"' AND OC_CITEM='"&LIN&"' ; "
response.write(cad)
Cnn.BeginTrans	
Cnn.Execute(CAD) 
cad = cad + " update  "
cad = "" 
 '  CNN.EXECUTE "select * INTO TMPOC from  RSFACCAR..CO0001MOVD Where OC_CNUMORD='"&OC&"' order by oc_citem"

   RS.OPEN "SELeCT * FROM RSFACCAR..CO0001MOVD Where OC_CNUMORD='"&OC&"' order by oc_citem "
  if rs.recordcount > 0 then 
    rs.movefirst
    con = 1
    do while not rs.eof
        con = right("0000" + trim(cstr(con)),4)
        LN = RS("OC_CITEM")
        CAD = CAD + "update RSFACCAR..CO0001MOVD SET OC_CITEM = '"&CON&"' WHERE OC_CNUMORD='"&OC&"' AND OC_CITEM='"&LN&"' ; "
        rs.movenext
        con = con + 1
    loop    
  end if  

RESPONSE.WRITE("<br>")
RESPONSE.WRITE(CAD)

cnn.execute(caD)
''response.end

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
'regresa a la página de donde fué llamado, para que vea que agregó el registro
%>
<script language="javascript" type="text/jscript">
//top.window.opener.window.location.replace('../FICHAOCdeta.ASP?OC='+ '<%=OC%>')
//    alert(parent.window.location)
    parent.window.location.replace('../FICHAOCdetar.ASP?OC=' + '<%=OC%>' + '&tc=' + '<%=tc%>')
   // alert("actualizooo")
 //   top.window.close()
</script>
</BODY>
</HTML>
