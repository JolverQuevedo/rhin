<%@ Language=VBScript %>
<%Response.Buffer = TRUE %>
<%	txtUsuario  = Request.Cookies("Usuario")("USUARIO")
	txtPerfil   = Request.Cookies("Usuario")("Perfil")
	NIVEL	    = Request.Cookies("Usuario")("Perfil")
    CIA = "0001"
    Session.LCID=2057%>
<!--#include file="../includes/Cnn.inc"-->
<!--#include file="../COMUN/FUNCIONESCOMUNES.ASP"-->
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
</HEAD>
<BODY >

<%
cart  = ucase(trim(request.querystring("cart")))
dart  = ucase(trim(request.querystring("dart")))
dart2 = ucase(trim(request.querystring("dart2")))
uni   = ucase(trim(request.querystring("uni")))
mnc   = ucase(trim(request.querystring("mnc")))

rs.open "Select AR_CCODIGO from rsfaccar..al0001arti where AR_CCODIGO='"&cart&"'", cnn

if rs.recordcount <=0 then
         
         CAD =  " INSERT into RSFACCAR..AL0001ARTI ( AR_CCODIGO , AR_CDESCRI, AR_CDESCR2 , AR_CCODIG2, AR_CUNIDAD, AR_CCUENTA,  " & _
                " AR_CTIPOI, AR_CFDECI , AR_CFSERIE, AR_CFLOTE , AR_CESTADO, AR_CUSUMOD, AR_DFECMOD, AR_CTIPEXI, AR_CANOFAB,    " & _
                " AR_CFLGRCN, AR_CFSTOCK, AR_NPRECI1, AR_NPRECI2, AR_NPRECI3, AR_NPRECI4, AR_NPRECI5, AR_NPRECI6, AR_CFPRELI,   " & _
                " AR_CFRESTA, AR_NPERC1 , AR_NPERC2 , AR_NDETRA , AR_NTASRCN, AR_CTIPDES, AR_NDESCTO, AR_NPDIS  , AR_NPCOM  ,   " & _
                " AR_NMARVTA, AR_CMONVTA, AR_NIGVPOR, AR_NISCPOR, AR_DFECCOM, AR_DFECCOS, AR_NLONSER, AR_CMONCOS, AR_NPRECOS,   " & _
                " AR_CCODPRO, AR_CMONFOB, AR_NPREFOB, AR_CMONCOM, AR_NPRECOM, AR_CGRUPO , AR_CPARARA, AR_CCATEGO, AR_NIGVCPR,   " & _
                " ar_clinea, ar_cmarca , AR_CFAMILI , AR_CTIPO, AR_CMODELO)      VALUES ( '"&CART&"', '"&dart&"', '"&dart2&"',  " & _
                "  '', '"&UNI&"', '241102', 'S', 'S', 'N', 'N',	'V', 'RH01', Convert(datetime,GETDATE(),103), '03',             " & _
                " '', 'N', 'S', 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 'S', 'N', 0.0, 0.0, 0.0, 0.0, '', 0, 0, 0, 0, '"&mnc&"',          " & _
                " 18, 0, GETDATE(), GETDATE(), 0, '"&mnc&"', '0.1', '' , '"&MNC&"', 0.0, '"&mnc&"','0.0', 'MP', '', '', 18 ,    " & _
                " '0007', 'PI RHIN' , 'R1', 'N', 'HILADO'   )   ;                                                                "

         'RESPONSE.WRITE (CAD)

else
' update o DELETE....
    TBL1 = " RSFACCAR..AL" + cia + "ARTI "
    if ucase(trim(request.querystring("op"))) = "E" then
        cad =   " Update "&tbl1&" SET                          " & _
                " AR_CESTADO='A',                              " & _   
                " AR_CUSUMOD = 'RH01',                         " & _ 
                " AR_DFECMOD=Convert(datetime,'"&MODI&"',103)  " & _
                " Where AR_CCODIGO='"&cart&"' ;                "

    else
	    cad =   " Update "&tbl1&" SET                          " & _
                " AR_CDESCRI='"&dart&"',                       " & _   
                " AR_CDESCR2='"&dart2&"',                      " & _
                " AR_CUNIDAD='"&uni&"',                        " & _
                " AR_CMONCOM = '"&mnc&"',                      " & _
                " AR_CUSUMOD = 'RH01',                         " & _ 
                " AR_DFECMOD=Convert(datetime,'"&MODI&"',103)  " & _
                " Where AR_CCODIGO='"&cart&"' ;                "
    end if
end if
response.write(cad)
'response.end
Cnn.Execute(CAD)
%>

<script language="jscript" type="text/jscript">
   // alert("Datos Actualizados!")
    top.window.opener.window.location.replace('../HILOSr.asp?POS=' + '<%=cart%>')

   // window.onblur = window.close()

    parent.window.close() 
</script>
</BODY>
</HTML>
