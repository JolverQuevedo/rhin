<%@ Language=VBScript %>
<% Response.Buffer = true %>
<%Session.LCID=2057%>
<%	txtUsuario = Request.Cookies("Usuario")("USUARIO")
	if Request.QueryString("PERFIL") <> "" then
		NIVEL = Request.QueryString("PERFIL")
		RESPONSE.COOKIES("usuario")("Perfil") = cint(nivel)
	end if
	txtPerfil = Request.Cookies("Usuario")("Perfil")
	NIVEL = txtPerfil%>
<!--#include file="includes/Cnn.inc"-->
<!--#include file="COMUN/FUNCIONESCOMUNES.ASP"-->
<link rel="stylesheet" type="text/css" href="ESTILOS1.CSS" />
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/jscript" language="jscript">
var aCod = Array() 
function calcHeight()
{
  //find the height of the internal page
  var the_height=
    document.getElementById('body0').contentWindow.
      document.body.scrollHeight+25;
  //change the height of the iframe
  document.getElementById('body0').height=
      the_height;
}

</script>
<%	oc =  request.QueryString("oc") 
lin =  request.QueryString("lin") 
cod =  request.QueryString("cod") 
des =  request.QueryString("des") 
uni =  request.QueryString("uni") 
igv =  request.QueryString("igv") 
isc =  request.QueryString("isc") 
IF  LEN(TRIM(request.QueryString("can"))) = 0 THEN CAN= 0 ELSE can =  request.QueryString("can") 
if trim(request.QueryString("pre")) = "" then pre = 0 else pre =  request.QueryString("pre") 
com =  request.QueryString("com") 

    if trim(oc)= "" then oc = "AUTO"
	Set RS2 = Server.CreateObject("ADODB.Recordset")
	RS2.CursorLocation   = 3
	RS2.CursorType       = 3    
	RS2.LockType         = 1 	

    cad = "exec OC_LIN_COD '"&oc&"', '"&lin&"' , '"&cod&"' "  
	'   response.Write(cAD)
	rs.open cad, cnn                                                                    
	IF RS.RecordCount > 0 THEN 		RS.MOVEFIRST
	
%>
<html xmlns="http://www.w3.org/1999/xhtml" lang="es" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" lang="es-pe" />
<title>FICHA O/C</title>

    <script language="javascript" type="text/javascript">
// <![CDATA[

        function DES_onclick() {

        }

// ]]>
    </script>
</head>
<body style="margin-left:0px; margin-top:0px; margin-right:0px;" >
<form id="thisForm" method="post" name="thisForm" action="comun/inserFICHAoc.asp">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr valign="center" > 
    <td width="10%" align="left"><img src="imagenes/CERRAR.gif" style="cursor:pointer;" onClick="top.window.close()" /></td>	
          <td align = "center" class="TALASBLUE" width="80%">   
            <table cellpadding="10" cellspacing="1" border="1" bgcolor="#f7d975" align="center" width="100%">
		        <tr><td style="text-align:center" class="talasblue">ARTICULO O/C</td></tr></table>
            </td>
            <td align="center"><img src="imagenes/disk.gif" alt="GRABA" style="cursor:pointer" onclick="graba()" /></td>
       
    </tr>
</table>  
<iframe  width="100%" style="display:none; width:100%;" src="" id="body10" name="body10" scrolling="yes" frameborder="0" ></iframe>
<table width="100%" border="1" border="<%=APPLICATION("COLOR2") %>" cellpadding="0" cellspacing="0" >   
	<tr valign="middle"><td bgcolor="#f7d975" style="height:1px;"></td></tr>
</table>
<table cellpadding="5" cellspacing="0" border="0" bgcolor='<%=APPLICATION("FONDITO") %>' bordercolor='<%=APPLICATION("COLOR2") %>' width="100%">
    <tr align="left" class="AMERICANnavy" ><td style="width:100%">DATOS DEL ARTICULO</td></tr></table>
