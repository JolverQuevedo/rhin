﻿<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%Usuario = Request.Cookies("Usuario")("USUARIO")%>
<!--#include file="../includes/Cnn.inc"-->
<!--#include file="../COMUN/FUNCIONESCOMUNES.ASP"-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script language="jscript" type="text/jscript">

</script>
</head>
<% fec =  "{ fn NOW() }"
col = request.QueryString("colo")
des = request.QueryString("desc")
uni = request.QueryString("uni")
tip = request.QueryString("tip")
mode = request.QueryString("mode")

aCol = split(col,",")
aDes = split(des, ",")
' **************************************************
' DATOS para INSERT multiple de TELAS en RSFACCAR
' **************************************************
cad = ""
for i=0 to ubound(acol)
    kk = "select AR_CCODIGO from RSFACCAR..AL0001ARTI  where AR_CCODIGO = '"&aCol(i)&"'"
    rs.open kk, cnn
    if rs.recordcount <= 0 then 
        CAD= CAD +  " INSERT INTO RSFACCAR..AL0001ARTI                      " & _
                    " (AR_CCODIGO,	AR_CDESCRI, AR_CUNIDAD, AR_CCUENTA,     " & _
                    "   AR_NIGVPOR,	AR_CTIPO,	AR_CGRUPO,		            " & _
                    "   AR_CFAMILI,	AR_CMODELO,	AR_CMONCOM, AR_CFSTOCK,     " & _
                    "   AR_CFDECI,		AR_CFPRELI,	AR_CFSERIE,             " & _
                    "   AR_CFLOTE,		AR_CESTADO,	AR_CUSUCRE, AR_DFECCRE,	" & _
                    "   AR_DFECMOD,	AR_CMARCA,	AR_CCUENTR,  AR_CCLAART)    " & _
                    "  VALUES                                               " & _
                    "  ('"&aCol(i)&"','"&ades(i)&"', '"&UNI&"', '241102',   " & _
                    "   '18',      '"&TIP&"',    'HL',	                    " & _
                    "   'MP',      '"&MODE&"',  'MN',		  'S',	        " & _
                    "   'S',		'S',	  	  'N',                      " & _
                    "   'N',		'V',		'AUTOM',	 "&FEC&",	    " & _
                    "   NULL,		'MAT PRIM',			'',     'HL') ;     " 
    end if
    rs.close
next

response.write(cad)
'RESPONSE.End
if trim(cad) <> "" then
' Inicia transacción , para que los datos no queden a medias
Cnn.BeginTrans	

    Cnn.execute cad
    if  err.number <> 0 then
	    Response.Write ("No se han podido actualizar los datos soliciatados,  Reintente en unos minutos")
	    Cnn.RollbackTrans
	    Cnn.Abort
    else
	    Cnn.CommitTrans	
    end if

Cnn.Close	

end if
%>
<script language="jscript" type="text/jscript">
top.window.location.replace("../fichahilocolor.asp")
</script>
<body>

</body>
</html>
