<%@ Language=VBScript%>
<% Response.Buffer = true %>
<%Session.LCID=2057%>
<%	txtUsuario = Request.Cookies("Usuario")("USUARIO")
	if Request.QueryString("PERFIL") <> "" then
		NIVEL = Request.QueryString("PERFIL")
		RESPONSE.COOKIES("usuario")("Perfil") = cint(nivel)
	end if
	txtPerfil = Request.Cookies("Usuario")("Perfil")
	NIVEL = txtPerfil
%>
<script type="text/jscript">
var chk = ''
var marca = 0
var oldrow = 1
var url = '../DETAatencion.asp?'
var alias = 'VIEW_POS_movi'
var TBL = 'VIEW_POS_movi'
var PK = 'ID'
var DS = 'PO'
var pagesize = 20
var oldrow = 1
var olddata = ''
var chk = ''
var ficha = 'detaatencion.asp?po='
mm=-1
</script>
<!--#include file="includes/Cnn.inc"-->
<!--#include file="COMUN/comunhlp.ASP"-->
<!--#include file="COMUN/FUNCIONESCOMUNES.ASP"-->
<%
POS = Request.QueryString("co")
if pos = "" or isnull(pos)  or pos = " " then
	pos = ""
end if
nume = Request.QueryString("nume")
glos = Request.QueryString("glos")
pe1 = Request.QueryString("pe1")
pe2 = Request.QueryString("pe2")
ps1 = Request.QueryString("ps1")

' HAY QUE JALAR DE LA TABLA DE PARAMETROS EL PORCENTAJE DE TOLERANCIA PARA LA ATENCION DE LAS COMPRAS
RS.OPEN "Select TG_CDESCRI From RSFACCAR..AL0001TABL WHERE TG_CCOD='93' And TG_CCLAVE='EXCECOM' ",CNN

IF RS.RECORDCOUNT > 0 THEN TOLERANCIA=1+(CDBL(RS("TG_CDESCRI"))/100) ELSE TOLERANCIA = 1
RS.CLOSE
'****************************************************
cad =   " Select OC_CITEM as ITEM, OC_CCODIGO AS CODIGO, OC_CDESREF AS DESCRIPCION, OC_CUNIDAD AS UNI,  " & _
        " CONVERT(NUMERIC(13,3),OC_NCANORD) AS ORDENADO, CONVERT(NUMERIC(13,3),OC_NCANTEN) AS ATENDIDO, " & _
        " CONVERT(NUMERIC(13,3), (OC_NCANORD-OC_NCANTEN)*1.15) AS POR_ATENDER, oc_ccodref as ARTICULO   " & _
        " From RSFACCAR..CO0001MOVD Where  OC_CNUMORD= '"&pos&"' ;                                      "
   '     response.write(cad)
rs.open cad, cnn
if rs.recordcount <=0 then po = ""
rs.close
	
	RS.Open CAD, Cnn
' contador de lineas
	CONT = 1
IF RS.RECORDCOUNT > 0 THEN 
	RS.MOVEFIRST%>
<%else%>
    <script type="text/jscript">
	    marca = 1	
    </script>
<%END IF%>
<script type="text/jscript">
    mm = '<%=rs.recordcount%>'
    var funcionalidad = ''
</script>
<%' Nro de columnas regresadas por el objeto RECORDSET	
LIMITE = rs.Fields.Count-1
' Modelo de objetos de secuencia de comandos de VI 6.0 habilitado %><head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>

<style>
div.parte{
border: 0px solid #000000;
float: left;
width: 50%;
height: 100%;
}
</style>
<link rel="stylesheet" type="text/css" href="estilos1.CSS" />
<html xmlns="http://www.w3.org/1999/xhtml">
<% ' Modelo de objetos de secuencia de comandos de VI 6.0 habilitado %>

<head>
<title></title>
<meta name="GENERATOR" Content="Microsoft Visual Studio 6.0">
</head>
<body topmargin="0" leftmargin="10" rightmargin="10" border="0" text="#000000" >

<div class="parte">
<form name="thisForm" method="post" action="">
<table id="TABLA" align="center"  bordercolor="#FFFFFF" 
	  bgcolor="lightgrey"  cellpadding="2"  cellspacing="1"  border="1" >
