<%@ Language=VBScript%>
<%Session.LCID=2057%>

<!--#include file="../includes/Cnn.inc"-->
<!--#include file="../COMUN/FUNCIONESCOMUNES.ASP"-->
<HEAD>
</HEAD>
<BODY >
<HTML>
<%	
pos = Request.QueryString("pos")
srv = Request.QueryString("srv")
ITM = Request.QueryString("ITM")

' hay que ver cual es el ALMACEN del SERVICIO para comprarlo con el de la OC

RS.OPEN "select * from MODELADOR..MATRIZ_COMPRA_TELA WHERE CODSER = '"&srv&"'", CNN
IF RS.RECORDCOUNT <= 0 THEN %>
    <script language="jscript" type="text/jscript">
        alert("No está DEFINIDO este servicio en la matriz\n Avisar a Sistemas..")
    </script>
<%RESPONSE.End
END IF
RS.MOVEFIRST
DES = RS("ALMDES")
rs.close
' compramos almacenes
cas = " select oc_calmdes from RSFACCAR..CO0001MOVC where oc_calmdes = '"&DES&"' and  OC_CNUMORD= '"&pos&"'"
rs.open cas, cnn
response.write(cas)
IF RS.RECORDCOUNT <= 0 THEN %>
    <script language="jscript" type="text/jscript">
     //   alert()
        alert("El Almacen del SERVICIO es diferente al de la OC")
    </script>
<%RESPONSE.End
else%>
    <script language="jscript" type="text/jscript">
        window.parent.document.all.chks.value = '1'
     //   alert()
    </script>
<%END IF
rs.close
' HAY QUE JALAR DE LA TABLA DE PARAMETROS EL PORCENTAJE DE TOLERANCIA PARA LA ATENCION DE LAS COMPRAS
RS.OPEN "Select TG_CDESCRI From RSFACCAR..AL0001TABL WHERE TG_CCOD='93' And TG_CCLAVE='EXCECOM' ",CNN

IF RS.RECORDCOUNT > 0 THEN TOLERANCIA=1+(CDBL(RS("TG_CDESCRI"))/100) ELSE TOLERANCIA = 1
RS.CLOSE

' DATOS DE CANTIDADES ....
CAD =   " Select OC_CITEM, OC_CCODIGO, OC_CCODREF, OC_CDESREF, OC_CUNIDAD, CONVERT(NUMERIC(13,3),OC_NCANORD) AS OC_NCANORD,OC_NPREUNI,  " & _
        " CONVERT(NUMERIC(13,3),OC_NCANTEN) AS OC_NCANTEN, CONVERT(NUMERIC(13,3),(OC_NCANSAL-OC_NCANTEN)*"&TOLERANCIA&") AS PORATENDER,     " & _
        " OC_NCANSAL, OC_NANCHO, OC_NCORTE, OC_CESTADO, OC_NPREUN2, OC_CNUMORD, OC_NIGVPOR From RSFACCAR..CO0001MOVD                    " & _
        " Where OC_CNUMORD= '"&pos&"' AND OC_CITEM = '"&ITM&"' ;                                                                        "
RS.OPEN CAD, CNN

	if RS.RECORDCOUNT > 0 then
        ref = rs("OC_CCODREF")
    %>
		<script type="text/jscript" language="jscript">
		    cod = '<%=rs("OC_CCODIGO")%>'
		    ds1 = '<%=rs("OC_CDESREF")%>'
		    kod = '<%=rs("OC_CCODREF")%>'
            ate = ''
		    unm = '<%=rs("OC_CUNIDAD")%>'
		    ord = FormatNumber(parseFloat('<%=rs("OC_NCANORD")%>'), 3, true, true, true,true)
		    pun = FormatNumber(parseFloat('<%=rs("OC_NPREUNI")%>'), 2, true, true, true,true)
		    ate = FormatNumber(parseFloat('<%=rs("PORATENDER")%>'), 3, true, true, true,true)
		    rec = FormatNumber(parseFloat('<%=rs("OC_NCANTEN")%>'), 3, true, true, true,true)
		  //  ate = FormatNumber(parseFloat('<%=rs("OC_NCANSAL")%>'), 3, true, true, true, true)
		  

			window.parent.document.all.codi.value = cod
			window.parent.document.all.dscr.value = ds1
			window.parent.document.all.arti.value = kod
			window.parent.document.all.orde.value = ord
			window.parent.document.all.unid.value = unm
			window.parent.document.all.puni.value = pun
			window.parent.document.all.pund.value = pun
			window.parent.document.all.xrec.value = ate
			window.parent.document.all.reci.value = rec

			window.parent.document.all.tipc.value = top.window.document.all.CAM.value
			//eval("window.parent.document.all.aten.value=ate")
            //alert()
			if(trim(kod)=='')
                alert('Producto no corresponde a un servicio, No tiene CODIGO de referencia')
        </script>
<%end if%>

<%' DETALLE DE DECRIPCION, UNIDADES, PRECIOS, ETC.
CAD =   "Select AR_CFSERIE, AR_CUNIDAD,  AR_CFSERIE, AR_CFLOTE,AR_NPRECI2 , AR_NPRECI1  AR_CMONVTA,                                                                              " & _
        " (Select TG_CDESCRI From RSFACCAR..AL0001TABL Where TG_CCOD='05' And TG_CCLAVE=(Select AR_CUNIDAD From RSFACCAR..AL0001ARTI Where AR_CCODIGO='"&ref&"')) AS TG_CDESCRI, " & _ 
        " (Select TG_CDESCRI From RSFACCAR..AL0001TABL Where TG_CCOD='03' And TG_CCLAVE=(Select OC_CCODMON From RSFACCAR..CO0001MOVC FF Where OC_CNUMORD='"&pos&"')) AS COD_MON, " & _
        " (Select TG_CCLAVE From RSFACCAR..AL0001TABL Where TG_CCOD='03' And TG_CCLAVE=(Select OC_CCODMON From RSFACCAR..CO0001MOVC FF Where OC_CNUMORD='"&pos&"')) AS DES_MON   " & _
        " From RSFACCAR..AL0001ARTI  Where AR_CCODIGO='"&ref&"'                                                                                                                  "    

        RS.CLOSE
        RESPONSE.WRITE(CAD)
		RS.OPEN CAD, CNN

		if RS.RECORDCOUNT > 0 then%>
			<script type="text/jscript" language="jscript">
			    mon = '<%=rs("cod_MON")%>'
			    ds1 = '<%=rs("TG_CDESCRI")%>'
			    dun = '<%=rs("TG_CDESCRI")%>'
			    ttt = parseFloat(ord) * parseFloat(pun)
			    tot = FormatNumber(parseFloat(ttt), 2, true, true, true, true)
			    window.parent.document.all.dmon.value = mon
			    window.parent.document.all.mone.value = mon
			    window.parent.document.all.dsar.value = ds1
			    window.parent.document.all.dsun.value = dun
			    window.parent.document.all.tota.value = tot
			    window.parent.document.all.aten.style.textAlign = 'right'
            </script>
		
        <%end if%>
</BODY>
</HTML>