<table border="1" cellpadding="0" width="100%" cellspacing="0" bgcolor="<%=(Application("color2"))%>" bordercolordark="<%=(Application("borde"))%>" bordercolorlight="<%=(Application("COLOR1"))%>">
    <tr valign="top">
        <td bgcolor="<%=(Application("BARRA"))%>" class="TITULITOch"  width="20%">C&oacute;digo Art&iacute;culo </td>
        <td width="20%" colspan="2"><input type="text" id="COD" name="COD" value="<%=COD%>"  class="DATOSKHAKI" onChange="BAKECOD('')" onDblClick="helpCOD('')" maxlength="25"/></td>
        <td bgcolor="<%=(Application("BARRA"))%>" class="TITULITOch" width="15%">Num Lin</td>
        <td width="20%"><input type="text" id="LIN" name="LIN" value="<%=LIN %>" style="width:100%; text-align:center"class="descriptores"  tabindex="-1" readonly/></td>
    </tr>
  <tr>
    <td bgcolor="<%=(Application("BARRA"))%>" class="TITULITOch">Descripcip&oacute;n</td>
    <td colspan="4"><input type="text" id="DES" name="DES" value="<%=rs("OC_CDESREF")%>" class="barra333" maxlength= "60" style="width:100%;text-align:left;" onclick="return DES_onclick()" /></td>
    </tr>
  <tr>  
    <td bgcolor="<%=(Application("BARRA"))%>" class="TITULITOch">Cod. REFERENCIA</td>
    <td colspan="2"><input type="text" id="KOD" name="KOD" value="<%=trim(RS("OC_CCODREF"))%>" class="DATOSKHAKI" onchange="BAKECOD('X')" ondblclick="helpCOD('K')" maxlength="25"/></td>
    <%solo = RS("OC_CCODREF")
    pop = "select AR_CDESCRI from rsfaccar..al0001arti where ar_ccodigo = '"&solo&"'" 
    rs2.open pop,cnn
    if rs2.recordcount > 0 then 
        rs2.movefirst
        relacion = rs2("ar_cdescri")
    else
        relacion = ""
    end if
    rs2.close
    %>
    <td bgcolor="<%=(Application("BARRA"))%>" class="TITULITOch"  width="20%" colspan="2">
    <input type="text" id="DKOD" name="DKOD" value="<%=relacion%>" style="width:100%; text-align:left"class="descriptores"  tabindex="-1" readonly/></td>      
    </tr>
  <tr>
    <td bgcolor="<%=(Application("BARRA"))%>" class="TITULITOch" width="20%">Comentario </td>
    <td colspan="4"><textarea id="COME" name="COME" class="barra333" maxlength="250" style="width:100%;text-align:left" ><%=trim(rs("COMe"))%></textarea></td>
    </tr>
  <tr>
    <td bgcolor="<%=(Application("BARRA"))%>" class="TITULITOch">Unidad </td>
    <td WIDTH="10%"><input type="text" id="UNI" name="UNI" value="<%=rs("uni")%>" class="DESCRIPTORES" style="text-align:center" readonly tabindex="-1" /></td>
    <td bgcolor="<%=(Application("BARRA"))%>">&nbsp;</td>
    <td bgcolor="<%=(Application("BARRA"))%>" class="TITULITOch">F. Entrega </td>
    <td WIDTH="10%"><input type="text" id="ENT" name="ENT" value="<%=date()%>" class="BARRA333" style="text-align:center; width:100%"  /></td>
    </tr>
  <tr>
    <td bgcolor="<%=(Application("BARRA"))%>" class="TITULITOch" >Part Arancelaria </td>
    <td><input id="PAR" name="PAR" class="descriptores" readonly tabindex="-1" /></td>
        <td colspan="3"><input id="ARA" name="ARA" class="DESCRIPTORES" readonly tabindex="-1" style="width:100%" /></td>
    </tr> 
