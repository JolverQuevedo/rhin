<%@ Language=VBScript %>
<% Response.Buffer = true %>
<link rel="stylesheet" type="text/css" href="ESTILOS1.CSS" />
<%	txtUsuario = Request.Cookies("Usuario")("USUARIO")
	txtPerfil = Request.Cookies("Usuario")("Perfil")
	NIVEL	= Request.Cookies("Usuario")("Perfil") %>
   
<script type="text/jscript">
var chk = ''
var marca = 0
var oldrow=1
mm=-1
function fBuscar(color)
{  // cad "detaESTILOr.asp?pos=' + pos + '&est=' + document.all.
    //document.all.bake.src=cad
    return true
}
var oldrow = 1
function dd2(ff) {	// LLENA TEXTBOX ADICIONALES AL COMUN
    // LOS DEL COMUN SON CODIGO Y DESCRIPCION
    var t = document.all.TABLA;
    var pos = parseInt(ff);
    dd(ff);
}

var oldrow=1
</script>
<!--#include file="includes/Cnn.inc"-->
<!--#include file="COMUN/FUNCIONESCOMUNES.ASP"-->
<!--#include file="includes/navegacion22r.inc"-->
<%Dim pageSize 
if txtPerfil > 1 then 	pageSize = 16 else 	pageSize = 6
' Captura la posición inicial del browse
POS = Request.QueryString("pos")
if pos = "" or isnull(pos)  or pos = " " then
	pos = ""
end if
est = Request.QueryString("est")
if est = "" or isnull(est)  or est = " " then
	est = ""
end if
'*********************************************************
' TENGO UN PARAMETRO ADICIONAL DE LA OPCION DE GRABAR
' PARA HACER QUE SE GENEREN LOS DATOS EN EL DBPROD Y
' SI TUVIERA CODIGO DE ARTICULO, ACTUALIZAR EL REGISTRO
'*********************************************************
gen = Request.QueryString("gen")
' SI VIENE DE GRABAR LA FOTO GEN = 1
if gen = "" or isnull(gen)  or gen = " " then
	gen = 0
