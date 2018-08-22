<%@ Language=VBScript %>
<% Response.Buffer = true %>
<link rel="stylesheet" type="text/css" href="ESTILOS1.CSS" />
<%	txtUsuario  = Request.Cookies("Usuario")("USUARIO")
	txtPerfil   = Request.Cookies("Usuario")("Perfil")
	NIVEL	    = Request.Cookies("Usuario")("Perfil")
    CIA = "0001"
    Session.LCID=2057%>
<html>
<head>
<title>TELAS</title>
<!--#include file="includes/Cnn.inc"-->
<!--#include file="COMUN/FUNCIONESCOMUNES.ASP"-->
<meta NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">

<% ' por si acaso he incluido una fila en blanco a todas las tablas de articulos para porder tener de regerso SIEMPRE
   ' aunque sea una linea y que no falle el dataentry
 Set RS2 = Server.CreateObject("ADODB.Recordset")
      RS2.ActiveConnection = Cnn
      RS2.CursorType       = 3 'CONST adOpenStatic = 3
      RS2.LockType         = 1 'CONST adReadOnly = 1
      RS2.CursorLocation   = 3 'CONST adUseClient = 3

cod = (ltrim(rtrim(request.QueryString("cod")))) 
tbl222 = " RSFACCAR..AL0001ARTI "
cad =   " EXEC SP_SHOW '"&COD&"' "
rs2.open cad,cnn
rs2.movefirst
 %>
</head>

<body bgcolor="#FFFFFF" text="#009999" leftmargin="0" topmargin="0" 
	marginwidth="0" marginheight="0" >

<form name="thisForm" METHOD="post" >
<table  border="0" cellspacing="1" cellpadding="4" align="center">
<tr>
    <table  border="0" cellspacing="1" cellpadding="4" align="center" width="100%" >
    <tr valign="middle" > 
		<td width="10%">
			<img src="imagenes/CERRAR.gif" 	style="cursor:hand;" onClick="javascript: window.close();" alt="" />
		</td>	
        <td bgcolor="#ffffff" align="center">
            <table width="100%" border="1" bordercolordark="DarkOrange" cellpadding="3" cellspacing="0" bordercolorlight="#FFFFFF" > 
                <tr width="100%" height="50px">
                    <td bgcolor="#f7d975" align="center">
	                <font color="#000066" size="3" face="arial"><b>Registro de HILADO</b></font> </td>
                </tr>
            </table>
		</td>	
		<td width="10%" align="center"><img id="Img1" alt="GRABA CAMBIOS" style="cursor:pointer; " onClick="envia(1)" src="imagenes/disk.gif" /></td>
    </tr>
    </table>
</tr>
<tr>
    <td>
        <iframe  width="100%" style="display:none; width:100%;" height="100px" src="blanco.htm" id="body0" name="body0" scrolling="yes" frameborder="0" ></iframe>
    </td>