</table>
<table width="100%"><tr><td style=" height:1px"></td></tr></table>
<table border="1" cellpadding="0" width="100%" cellspacing="0" bgcolor="<%=(Application("color2"))%>" bordercolordark="<%=(Application("borde"))%>" bordercolorlight="<%=(Application("COLOR1"))%>">
    <tr valign="middle">
        <td bgcolor="<%=(Application("BARRA"))%>" class="TITULITOch"  width="20%">Cantidad Pedida</td>
        <td  colspan="2" width="30%"><input type="text" id="PED" name="PED" value="<%=formatnumber(rs("ped"),3,,true)%>" 
        class="BARRA333" style="width:100%; text-align:right; padding-right:5px" maxlength="10" /></td>
        <td bgcolor="<%=(Application("BARRA"))%>" class="TITULITOch" colspan="2" width="50%">&nbsp;</td>
  </tr>
  <tr valign="middle">
        <td bgcolor="<%=(Application("BARRA"))%>" class="TITULITOch" >Precio Original </td>
      <td  colspan="2"><input type="text" id="PRE" name="PRE" value="<%=formatnumber(rs("PRE"),2,,true)%>" class="BARRA333" style="width:100%; text-align:right; padding-right:5px" maxlength="10" onkeyup="this.value=toInt(this.value)" /></td>
        <td bgcolor="<%=(Application("BARRA"))%>" class="TITULITOch" colspan="2">&nbsp;</td>
</tr>
<tr valign="middle">
  <td bgcolor="<%=(Application("BARRA"))%>" class="TITULITOch" >Solicitante</td>
  <td width="10%" ><input type="text" id="SOLI" name="SOLI" value="<%%>" class="BARRA333" style="width:100%; text-align:left" maxlength="3" value="<%=trim(rs("soli"))%>"/></td>
  <td colspan="3"  bgcolor="<%=(Application("BARRA"))%>">&nbsp;</td>
</tr>
<tr valign="middle">
     <td bgcolor="<%=(Application("BARRA"))%>" class="TITULITOch"  width="20%">C. Costo</td>
     <td colspan="4"><select id="CCTO" name="CCTO" class="DESCRIPTORES">
            <option value =""></option>
            <%CAD = "Select * From RSFACCAR..AL0001TABL Where TG_CCOD='10' Order by TG_CCLAVE" 
            RS2.OPEN CAD, CNN
            IF RS2.RECORDCOUNT >0 THEN     RS2.MOVEFIRST
            DO WHILE NOT RS2.EOF%>
            <option value ='<%=RS2("TG_CCLAVE")%>'><%=RS2("TG_CCLAVE")%>&nbsp;&nbsp;<%=RS2("TG_CDESCRI")%></option>
                <%RS2.MOVENEXT
            LOOP
            RS2.CLOSE%>
        </select>
     </td>
 </tr>
 <tr valign="middle">
  <td bgcolor="<%=(Application("BARRA"))%>" class="TITULITOch" colspan="2">Dsct. Financiero</td>
  <td width="10%" ><input type="text" id="FINA" name="FINA" value="<%=formatnumber(rs("fina"),2,,true)%>" class="BARRA333" style="width:100%; text-align:right; padding-right:5px;"maxlength="3" onkeyup="this.value=toInt(this.value)" /></td>
  <td colspan="2" bgcolor="<%=(Application("BARRA"))%>" class="TITULITOch" style="text-align:left">&nbsp;%</td>
</tr>
<tr valign="middle">
  <td bgcolor="<%=(Application("BARRA"))%>" class="TITULITOch" colspan="1">Dsct. Item</td>
  <td bgcolor="<%=(Application("BARRA"))%>" ><input type="checkbox" id="CHK1" name="CHK1" value="0" class="BARRA333" style="width:100%; text-align:center;"/></td>
  <td width="10%" ><input type="text" id="DITE" name="DITE" value="<%=formatnumber(rs("DITE"),2,,true)%>" class="BARRA333" style="width:100%; text-align:right; padding-right:5px;"maxlength="5" onkeyup="this.value=toInt(this.value)" /></td>
  <td colspan="2" bgcolor="<%=(Application("BARRA"))%>" class="TITULITOch" style="text-align:left">&nbsp;%</td>