end if
if cint(gen) = 1 then
   ' SI geN = 1 ES QUE VIENE DE GRABAR ESTILO Y NO VIENE CON CODIGO DE ARTICULO...
   cad = "select * from estilos where cliente = '"&pos&"' and codest = '"&est&"'"
   '  response.write(cad)
   rs.open cad, cnn
    if rs.recordcount >0 then
        rs.movefirst
        DESCRI = LEFT(UCASE(TRIM(RS("DESMODELADOR"))),59)
        ' el articulo no tiene codigo generado
        if len(trim(rs("codarticulo"))) = 0 then
            RS.CLOSE
            RS.OPEN "SELECT PDA_RHIN FROM TB_CTRL", CNN
            codigo = "R" + RIGHT("00000"+ TRIM(CSTR(CDBL(RS("PDA_RHIN")) + 1)),4)
         ' RESPONSE.WRITE(CODIGO)
         
         rs.close
         ' jala el tipo de prenda equivalente del Real
         man = "select ee.*, codreal from estilos as ee inner join TIPPRENDA as tt on TIPOPRENDA = TIPO where  cliente = '"&pos&"' and codest = '"&est&"' "
        ' response.write(man)
         rs.open man , cnn
         if rs.recordcount > 0 then 
            rs.movefirst 
         else 
            response.write("no existe estilo")
            response.end
         end if   
         if len(trim(rs("codreal"))) = 0 then rea = ".." else rea = rs("codreal")
         dart   = rs("descripcion")
         dart2  = rs("desmodelador")
         grup   = rs("codreal")

         ' ACTUALIZA ARTICULO EN ESTILOS-MODELADOR
            CAD =   " update TB_CTRL set PDA_RHIN = PDA_RHIN + 1 ; " & _
                    " UPDATE estilos SET CODARTICULO = '"&CODIGO&"' where cliente = '"&pos&"' and codest = '"&est&"' ; "
         ' hay que crear en el REAL el maestro de articulos y tablas relacionadas
         ' MODELO
         cad = CAD +    " INSERT INTO RSFACCAR..AL0001TABL SELECT '39','"&CODIGO&"', '"&DESCRI&"', '"&SIST&"', GETDATE(), 'SIST', NULL  ;  "
         ' tipo de prenda ya esta creado con el equivalente del Real
       '  cad = CAD +    " INSERT INTO RSFACCAR..AL0001TABL SELECT '39','"&CODIGO&"', '"&DESCRI&"', '"&SIST&"', GETDATE(), NULL, NULL    "
         CodRea = TRIM(CODIGO) + "00000"
         CAD = CAD +    " INSERT into RSFACCAR..AL0001ARTI ( AR_CCODIGO , AR_CDESCRI, AR_CDESCR2 , AR_CCODIG2, AR_CUNIDAD, AR_CCUENTA,  " & _
                        " AR_CTIPOI, AR_CFDECI , AR_CFSERIE, AR_CFLOTE , AR_CESTADO, AR_CUSUMOD, AR_DFECMOD, AR_CTIPEXI, AR_CANOFAB,    " & _
                        " AR_CFLGRCN, AR_CFSTOCK, AR_NPRECI1, AR_NPRECI2, AR_NPRECI3, AR_NPRECI4, AR_NPRECI5, AR_NPRECI6, AR_CFPRELI,   " & _
                        " AR_CFRESTA, AR_NPERC1 , AR_NPERC2 , AR_NDETRA , AR_NTASRCN, AR_CTIPDES, AR_NDESCTO, AR_NPDIS  , AR_NPCOM  ,   " & _
                        " AR_NMARVTA, AR_CMONVTA, AR_NIGVPOR, AR_NISCPOR, AR_DFECCOM, AR_DFECCOS, AR_NLONSER, AR_CMONCOS, AR_NPRECOS,   " & _
                        " AR_CCODPRO, AR_CMONFOB, AR_NPREFOB, AR_CMONCOM, AR_NPRECOM, AR_CGRUPO , AR_CPARARA, AR_CCATEGO, AR_NIGVCPR,   " & _
                        " ar_clinea, ar_cmarca , AR_CFAMILI , AR_CTIPO, AR_CMODELO)                                                     " & _
                        " VALUES ( '"&CodRea&"', '"&dart&"', '"&dart2&"', '', 'UND', '211103', 'S', 'N', 'N', 'N',	'V', 'SIST',        " & _
                        " Convert(datetime,GETDATE(),103), '02', '', 'N', 'S', 0.01, 0.01,0.01,0.01, 0.01, 0.01, 'S','N',0.0, 0.0,	    " & _
                        " 0.0,0.0, '', 0, 0, 0, 0, 'US', 18, 0, GETDATE(),GETDATE(),0, 'US','0.1', '' , 'US', 0.0,'US','0.0',           " & _
                        " '"&grup&"', '', '',18 , '0001','PT RHIN' , 'RH', 'N', '"&CODIGO&"'   )   ;                                    "

         'RESPONSE.WRITE (CAD)
         CNN.EXECUTE (CAD)
        end if
    end if
    RS.CLOSE
  ' RESPONSE.END
end if
'response.write(cad)
'response.write("<br>")
' necesito saber si LA PAGINA fue llamado desde el PROTO y devolver los resultados a LA 
' FICHA-PROTO O ES PARA EDITAR EL ESTILO
' EN CUYO CASO NO EXISTE EL PARAMETRO...
HLP = Request.QueryString("HLP")
if len(trim(HLP)) = 0 then HLP = 0
ESTCLI = REQUEST.QueryString("ESTCLI")
codmod = trim(REQUEST.QueryString("codmod"))
'****************************************************
' Texto del Comando (SELECT) a ejecutar (POR DEFAULT)
'****************************************************
CAD =	" SELECT  top 15               			" & _
		" CODEST, ESTCLI, estilos.DESCRIPCION,  " & _
		" OBSERVACION, CODARTICULO,DESMODELADOR," & _
		" ESTILOS.GENERO AS CGEN, T3.DESCRIPCION" & _
		" AS DESGEN, ESTILOS.tipoprenda as TPRE," & _
		" T2.DESCRIPCION AS  TIPOPRENDA, 	    " & _
		"  CONTENIDO, FOTO			            " & _
		" from ESTILOS INNER JOIN				" & _
		" TIPPRENDA AS T2 ON TIPOPRENDA 		" & _
		" = T2.TIPO INNER JOIN GENEROS			" & _
		" AS T3 ON ESTILOS.GENERO = T3.GENERO	" & _
		" WHERE ESTILOS.ESTADO='A'          	" & _
        " and cliente   = '"&POS&"'     		"