<%'**************************%>
<%'LINEA DE CABECERA STANDAR %>
<%'**************************%>
<tr class="DATOSceleste">
<%for I=0 to LIMITE %>
	<td align="center" class="TITULITOcenterWhite"><%=trim(RS.FIELDS(I).NAME)%></td>
<%next%>	
</tr>
<%'*****************************%>
<%' MUESTRA EL GRid (2 colorES) %>
<%'*****************************%>
<%IF NOT RS.EOF THEN%>
<%DO WHILE NOT RS.EOF%>
    <tr  bgcolor="<% if CONT mod 2  = 0 THEN 
                response.write(Application("color2"))
                else
	            response.write(Application("color1"))
	            end IF%>"
	            onclick="dd('<%=(cont)%>');ficha('<%=cont%>')" id="fila<%=Trim(Cstr(cont))%>" >  
                <td class="DESCRIPTORES" style="width:5%"><%=trim(RS.FIELDS.ITEM(0))%></td>  
	
		<td class="DESCRIPTORES" style="width:10%"><%=trim(RS.FIELDS.ITEM(1))%></td>
	    <td class="DESCRIPTORES" style="width:60%"><%=trim(RS.FIELDS.ITEM(2))%></td>
        <td class="DESCRIPTORES" style="width:5%"><%=trim(RS.FIELDS.ITEM(3))%></td>
      <%for i=LIMITE-3 to LIMITE-1%>
        <%IF CDBL(trim(RS.FIELDS.ITEM(I))) > 0 THEN  DATO = FORMATNUMBER(CDBL(trim(RS.FIELDS.ITEM(I))),3,,,TRUE) ELSE DATO = "0.000"  %>
		<td class="DESCRIPTORES" width="5%" style="text-align:right; padding-right:10px;"><%=DATO%></td>
	  <%NEXT%>	
     <td class="DESCRIPTORES" style="width:15%" ><%=(RS.FIELDS.ITEM(I))%></td>
	<%RS.MOVENEXT%>
	<%CONT = CONT + 1%>
  </tr>
	<%loop%>
</table>
<%end if%>
<iframe  width="100%" src="" id="body0" name="body0" scrolling="yes" frameborder="1" height="200" align="middle" style="display:block" ></iframe>
<%rs.close%>
</div>