</tr>
<tr><td>
<table  border="0" cellspacing="2" cellpadding="4" align="center" class="Estilo55" >
  <tr>
      <td align="left" bgcolor="#DDEBC6" width="5%"><span class="TITULITO">Código</span></td>
      <td with="10%"><input type="text" class="DATOS" maxlength="25" id="cart" name="cart" style="text-align:left" readonly onchange="BAKE()" 
       value="<%=rs2("AR_CCODIGO")%>"/></td>
      <td bgcolor="#DDEBC6" width="5%"><span class="TITULITO"> Descripción</span></td>
      <td  width="80%" colspan="3"><input type="text" class="datos" id="dart" name="dart" maxlength="60" style="text-align:left; width:100%" value="<%=rs2("AR_CDESCRI")%>"/></td>
  </tr>
  <tr>
        <td bgcolor="#DDEBC6" width="5%"><span class="TITULITO"> Unidad</span></td>
        <td  class="datossel">
           <%tt1 = "RSFACCAR..AL"+cia+"tabl"
            cad =   " Select tg_cclave, tg_cdescri From "&tt1&" Where TG_CCOD='05' Order by TG_CCLAVE " 
            RS.OPEN CAD, CNN     
           ' response.write(cad)          
          '  response.end
            IF RS.RECORDCOUNT > 0 THEN RS.MOVEFIRST %>
                <select  class="datos" id="uni" name="uni" >
                    <option value=""></option>
                    <%DO WHILE NOT RS.EOF %>
                        <option value="<%=RS.FIELDS.ITEM(0)%>"<%if TRIM(rs2("AR_CUNIDAD")) = TRIM(rs.fields.item(0)) then%> selected <%end if%>>
                        <%=RS.FIELDS.ITEM(0)%>&nbsp;-&nbsp;<%=RS.FIELDS.ITEM(1)%></option>
                        <%RS.MOVENEXT %>
                    <%LOOP%>
                    <%rs.close%>
                </select> 
          </td>        
          <td bgcolor="#DDEBC6" width="5%"><span class="TITULITO"> Descripción_Adic.</span></td>
          <td colspan="3"><input type="text" class="datos" id="dart2" name="dart2" style="text-align:left; width:100%" maxlength="60" value="<%=rs2("AR_CDESCR2")%>"/></td>  
  </tr>
   <tr>
         <td align="left" bgcolor="#DDEBC6"><span class="TITULITO"> Moneda Compra</span></td>
        <td>
        <%tt1 = "RSFACCAR..AL"+cia+"tabl"
        cad =   " Select tg_cclave, tg_cdescri From "&tt1&" Where TG_CCOD='03' Order by TG_CCLAVE    " 
        RS.OPEN CAD, CNN     
       ' response.write(cad)          
      '  response.end
        IF RS.RECORDCOUNT > 0 THEN RS.MOVEFIRST %>
            <select  class="datos" id="mnc" name="mnc"  value="" >
                <option value=""></option>
                <%DO WHILE NOT RS.EOF %>
                    <option value="<%=RS.FIELDS.ITEM(0)%>"
                    <%if TRIM(rs2("AR_CMONCOM")) = TRIM(rs.fields.item(0)) then%> selected <%end if%>
                    ><%=RS.FIELDS.ITEM(0)%>&nbsp;-&nbsp;<%=RS.FIELDS.ITEM(1)%></option>
                    <%RS.MOVENEXT %>
                <%LOOP%>
                <%rs.close%>
            </select> 
        </td>
        <td align="left" bgcolor="#DDEBC6"><span class="TITULITO">Origen :</span></td>
        <td colspan="3"><input type="text" class="texto" tabindex="-1" readonly="readonly" id="ori" name="ori" style="text-align:left; width:100%" value="<%=rs2("AR_CLUGORI")%>"/></td> 
    </tr>
  <tr>
         <td align="left" bgcolor="#DDEBC6" ><span class="TITULITO">Cuenta</span></td>
         <td><input type="text" class="texto" tabindex="-1" readonly  style="width:100%" id="cta" name="cta" style="text-align:left; width:100%" 
         value="<%if trim(rs2("ar_ccuenta"))= "" then response.write("241103") else response.write(rs2("AR_CCUENTA"))%>"/></td>
         <td align="left" bgcolor="#DDEBC6" ><span class="TITULITO">Tipo Articulo</span></td>
         <td width="15%"><input type="text" class="texto" tabindex="-1" readonly  style="width:100%" id="ctip" name="ctip" style="text-align:left; width:100%" 
         value="<%if trim(rs2("AR_CTIPO"))= "" then RESPONSE.WRITE("N - NACIONAL") else response.write(rs2("AR_Ctipo") +" - Nacional")%>"/></td>
             <!--   <%IF TRIM(rs2("AR_CLINEA"))= "" THEN RESPONSE.WRITE("0007 - Materia prima Rhin") ELSE RESPONSE.WRITE(rs2("AR_CLINEA")+" Mat. RHIN")%> -->
         <td align="left" bgcolor="#DDEBC6"><span class="TITULITO">Tipo Sunat :</span></td>
         <td ><input type="text" class="texto" tabindex="-1" readonly="readonly" id="sun" name="sun" style="text-align:left; width:100%" 
         value="<%if trim(rs2("AR_CTIPEXI"))= "" then response.write("03 MATERIAS PRIMAS Y AUXILIARES") else response.write(rs2("AR_CTIPEXI") +" Materias Primas y Auxiliares")%>"/></td>  
  </tr>
  <tr>
        <td align="left" bgcolor="#DDEBC6"><span class="TITULITO">Línea</span></td>
        <td><input type="text" class="texto" id="CLIN" name="CLIN" style="text-align:left;"  readonly tabindex="-1" width:100%" maxlength="60" 
        value="<%IF TRIM(rs2("AR_CLINEA"))= "" THEN RESPONSE.WRITE("0007 - Materia prima Rhin") ELSE RESPONSE.WRITE(rs2("AR_CLINEA")+" Mat. RHIN")%>"/></td>
        <td align="left" bgcolor="#DDEBC6" ><span class="TITULITO">Grupo :</span></td>
        <td ><input type="text" class="texto" tabindex="-1" readonly  style="width:100%" id="grup" name="grup" style="text-align:left; width:100%" 
        value="<%IF TRIM(rs2("AR_CGRUPO")) = "" then response.write("MP - Materia Prima Rhin") else response.write(rs2("AR_CGRUPO") + " Rhin MP " )%>"/></td> 
        <td align="left" bgcolor="#DDEBC6" width="5%"><span class="TITULITO">Año Fabricacion :</span></td>
        <td ><input type="text" class="texto" tabindex="-1" readonly="readonly" id="ano" name="ano" style="text-align:left; width:100%" value="<%=rs2("AR_CANOFAB")%>"/></td>       
  </tr>
  <tr>
        <td align="left" bgcolor="#DDEBC6" width="5%"><span class="TITULITO">Marca :</span></td>
        <td ><input type="text" class="texto" tabindex="-1" readonly="readonly" id="mar" name="mar" style="text-align:left; width:100%" 
        value="<%if trim(rs2("ar_cmarca"))= "" then response.write("PI RHIN - Rhin Insumos") else response.write(rs2("AR_CMARCA")+ " Insumos")%>"/></td>    
        <td align="left" bgcolor="#DDEBC6" width="5%"><span class="TITULITO">Familia :</span></td>
        <td><input type="text" class="texto" tabindex="-1" readonly="readonly" id="fami" name="fami" style="text-align:left; width:100%" 
        value="<%if trim(rs2("AR_CFAMILI")) = "" then response.write("R1 - RHIN Insumos") else response.write(rs2("AR_CFAMILI") + " Rhin")%>"/></td>          
        <td align="left" bgcolor="#DDEBC6" width="5%"><span class="TITULITO">Modelo :</span></td>
        <td ><input type="text" class="texto" tabindex="-1" readonly="readonly" id="model" name="model" style="text-align:left; width:100%" 
        value="<% if trim(rs2("ar_cmodelo"))= "" then response.write("HILADO - RHIN HILADO") else response.write(rs2("AR_CMODELO")+" Rhin" )%>"/></td>    
  </tr>
