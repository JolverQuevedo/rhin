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
<link rel="Stylesheet" type="text/css" href="ESTILOS1.CSS" />

<script type="text/jscript" language="jscript">

function GRABAR() {
    var cad = 'comun/INSERCLI.asp' 
	cad = cad + '?nom=' + thisForm.NOM.value;
	cad = cad + '&abr=' + thisForm.ABR.value;
	document.all.body1.style.display = 'block'
	document.all.body1.src = cad  
//    window.open(cad)
}

function calcHeight()
{
  //find the height of the internal page
  var the_height=
    document.getElementById('body1').contentWindow.
      document.body.scrollHeight+25;
  //change the height of the iframe
  document.getElementById('body1').height=
      the_height;
}


</script>
<%' ABREVIATUA ES CHAR(5)%>
<!--#include file="COMUN/FUNCIONESCOMUNES.ASP"-->
<%	CONT = 1
Titulo = "CREACION DE CLIENTES"%>
<form name="thisForm" METHOD="post" ACTION=''>
<head>
<link rel="shortcut icon" href="favicon.ico">
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
</head>
<body topmargin="0" leftmargin="20" rightmargin="20" text="#000000">
<table width="100%">
	<tr>
		<td align= "left" width="25%">
			<img src="imagenes/ATRAS.gif" style="cursor:hand;" alt="" onclick="javascript: window.location.replace('SUBMENU.ASP?TIPO=17');" /></td>
		<td align="center"><table cellpadding="22" cellspacing="0" border="1" bgcolor="#f7d975" align="center"	width="100%" bordercolorlight="#f7d975">
		    <tr><td align="center"><font face="arial" size="3" color='<%=(Application("titulo"))%>' ><b><%=titulo%></b></font></td></tr>
		    </table>
		</td>
		<td align="right" width="25%"><img src="imagenes/logo.GIF" alt="" /></td>
	</tr>
	<tr>
	<td colspan="3"><hr /></td></tr>
</table>

<table id="dataentry" name="dataentry" cellpadding="2" cellspacing="1"  style="width:30%;" align="center"  >
<tr> 
	  <td style="width:40%; background-color:'<%=(Application("subtot"))%>'" class="AMERICAN22">Razón Social :	</td>
	  <td style="width:60%;"><input type="text" id="NOM" name="NOM" value="" maxlength="100" style="width:100%"  class="DATOgrandeDER" /></td>
</tr>
<tr> 
	  <td style="background-color:'<%=(Application("barra"))%>'" class="AMERICAN22">Abreviatura :</td>
	  <td><input type="text" id="ABR" name="ABR" value= '' style="width:60px;" maxlength="5"  class="DATOgrandeDER"/></td>
</tr>
</table>
<table align="center"  cellspacing="3">
<tr>
	
	<TD <%IF NIVEL > 1 THEN %>STYLE="DISPLAY:NONE"<%END IF%>>
		<IMG SRC="imagenes/DISK.gif" ALT="GRABAR"
			onclick="GRABAR()" style="cursor:hand;">	
	</td>					
</tr>
</table>
<iframe id="body1" name="body1" width="100%" style="display:block;" onload="calcHeight()" src="REPORTES\PRNrhincli.ASP"></iframe>

</form>
<script type="text/jscript" language="jscript">
function bake() { 
    document.all.body1.style.display='block'    
    document.all.body1.src='blanco.html'
    }

</script>

</BODY>
</HTML>