</tr>
<tr valign="middle">
  <td bgcolor="<%=(Application("BARRA"))%>" class="TITULITOch" colspan="1">Dsct. Adic</td>
  <td bgcolor="<%=(Application("BARRA"))%>" ><input type="checkbox" id="CHK2" name="CHK2" value="0" class="BARRA333" style="width:100%; text-align:center;"/></td>
  <td width="10%" ><input type="text" id="DADI" name="DADI" value="<%=formatnumber(rs("DADI"),2,,true)%>" class="BARRA333" style="width:100%; text-align:right; padding-right:5px;"maxlength="5" onkeyup="this.value=toInt(this.value)" /></td>
  <td colspan="2" bgcolor="<%=(Application("BARRA"))%>" class="TITULITOch" style="text-align:left">&nbsp;%</td>
</tr>
<tr valign="middle">
  <td bgcolor="<%=(Application("BARRA"))%>" class="TITULITOch" colspan="1">Incluye IGV</td>
  <td bgcolor="<%=(Application("BARRA"))%>" ><input type="checkbox" id="CHK3" name="CHK3" value="0" class="BARRA333" style="width:100%; text-align:center;" onkeyup="this.value=toInt(this.value)" /></td>
  <td width="10%" ><input type="text" id="IIGV" name="IIGV" value="<%=forMATNUMBER(rs("Iigv"),2,,TRUE)%>" class="descriptores" style="width:100%; text-align:right; padding-right:5px;" readonly tabindex="-1" /></td>
  <td colspan="2" bgcolor="<%=(Application("BARRA"))%>" class="TITULITOch" style="text-align:left">&nbsp;%</td>
</tr>
<tr valign="middle">
  <td bgcolor="<%=(Application("BARRA"))%>" class="TITULITOch" colspan="1">Incluye ISC</td>
  <td bgcolor="<%=(Application("BARRA"))%>" ><input type="checkbox" id="CHK4" name="CHK4" value="0" class="BARRA333" style="width:100%; text-align:center;"/></td>
  <td width="10%" ><input type="text" id="IISC" name="IISC" value="<%=forMATNUMBER(rs("IiSC"),2,,TRUE)%>" class="descriptores" style="width:100%; text-align:right; padding-right:5px;" readonly tabindex="-1"/></td>
  <td colspan="2" bgcolor="<%=(Application("BARRA"))%>" class="TITULITOch" style="text-align:left">&nbsp;%</td>
</tr>
</table>
<table width="100%"><tr><td style=" height:1px"></td></tr></table>
<table width="100%">
  <tr><td style=" height:1px"></td></tr></table>
<iframe  width="100%" style="display:none; height:200px;" src="" id="body0" name="body0" scrolling="yes" frameborder="0" ></iframe>

<script type="text/jscript" language="jscript">
    var opc = "directories=no,status=no,titlebar=yes,toolbar=no,hotkeys=no,location=no,";
    opc += "menubar=no,resizable=yes,scrollbars=yes,left=100,top=20,height=600,width=900";



var subcadena = '<%=RS("CCTO")%>';
var elemento = document.all.CCTO;
document.all.CCTO.selectedIndex = seleindice(subcadena, elemento);

function BAKECOD(cop) {
//alert(cop)
    if (trim(cop) == '')
        cad = 'bake/bakeREALcod.asp?pos=' + trim(thisForm.COD.value) + '&opp=' + cop
    else
        cad = 'bake/bakeREALcod.asp?pos=' + trim(thisForm.KOD.value) + '&opp=' + cop
/*
document.all.body10.style.display = 'block'
document.all.body10.height = "350"
document.all.body10.width = "100%"
*/
document.all.body10.src = cad
//document.all.body10.style.display = 'none'
}