<div class="parte">
    <table id="TABLA2" align="center"  bordercolor="#FFFFFF" 
	  bgcolor="lightgrey"  cellpadding="2"  cellspacing="1"  border="0" >
    <%'**************************%>
    <%'LINEA DE CABECERA STANDAR %>
    <%'**************************%>
        <tr class="DATOSceleste">
            <td align="center" class="TITULITOcenterWhite" colspan="10">Detalle de Cantidad</td>
        </tr>
        <tr bgcolor='<%=Application("color1")%>'>
            <td class="TALASBLUE22" width="5%">Servicio</td>
            <td colspan="3" Width="10%"><input id="codi" name="codi" value="" class="TALASBLUE22"  readonly tabindex="-1"/></td>
            <td colspan="6"><input id="dscr" name="dscr" value="" class="TALASBLUE22" style="width:100%"  readonly tabindex="-1"/></td>
        </tr>
        <tr bgcolor='<%=Application("color1")%>'>
            <td class="TALASBLUE22">Articulo</td>
            <td colspan="3"><input id="arti" name="arti" value="" class="TALASBLUE22"  readonly tabindex="-1"/></td>
            <td colspan="6"><input id="dsar" name="dsar" value="" class="TALASBLUE22" style="width:100%"  readonly tabindex="-1"/></td>
            
        </tr>
        <tr bgcolor='<%=Application("color1")%>'>
            <td colspan="4"  class="TALASBLUE22" align="right">Unidad de Medida</td>
            <td width="5%"><input id="unid" name="unid" value="" class="TALASBLUE22" readonly tabindex="-1"/></td>
            <td colspan="5"><input id="dsun" name="dsun" value="" class="TALASBLUE22" style="width:100%"  readonly tabindex="-1" /></td>
            
        </tr>
        <tr bgcolor='<%=Application("color1")%>'>
            <td class="TALASBLUE22">Ordenado</td>
            <td width="10%"><input id="orde" name="orde" value="" class="TALASBLUE22"  style="text-align:right;padding-right:5px;" readonly tabindex="-1"/></td>
            <td colspan="2"  class="TALASBLUE22"style="width:35%; text-align:right;">Precio_Unit</td>
            <td width="5%"><input id="puni" name="puni" value="" class="TALASBLUE22" style="text-align:right;padding-right:5px;"  readonly tabindex="-1"/></td>
            <td><input id="dmon" name="dmon" value="" class="TALASBLUE22"  style="text-align:right;padding-right:5px;" readonly tabindex="-1"/></td>
            <td  class="TALASBLUE22" width="5%">Total</td>
            <td><input id="tota" name="tota" value="" class="TALASBLUE22"  style="text-align:right;padding-right:5px;" readonly tabindex="-1"/></td>
        </tr>
         <tr bgcolor='<%=Application("color1")%>'>
            <td class="TALASBLUE22">Recibido</td>
            <td width="10%"><input id="reci" name="reci" value="" class="TALASBLUE22"  style="text-align:right;padding-right:5px;"readonly tabindex="-1"/></td>
            <td  class="TALASBLUE22" width="5%" colspan="2" style="text-align:right;">Tip. Cam.</td>
            <td><input id="tipc" name="tipc" value="" class="TALASBLUE22"  style="text-align:right;padding-right:5px;" readonly tabindex="-1"/></td>
            <td><input id="chks" name="chks" value="" class="TALASBLUE22"  style="text-align:right;padding-right:5px;" readonly tabindex="-1"/></td>
            <td colspan="2"  class="TALASBLUE22">&nbsp;</td>
        </tr>
        <tr bgcolor='<%=Application("color1")%>'>
            <td class="TALASBLUE22">Por Recibir</td>
            <td width="10%"><input id="xrec" name="xrec" value="" class="TALASBLUE22" style="text-align:right;padding-right:5px;"  readonly tabindex="-1"/></td>
            <td colspan="6"  class="TALASBLUE22" style="text-align:left"> Incluida la tolerancia definida como parámetro</td>
        </tr>
        <tr bgcolor='<%=Application("color1")%>'>
            <td class="TALASBLUE22">Recibiendo</td>
            <td width="10%"><input id="aten" name="aten" value="" class="TALASBLUE22" onkeyup="this.value = toInt(this.value)" onchange="vale()"  /></td>
            <td colspan="2"  class="TALASBLUE22" style="width:20%; text-align:right;">Precio_Unit 2</td>
            <td><input id="pund" name="pund" value="" class="TALASBLUE22" style="text-align:right;padding-right:5px;" onkeyup="this.value = toInt(this.value)"/></td>
            <td><input id="mone" name="mone" value="" class="TALASBLUE22"  style="text-align:right;padding-right:5px;" readonly tabindex="-1"/></td>
            <td  class="TALASBLUE22">Total</td>
            <td><input id="gtot" name="gtot" value="" class="TALASBLUE22"  style="text-align:right;padding-right:5px;" readonly tabindex="-1"/></td>
        </tr>
    </table>
    <center>
        <img src="imagenes/do.png" onclick="graba('0')" />&nbsp;&nbsp; <img src="imagenes/fin.png" onclick="fin('1')" />
    </center>
</div>


<script language="jscript" type="text/jscript">
    var opc = "directories=no,status=no,titlebar=yes,toolbar=no,hotkeys=no,location=no,";
    opc += "menubar=no,resizable=yes,scrollbars=yes,left=0,top=0,height=350,width=700";