IF LEN(TRIM(ESTCLI)) > 0 THEN  
    CAD = CAD +   " and ltrim(rtrim(ESTCLI)) >= '"&ESTCLI&"' order by estcli" 
elseIF LEN(TRIM(codmod)) > 0 THEN  
    CAD = CAD +   " and right(ltrim(rtrim(CODARTICULO)),5) >= '"&codmod&"' order by right(ltrim(rtrim(CODARTICULO)),5) " 
else   
 CAD = CAD +   " and codest >= '"&est&"'   order by ESTILOS.codest   " 
end if

'response.Write(cad)
' abre recordset	
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
    clien = '<%=pos%>'
    pos = '<%=pos%>'
//alert(clien)
mm= '<%=rs.recordcount%>'
// lo necesito para saber si fue llamado desde el PROTO y devolver los resultados a LA FICHA
HLP = parseInt('<%=HLP%>',10)
</script>
<%' Nro de columnas regresadas por el objeto RECORDSET	
columnas = rs.Fields.Count
' Modelo de objetos de secuencia de comandos de VI 6.0 habilitado %>
<head>
<title><%=tabla%></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<html xmlns="http://www.w3.org/1999/xhtml">
<% ' Modelo de objetos de secuencia de comandos de VI 6.0 habilitado %>
<html>
<head>
<title></title>
<meta name="GENERATOR" Content="Microsoft Visual Studio 6.0">
</head>
<body topmargin="0" leftmargin="10" rightmargin="10" border="0" text="#000000" >
<iframe  width="100%" src="" id="bake" name="bake" scrolling="yes" frameborder="1" height="400" align="middle" style="display:none" ></iframe>

<form name="thisForm" method="post" action="DETAESTILO.asp">
<%'*********************************************************************%>
<table id="TABLA" align="CENTER" cols="2" width="100%"
	 cellpadding="2"  cellspacing="1" bordercolor="White"
	  bgcolor="lightgrey" border="1" >
<%'**************************%>
<%'LINEA DE CABECERA STANDAR %>
<%'**************************%>
<tr bgcolor="#0087d1" valign="top">
    <%for I=0 to columnas-3 %>
	    <td align="center">
		    <font face="arial" color="IVORY" size="1">
		    <b><%=RS.FIELDS(I).NAME%></b>
		    </font>
	    </td>
    <%next%>
	<td align="center" style="display:none"><%=RS.FIELDS(i).NAME%></td>
<!--	<td align="center" style="display:block"><font face="arial" color="IVORY" size="1"><b><%=RS.FIELDS(i+1).NAME%></b></font></td>-->
</tr>
<%'*****************************%>
<%' MUESTRA EL GRID (2 COLORES) %>
<%'*****************************%>
<%IF NOT RS.EOF THEN%>
<%RS.MOVEFIRST
cont= 1 %>
    <%DO WHILE NOT RS.EOF %>
	    <tr <% IF CONT mod 2  = 0 THEN %>bgcolor='<%=(Application("color1"))%>' <%else%> bgcolor='<%=(Application("color2"))%>' <%end IF%>
			    onclick="dd('<%=(cont)%>')" id="fila<%=Trim(Cstr(cont))%>" valign="top" ondblclick="EDITA('<%=cont%>')">
	        <%FOR i=0 TO columnas-3%>
		        <td class="texto"><%=TRIM(RS.FIELDS.ITEM(I))%></td>
	        <%NEXT%>
	        <td align="center" style="display:none"><%=RS.FIELDS(i).NAME%></td>
       <!--     <td><img src="BAKE/recuperaFOTOESTILOR.asp?ID=<%=rs("CODEST")%>&CLI=<%=POS%>&nom=img<%=Trim(Cstr(cont))%>" height="40" id="img<%=Trim(Cstr(cont))%>" /></td> -->
        </tr>
	    <%RS.MOVENEXT%>
	    <%CONT = CONT + 1%>
    <%LOOP%>
