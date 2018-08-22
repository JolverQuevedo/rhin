<%@ Language=VBScript %>
<%Response.Buffer = TRUE %>
<%	txtUsuario  = Request.Cookies("Usuario")("USUARIO")
	txtPerfil   = Request.Cookies("Usuario")("Perfil")
	NIVEL	    = Request.Cookies("Usuario")("Perfil")
    CIA = "0001"
    Session.LCID=2057%>
<!--#include file="../includes/Cnn.inc"-->
<!--#include file="../COMUN/FUNCIONESCOMUNES.ASP"-->
<script language="javascript" type="text/jscript">
 //   alert(parent.window.document.all.cart.value)
</script>
<%
cod  =  Request.QueryString("pos")
response.write(pos)
TBL = "RSFACCAR..AL" + CIA + "ARTI"

CAD =	" select  AR_CCODIGO , AR_CDESCRI, ar_cunidad FROM "&TBL&" " & _
        " WHERE AR_CCODIGO = '"&cod&"'" 
RESPONSE.Write(CAD)

RESPONSE.Write("<br>")
RESPONSE.Write(op)
rs.open cad,cnn
if rs.recordcount >0 then%>
    <script language="javascript" type="text/jscript">
        COD = '<%=rs("AR_CCODIGO") %>'
        DES = '<%=rs("AR_CDESCRI") %>'
        alert("Código DUPLICADO en Softcom ")
       // parent.window.document.all.body0.style.display='none'
       // parent.window.location.replace('../fichatelasr.asp?cod='+COD)
</script>
<%else

    response.Write("codigo Valido")%>
    <script language="javascript" type="text/jscript">
       //parent.window.document.all.body0.style.display = 'none'   
    </script>
<%end if
	RS.Close 
	SET RS  = NOTHING
	Cnn.Close
	SET Cnn = NOTHING %>
    <HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">


</HEAD>
<BODY >
    </BODY>
</HTML>