function ficha(r) {
    var t = document.all.TABLA;
    ff = parseInt(r,10)
    document.all.codi.value = ''
    document.all.dscr.value = ''
    document.all.arti.value = ''
    document.all.dsar.value = ''
    document.all.unid.value = ''
    document.all.dsun.value = ''
    document.all.orde.value = ''
    document.all.puni.value = ''
    document.all.dmon.value = ''
    document.all.tota.value = ''
    document.all.reci.value = ''
    document.all.xrec.value = ''
    document.all.aten.value = ''
    document.all.pund.value = ''
    document.all.mone.value = ''
    document.all.gtot.value = ''
    document.all.chks.value = ''

    can = parseFloat(t.rows(ff).cells(6).innerText)
    if (Left(t.rows(ff).cells(1).innerText, 1) != 'S') {
        alert("Linea no corresponde a un servicio")
        return true;
    }
    srv = trim(t.rows(ff).cells(1).innerText)
     
    if (trim(t.rows(ff).cells(7).innerText) == '') {
        alert("Linea no tiene un Producto Final relacionado al servicio")
        return true
    }
    if (can == 0)
    {   //alert("Nada por atender")
        return true;
    }
     
    itm= trim(t.rows(ff).cells(0).innerText)
    window.document.all.body0.src = 'bake/bakeATENCION.asp?pos=' + '<%=POS%>' + '&ITM=' + itm + '&srv='+ srv

}

function vale() {

    if (trim(document.all.chks.value) != '1') {
        alert("El almacen del servicio no corresponde al de la OC")
        return false;
    }

   orde = parseFloat(removecommas(trim(document.all.orde.value)))
   aten = parseFloat(removecommas(trim(document.all.aten.value)))
   xrec = parseFloat(removecommas(trim(document.all.xrec.value)))
   
   if (isNaN(aten)) {
       alert("favor informar una cantidad valida")
       return false;
   }

    if (parseFloat(aten) > parseFloat(xrec))
    {   alert("No puede recibir más de lo pendiente")
        return false;
    }
   
    if (trim(document.all.xrec.value) != '') {
          tota = parseFloat(aten) * parseFloat(removecommas(trim(document.all.pund.value)))
         // alert(tota)
          document.all.gtot.value = tota
    }
  
  document.all.aten.value =  FormatNumber(parseFloat(aten), 3, true, true, true,true)
  document.all.aten.style.textAlign='right'
    return true;
}

function graba(opc) {
    vale()
    aten = parseFloat(removecommas(trim(document.all.aten.value)))
    if (trim(document.all.aten.value) == '' || aten <= 0) {
        alert("Nada que atender")
        return false;
    }

    if (trim(document.all.pund.value) == '') {
        alert("No tenemos a que precio valorizar")
        return false;
    }

      
    var si
    { si = confirm("¿ Confirma que desea Grabar de este Registro ? "); }
    if (si == false)
    { return false; }
    if (vale() == true) {
        orde = parseFloat(removecommas(trim(document.all.orde.value)))
        xrec = parseFloat(removecommas(trim(document.all.xrec.value)))
       // alert("Todo ok")
    }
    
    var t = document.all.TABLA;
    itm  = trim(t.rows(ff).cells(0).innerText)
    cad  = '?oc='  + '<%=pos%>'
    cad += '&opc=' + opc
    cad += '&srv=' + trim(document.all.codi.value)
    cad += '&art=' + trim(document.all.arti.value)
    cad += '&DET=' + ltrim(document.all.dscr.value)
    cad += '&lin=' + itm
    cad += '&CAN=' + aten
    cad += '&nro=' + '<%=nume%>'
    cad += '&glo=' + parent.document.getElementById("GLO").value
    cad += '&pe1=' + '<%=pe1%>'
    cad += '&pe2=' + '<%=pe2%>'
    cad += '&ps1=' + '<%=ps1%>'
    cad += '&pu2=' + parseFloat(removecommas(trim(document.all.pund.value)))
    cad += '&cam=' + parseFloat(removecommas(trim(document.all.tipc.value)))
    cad += '&fin=' + trim(opc)
    // alert(cad)

    window.document.all.body0.src = 'comun/inseraten.asp' + cad
 }

 function fin(opc) {
     
     var si
     { si = confirm("¿ Confirma que desea Finalizar de este Parte ? "); }
     if (si == false)
     { return false; }
     else 
     { graba(opc);  }


 }
</script>    
<%SET RS  = NOTHING
	Cnn.Close
	SET Cnn = NOTHING  %>
</form>
</body>
</html>
