<%@ Language=VBScript %>
<%session.LCID=2057 %>
<!--#include file="../includes/Cnn.inc"-->
<!--#include file="../COMUN/FUNCIONESCOMUNES.ASP"-->
<HEAD>
</HEAD>
<BODY >
<HTML>
<%	
DATO =  Request.QueryString("sol")
CAD  =	" select * from RSFACCAR..AL0001TABL where TG_CCOD = '12' and tg_cclave= '"&dato&"'   " 
		RS.OPEN CAD, CNN
		'RESPONSE.Write(RS.RECORDCOUNT)
		if RS.RECORDCOUNT > 0 then%>
		    <%RS.MoveFirst%>
            <script type="text/jscript" language="jscript">
                parent.window.document.all.SOLI.value = '<%=trim(ucase(rs("tg_cdescri")))%>'
                
		    </script>	
        <%else%>
            <script type="text/jscript" language="jscript">
                alert("SOLICITANTE NO REGISTRADO")
                parent.window.document.all.CSOL.value = ''
                parent.window.document.all.SOLI.value = ''
		    </script>	
       <%end if%>
</BODY>
</HTML>