</table>
<table border="0" align="center"  cellspacing="5">
	<tr valign="top">
		<td><img src="imagenes/primera.gif" style="cursor:pointer;" onClick="primera()" alt="PRIMERA PAGINA" /></td>
		<td><img src="IMAGENES/PREV.GIF" alt="PAGINA ANTERIOR"	onclick="atras()" style="cursor:pointer" /></td>
		<td><img src= "imagenes/arriba.gif" alt="REGISTRO ANTERIOR" onClick="retrocede()" style="cursor:pointer" /></td>
		<td><img src="imagenes/abajo.gif" alt="REGISTRO SIGUIENTE" onClick="avanza()"  style="cursor:pointer" /></td>
		<td><img src="imagenes/next.gif" alt="PAGINA SIGUIENTE" onClick="pagina()" style="cursor:pointer" /></td>

		<td><img src= "imagenes/ultima.gif" alt="ULTIMA PAGINA" onClick="ultima()" style="cursor:pointer;" /></td>
        
    <td><img src="imagenes/SEARCH.gif" onClick="document.all.seeker.style.display='block'" alt="BUSCAR" style="cursor:pointer;" /></td>
	<td id="seeker" name="seeker" style="display:none">
	<table align="center"  width="100%" bordercolor="#FFFFFF"
	  bgcolor="lightgrey"  cellpadding="0"  cellspacing="1"  border="1" >
	  <tr>  
	    <td  bgcolor='<%=Application("COLOR2")%>'><font face="arial" color='<%=Application("Titulo")%>' size="1">
		    <b>Est_Cli:</b></font></td>
		<td><input id="kod" name="kod" value="" /> </td>    
	  </tr>
	   <tr>  
	    <td  bgcolor='<%=Application("COLOR2")%>'><font face="arial" color='<%=Application("Titulo")%>' size="1">
		    <b>Cod_Mod:</b></font></td>
		<td><input id="Des" name="Des" value="" /> </td>    
	  </tr>
	  <tr>  
	    <td  bgcolor='<%=Application("COLOR2")%>' align="center" style="cursor:pointer;" onClick="document.all.seeker.style.display='none'">
	        <font face="arial" color="red" size="1">
		    <b><u>(X) Cerrar</u></b></font></td>
		<td  bgcolor='<%=Application("COLOR2")%>' align="CENTER" style="cursor:pointer;" onClick="BUSCA('<%=urlBase%>','<%=alias%>')">
		<font face="arial" color='<%=Application("Titulo")%>' size="1">
		    <b><U>FILTRAR</U></b></font></td>
	  </tr>
	 </table> 
	</td>	
	</tr>
	</table>


<%end if%>


<%IF cint(HLP) <> 1   THEN %>

        <table border="0" align="center"  cellspacing="3">
            <tr>
                <td><img src="imagenes/NEW.gif"  alt="REGISTRO EN BLANCO" onClick="NUEVO()" style="cursor:hand;" /></td>
                <td><img src="imagenes/DELETE.gif" alt="ELIMIAR REGISTRO" onClick="elimina()" style="cursor:hand;" /></td>		
            </tr>
        </table>
    <%END IF%>

<%rs.close%>

<script>

    if (marca == 0 || HLP == 1)
        dd('1');		
			
function NUEVO() {
    OBS = ''
    cad = 'fichaestr.asp?cod=AUTO&cli=' + '<%=pos%>'
    //alert(cad)
    window.open(cad)
  return true;
}
function LLENA(ff) {

return true; }


function elimina()
{	var t = document.all.TABLA;
    var pos = parseInt(oldrow,10)
    var si
	{si = confirm("¿ Confirma la Eliminación de este Registro ? ");} 
	if (si == false)
	{ return false;}
	COD = ltrim(t.rows(pos).cells(0).innerText);
	CAD = 'COMUN/DELEESTr.ASP?CLI=' + '<%=trim(request.QueryString("pos"))%>'
	CAD += '&COD=' + COD
	window.location.replace(CAD); 
	return true;
}
function BUSCA(url, alias) {
    if (trim(window.thisForm.kod.value) == '' && trim(window.thisForm.Des.value)=='') {
        alert("Debe informar el Código de Estilo o Codigo Modelador");
        window.thisForm.kod.focus();
    }

    cad = 'detaestilor.asp?pos=' + '<%=trim(request.QueryString("pos"))%>' + '&estCLI=' + trim(window.thisForm.kod.value) + '&hlp=' + '<%=hlp%>' + '&codmod=' + trim(window.thisForm.Des.value) 
    window.location.replace(cad);
    return true;
}
</script>
<%SET RS  = NOTHING 
	SET Cnn = NOTHING  %>
</form>
</body>
</html>
