<%@ Language=VBScript %>
<% Response.Buffer = true %>
<%Session.LCID=2058%>
<%	txtUsuario = Request.Cookies("Usuario")("USUARIO")
	if Request.QueryString("PERFIL") <> "" then
		NIVEL = Request.QueryString("PERFIL")
		RESPONSE.COOKIES("usuario")("Perfil") = cint(nivel)
	end if
	txtPerfil = Request.Cookies("Usuario")("Perfil")
	NIVEL = txtPerfil	
	owner = Application("owner")%>

<%'***************************************************
'PROCESO        : INSERCION DE NUEVOS CLIENTEs a la Intranet
'CREACION       : MABEL MOLINA
'***************************************************%>
<!--#include file="../includes/Cnn.inc"-->
<!--#include file="../includes/rutinas.asp"-->
<%
ABR = UCASE(prepara_str_sql(Request.querystring("ABR")))
NOM = left(UCASE(prepara_str_sql(Request.querystring("NOM"))),80)

FECHA ="{ fn NOW() }"
    CAD =   " SELECT TOP 1 abreviatura FROM cliente     " & _
            " where abreviatura = '"&abr&"'             "
	RS.Open CAD, CNN
   '   RESPONSE.WRITE("ACA 1")
	IF RS.RecordCount > 0  THEN	%>
        <script type="text/jscript" language="jscript">
            alert("Abreviatura de Cliente Previamente Usada")
        </script>
        <%
        response.end
    else
    '  RESPONSE.WRITE("ACA 2")
        rs.close
        aaa = Replace(abr, " ", "")
        CAD =   " SELECT replace(abreviatura, ' ' , '') FROM cliente           " & _
                " where REPLACE(abreviatura, ' ', '') = '"&aaa&"'   " 
	    RS.Open CAD, CNN
	    IF RS.RecordCount > 0  THEN	%>
            <script type="text/jscript" language="jscript">
                alert("Nombre  de Cliente ya Existe")
            </script>
        <%  response.end 
        END IF
    end if
  '  RESPONSE.WRITE("ACA")
    RS.CLOSE
'	busca si encuentra un código duplicado
	CAD =   " SELECT TOP 1 codigo FROM cliente                 " & _
			" ORDER BY codigo DESC                             "
	RS.Open CAD, CNN
	IF RS.RecordCount > 0  THEN	
		RS.MOVEFIRST
		COD = CDBL(RS("codigo")) + 1
		COD = RIGHT("000000" + LTRIM(RTRIM(COD)),5)
	ELSE 
		cod = "000000"	
	end if 	
    RS.CLOSE

    RS.OPEN "SELECT NumClienteRS FROM TB_CTRL" ,CNN
    RS.MOVEFIRST
    RESPONSE.Write(RS("NUMCLIENTErs"))
	
	rsconcarnum=("E"+right("0000"+TRIM(CSTR(CDBL(RS("NumClienteRS")+1))),4))
	
    REA = RIGHT("00000E"+TRIM(CSTR(CDBL(RS("NumClienteRS")+1)) ),8)
	
    rs.close
                                                                                                                        
  cad = " INSERT INTO CLIENTE (CODIGO,	ABREVIATURA, NOMBRE, TIPO, RSCCLIENTE, ESTADO,	FECCREA, USUCREA, STAT)          " & _  
        " VALUES('"&cod&"',	 '"&abr&"', '"&nom&"',  'E',	'"&REA&"',	'A',	getdate(),	'"&txtusuario&"','R');	     " & _  
        " INSERT INTO TEMPORADAS (CLIENTE, CODIGO, DESCRIPCION,USUARIO,FECHA,ESTADO)                                     " & _  
        " 		VALUES('"&cod&"','999','POR CONFIRMAR','AUTOGENERA',GETDATE(),'A')  ;                                    " & _  
        " INSERT INTO TEMPORADAS (CLIENTE, CODIGO, DESCRIPCION,USUARIO,FECHA,ESTADO)                                     " & _  
        " 		VALUES('"&cod&"','000','SIN TEMPORADA','AUTOGENERA',GETDATE(),'A')  ;                                    " & _  
        " INSERT INTO RSFACCAR..FT0001CLIE(CL_CCODCLI, CL_CNOMCLI,	CL_CDIRCLI, CL_CTIPCLI, CL_CVENDE,   CL_CZONVTA,     " & _  
        " CL_CESTADO,	CL_CFLADES,	CL_CTIPVTA,	CL_CTIPPRE, CL_NPORDES,	 CL_NPORDE2,	CL_NDOCVEN,	CL_CUSUCRE) VALUES ( " & _  
        " '"&rea&"', '"&nom&"', '', 'C', 'OF', '0003', 'V', 'N', '2', '1', 0,	0,	'0','sist')  ;            " & _  
		"INSERT INTO RSCONCAR..CP0001MAES(AC_CVANEXO,AC_CCODIGO,AC_CNOMBRE,AC_CDIRECC,AC_DFECCRE,AC_DFECMOD,AC_CUSER,AC_CESTADO) VALUES ('P','"&rsconcarnum&"','"&nom&"','',GETDATE(),GETDATE(),'sist','V');" & _  
        " UPDATE TB_CTRL SET NumClienteRS=NumClienteRS + 1;                                                              " & _
        " insert into DESTINOS   SELeCT (select top 1 right('0000'+ convert(varchar,convert(int,codigo)+1),4)            " & _
        " from DESTINOS order by 1 desc),  'GLOBAL', '', '', 'USA', '"&cod&"', 'AUTO', GETDATE(),'A' ;                   "
' ABREVIATUA ES CHAR(5)
' hay que grabar adicionalmente  destino,



cnn.BeginTrans
Response.Write(cad)
'Response.end
	cnn.Execute(CAD)
	If cnn.Errors.Count = 0 Then
		cnn.CommitTrans
	Else
		cnn.RollbackTrans
		Response.Write(mensaje("Error: No se pudieron grabar los datos, intente mas adelante"))
		Response.Write(NavegaHistory(-1)) 
	End if
Cnn.Close	
set Cnn = Nothing
SET RS = Nothing
'regresa a la página de donde fué llamado, para que vea que agregó el registro
cod = cstr(cod)
eee= "../clientes.asp"%>
<script>
alert('Cliente Creado')
parent.window.location.replace('<%=trim(eee)%>')
</script>