</table>
</td></tr>
<!--------------------------------------------------------------------->
<tr><td>
<table  border="0" cellspacing="0" cellpadding="4" align="left" class="Estilo55" style="display:block;" width="100%" >
     <tr bgcolor="#DDEBC6">
        <td align="left" class="TITULITO" width="5%">Sin_Costeo :</td>
        <td align="left" ><input type="checkbox" id="sct" name="sct" value="N" disabled></td>
        <td align="right" class="TITULITO">Decimal :</td>
        <td align="left" ><input type="checkbox" id="dcm" name="dcm" disabled value= "S" checked></td>
        <td align="right" class="TITULITO" style="display:none">Serie :</td>
        <td align="left" style="display:none"><input type="checkbox" id="sre" name="sre" disabled ></td>
        <td align="right" style="display:none" id="lon" name="lon"> longitud :</td>
        <td  style="display:none" ><input type="text" id="lng" name="lng" class="INPUTS" value="<%=rs2("AR_NLONSER")%>" maxlength="2"></td>
        <td align="right" class="titulito" style="display:none">Lote :</td><td><input type="checkbox" style="display:none" id="lte"
         name="lte" <%if rs2("AR_CFLOTE")= "S" then %>checked<%end if%>></td>
        <td align="right" class="titulito">Control Stock :</td>
        <td><input type="checkbox" id="cst" name="cst" value="S" checked disabled></td>
        <td align="right" class="titulito">Precio Libre Vta :</td>
        <td><input type="checkbox" id="plv" name="plv" value="S" checked disabled></td>
        <td align="left" class="titulito" style="display:none">Dcto Importe :</td><td><input type="checkbox" style="display:none" id="dci"
         name="dci" <%if rs2("AR_CFRESTA")= "S" then %>checked<%end if%>></td>
        <td align="left" class="titulito" style="display:none">Recargo Consumo :</td>
        <td><input type="checkbox" style="display:none"
         id="are" name="are" onChange="reca()" <%if rs2("AR_CFLGRCN")= "S" then %>checked<%end if%>></td>
        <td align="left" class="titulito" style="display:none" id="rcc" name="rcc">% Recargo:</td>
        <td width="20px">
        <input type="text" id="rec" name="rec" style="display:none" class="INPUTS"  maxlenght="2" value="<%=RS2("AR_NTASRCN") %>"></td>
        <td align="left" class="titulito" >Estado :</td>
        <td> 
           <%tt1 = "RSFACCAR..AL0001tabl"
            cad =   " Select tg_cclave, tg_cdescri From "&tt1&" Where TG_CCOD='15' Order by TG_CCLAVE    " 
            RS.OPEN CAD, CNN     
           ' response.write(cad)          
          '  response.end
            IF RS.RECORDCOUNT > 0 THEN RS.MOVEFIRST %>
                <select  class="texto" id="edo" name="edo" disabled>
                    <option value=""></option>
                    <%DO WHILE NOT RS.EOF %>
                        <option value="<%=RS.FIELDS.ITEM(0)%>"
                        <%if TRIM(RS.FIELDS.ITEM(0)) = "V" then%> selected <%end if%>
                        ><%=RS.FIELDS.ITEM(0)%>&nbsp;-&nbsp;<%=RS.FIELDS.ITEM(1)%></option>
                        <%RS.MOVENEXT %>
                    <%LOOP%>
                    <%rs.close%>
                </select> 
          </td>   
    </tr>
