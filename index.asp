<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<% Response.Buffer = true %>



<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="shortcut icon" href="favicon.ico">
<!--#include file="code/ingreso.code.asp"-->

<title>:- Sistema de RHIN Textil :-</title>
<style type="text/css">
<!--
body {
	background-image: url(imagenes/fondo.jpg);
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.tabla{
	background:url(imagenes/ingreso.jpg); 
	no-repeat;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	}
	
	
.Estilo5 {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px; }
   
-->
</style></head>

<body >
<center><p><br /><br /><br />
<font face="arial" size="20" color="white">
EXTRANET</font>
</p>
<table STYEL="height:'100%'"><tr valign="middle"><tr>
  <td style="height:'30%'"><p><font size="50">&nbsp;&nbsp;&nbsp;&nbsp;<br /><br /></font></p></td></tr><tr><td>
<form action="index.asp" method="post" id="frmIngreso" onSubmit="return Ingresar()">
<table width="440" class="tabla" height="272" border="0" align="center"  cellpadding="0" cellspacing="30" >
       <tr valign="bottom" align="right">
        <td>
          <table width="150" border="0" align="right" cellpadding="2" cellspacing="1">
            <tr>
              <td  align="right"><span class="Estilo5">Usuario :</span></td>
              <td><input name="txtUsr" class="Estilo5" id="txtUsr" onkeypress="enterr()"></td>
            </tr>
            <tr>
              <td><div align="right"><span class="Estilo5">Password:</span></div></td>
              <td><input name="txtPwd" id="txtPwd" type="password" class="Estilo5" onkeypress="enterr()"></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
                <td align="center"><img src="imagenes/boton_aceptar.jpg" width="67"
              onclick="if(Ingresar()==true) frmIngreso.submit();" style="cursor:hand;" onmouseover="this.src='imagenes/boton_aceptar2.JPG'" 
              onmouseout="this.src='imagenes/boton_aceptar.jpg'" height="19" /></td>
            </tr>
          </table>
               
        </td>
      </tr>  
    </table>
     </form>
 </td></tr></table>  
 </center> 
<script language="javascript" src="INCLUDES/rutinas.js"></script>
<script language="javascript">
    
//window.location.replace('http://intranet/index.asp')

    //Poner foco al elemnto inicial


document.getElementById("txtUsr").focus()

function Ingresar(){

	var btn= document.getElementById("button1")
	var _user=document.getElementById("txtUsr")
	var _pwd=document.getElementById("txtPwd")
	//btn.disabled=true

	Formatotxt(_user,false,1)

	if(_user.value==''){
		alert("Debe ingresar su Usuario",_user)
		return false
	}
	else if(_pwd.value==''){
		alert("Debe ingresar su Password",_pwd)
		return false
	}
	else
		return true
}
function enterr() {
    if (window.event.keyCode == 13) {


        ok = Ingresar()
        if (ok == true)
            frmIngreso.submit()
        else
            window.location.replace('index.asp')
       }

	}
</script>
</body>
</html>

