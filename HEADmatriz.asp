<%@ Language=VBScript %>
<% Response.Buffer = true %>

<%	txtUsuario = Request.Cookies("Usuario")("USUARIO")
	if Request.QueryString("PERFIL") <> "" then
		NIVEL = Request.QueryString("PERFIL")
		RESPONSE.COOKIES("usuario")("Perfil") = cint(nivel)
	end if
	txtPerfil = Request.Cookies("Usuario")("Perfil")
	NIVEL = txtPerfil
%>
<link rel="stylesheet" type="text/css" href="ESTILOS1.CSS" >
<!--#include file="includes/Cnn.inc"-->
<!--#include file="COMUN/FUNCIONESCOMUNES.ASP"-->
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
</HEAD>
<BODY>
<form name="thisForm" METHOD="post"  >
<table WIDTH=100%>
<tr>
	<td align= left WIDTH=35% ROWSPAN=2>
		<img src="imagenes/ATRAS.gif" 
		style="cursor:hand;"
		onclick="javascript: top.window.location.replace('SUBMENU.ASP?TIPO=11');">
	</td>
	<td align= CENTER>
		<font face=arial size= 3 color=DarkBlue><B>ESTAMPADOS POR CLIENTE
		</b></font>
	</td>
	<TD ALIGN=right WIDTH=35% ROWSPAN=2><img src="imagenes/logo.GIF"></TD>
</TR>    
<%' recibe tabla, primary key, y descripcion
tbl = "cliente"
DS = "NOMBRE"

cad =	"select * from "&TBL&" WHERE ESTADO = 'A' order by "&DS&" "
rs.open cad,cnn
IF RS.RECORDCOUNT > 0 THEN RS.MOVEFIRST%>
<TR>
	<TD ALIGN=CENTER>	
		<SELECT ID=CLI NAME=CLI CLASS=DATOSGRANDE ONCHANGE="ENVIO()">
			<option value=''></option>
		<%DO WHILE NOT RS.EOF%>
			<option value='<%=TRIM(rs("codigo"))%>'><%=trim(rs("nombre"))%></OPTION>
			<%RS.MOVENEXT%>
		<%LOOP%>
		</SELECT>
	</TD>
</TR>

</table>
<%rs.close
set rs = nothing
set cnn=nothing%>
<SCRIPT>
function ENVIO()
{	cad = 'detaMATRIZ.asp?pos='+trim(thisForm.CLI.value)
	//alert(cad)
	top.window.frames.item(1).window.location.replace(cad)
}
</SCRIPT>
</BODY>
</HTML>