function helpCOD(OP) {
if (trim(OP)== '')
    cad = 'help/HLPartREALr.asp?pos=' + trim(document.all.COD.value) + '&opp=' + OP
else
    cad = 'help/HLPartREALr.asp?pos=' + trim(document.all.KOD.value) + '&opp=' + OP
//alert(cad)
window.open(cad,'',opc)
}

function graba() {
    var opc = "directories=no,status=no,titlebar=yes,toolbar=no,hotkeys=no,location=no,";
    opc += "menubar=no,resizable=yes,scrollbars=no,left=100,top=20,height=600,width=900";
    if (trim(document.all.COD.value) == '') {
        alert("Favor ingresar el codigo del articulo")
        document.all.COD.focus();
        return false;
    }
    if (trim(toInt(document.all.PRE.value)) == '') {
        alert("Favor ingresar el precio del articulo")
        document.all.PRE.focus();
        return false;
    }
    if (parseInt(trim(document.all.PED.value),10)== 0) {
        alert("Por favor informar la Cantidad Solicitada")
        top.window.derecho.document.all.OFI1.focus();
        return false;
    }
    if (fecha(document.all.ENT.value) == false) {
        alert("Formato de Fecha incorrecto")
        return false;
    }

    kad  = '&cod=' +  trim(document.all.COD.value)
    kad += '&lin=' +  trim(document.all.LIN.value)
    kad += '&DES=' + ltrim(document.all.DES.value)
    kad += '&COM=' + Left(toAlpha(document.all.COME.value, 250))
    kad += '&UNI=' +  trim(document.all.UNI.value)
    kad += '&PAR=' +  trim(document.all.PAR.value)
    kad += '&ARA=' +  trim(document.all.ARA.value)
    kad += '&ENT=' +  trim(document.all.ENT.value)
    kad += '&PED=' +  trim(toInt(document.all.PED.value))
    kad += '&PRE=' +  trim(toInt(document.all.PRE.value))
    kad += '&sol=' +  trim(document.all.SOLI.value)
    kad += '&cto=' +  trim(document.all.CCTO.value)
    kad += '&FIN=' +  trim(toInt(document.all.FINA.value))
    kad += '&DCT=' +  trim(toInt(document.all.DITE.value))
    kad += '&ADI=' +  trim(toInt(document.all.DADI.value))
    kad += '&IGV=' +  trim(toInt(document.all.IIGV.value))
    kad += '&ISC=' +  trim(toInt(document.all.IISC.value))
    kad += '&ch1=' +  trim(document.all.CHK1.value)
    kad += '&ch2=' +  trim(document.all.CHK2.value)
    kad += '&ch3=' +  trim(document.all.CHK3.value)
    kad += '&ch4=' +  trim(document.all.CHK4.value)
    kad += '&ref=' +  trim(document.all.KOD.value)



    cad = 'comun/inserOCLINr.asp?OC=' + trim('<%=trim(oc)%>') + kad
    //alert(cad)
    document.all.body0.style.display = 'block'
    document.all.body0.src = cad

















    return true;
}

</script>
<%	RS.Close  
SET RS  = NOTHING
Cnn.Close
SET Cnn = NOTHING %>
</form>
<script type="text/javascript">
$(document).ready(function(){
    // Función a lanzar cada vez que se presiona una tecla en un textarea
    // en el que se encuentra el atributo maxlength
    $("textarea[maxlength]").keyup(function() {
        var limit   = $(this).attr("maxlength"); // Límite del textarea
        var value   = $(this).val();             // Valor actual del textarea
        var current = value.length;              // Número de caracteres actual
        if (limit < current) {                   // Más del límite de caracteres?
             // Establece el valor del textarea al límite
             $(this).val(value.substring(0, limit));
         }
     });
 });
 </script>
</body>
</html>