</table>
</td></tr>

</table>
</form>
</body>


<script language="jscript" type="text/jscript">
    if (trim(document.all.dart.value) == '') {
        document.all.cart.readOnly = false;
        seleccionar(document.all.cart);
        document.all.cart.focus();
    }

function BAKE() {
 // document.all.body0.style.display = 'block'
  CAD = trim(document.all.cart.value)

  document.all.body0.src = "bake/bake_articulo.asp?pos=" + CAD;
 // alert(document.all.body0.src)
    return true;
}

function envia(op) {
    if (trim(document.all.cart.value) == '') {
        alert("Favor ingresar el codigo del producto")
        seleccionar(document.all.dart);
        return false;
    }
    else
     BAKE()
// hay que validar que llene los campos obligatorios

    if (document.all.dart.value == '') {
        alert("Favor ingresar la descripcion")
        document.all.cart.readonly = false;
        seleccionar(document.all.dart);
        return false;
    }
    
    if (document.all.uni.value == '') {
        alert("Favor ingresar la Unidad de Compra");
        seleccionar(document.all.uni);
        return false;
        }
    if (document.all.mnc.value == '') {
        alert("Favor ingresar la Moneda de Compra");
        seleccionar(document.all.mnc);
        return false;
    }
    cad = 'comun/crea_hilos.asp'
    cad += '?cart=' + trim(document.all.cart.value)
    cad += '&dart=' + Left(ltrim(toAlpha(document.all.dart.value)), 60)

    cad += '&dart2=' + Left(ltrim(toAlpha(document.all.dart2.value)), 60)
    cad += '&uni=' + trim(document.all.uni.value)
    cad += '&mnc=' + ltrim(document.all.mnc.value)

    // document.all.body0.style.display = 'block'
    document.all.body0.src = cad
    //  return true
 
}
</script>

</html>