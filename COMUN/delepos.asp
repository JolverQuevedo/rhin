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
po = ucase(TRIM(Request.QueryString("PO")))
cli = ucase(TRIM(Request.QueryString("cli")))

response.write("<br>")


FECHA ="{ fn NOW() }"




		CAD = cad + " UPDATE POS                    " & _
				    " SET  USUARIO = '"&USUARIO&"', " & _
				    " FECHA = "&fecha&" ,           " & _
				    " ESTADO = 'E'	                " & _ 
				    " WHERE  PO = '"&PO&"';         "
				


' Inicia transacci�n , para que los datos no queden a medias
RESPONSE.WRITE("<br>")
RESPONSE.WRITE(CAD)
' RESPONSE.END
Cnn.BeginTrans	
Cnn.Execute(CAD)
if  err.number <> 0 then
	Response.Write ("No se han podido actualizar los datos soliciatados,  Reintente en unos minutos")
	Cnn.RollbackTrans
	Cnn.Abort
else
	Cnn.CommitTrans	
end if
%>
<script language="javascript" type="text/jscript">
       parent.window.location.replace('../detapos.asp?pos=' + '<%=cli%>' )

   
   // alert(top.window.document.all.body0.src)

</script>

<%
Cnn.Close	
set Cnn = Nothing
SET RS = Nothing	

'regresa a la p�gina de donde fu� llamado, para que vea que agreg� el registro
%>

</BODY>
</HTML>