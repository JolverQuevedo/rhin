<%SUB CREA_COMBO_SUPERCOMBO(CONSULTA,ID,ID2,ID3,FUNCION,NOMBREFUNCION,CAD_URL,XVALUE,XTEXT,XSELEC,XORIENTACION)
'ON ERROR RESUME NEXT
DIM RS_DATOS
DIM OPCIONES
DIM INT_FILAS
DIM INT_COLUMNAS
DIM TABLA_GRID
DIM SUPERCOMBO
DIM XFUNCION
DIM SELECCIONADO
SET RS_DATOS = SERVER.CreateObject("ADODB.RECORDSET")
RS_DATOS.ACTIVECONNECTION  = CNN
RS_DATOS.CURSORTYPE  = 3
RS_DATOS.LOCKTYPE    = 1
RS_DATOS.OPEN CONSULTA 
IF RS_DATOS.RECORDCOUNT > 0 THEN
	TABLA_GRID = RS_DATOS.GETROWS()
	INT_FILAS  = UBOUND(TABLA_GRID,2)
	INT_COLUMNAS = RS_DATOS.FIELDS.COUNT
	
		IF FUNCION = 1 THEN 
		XFUNCION = "ONCHANGE="""&NOMBREFUNCION&""""
		ELSE
		XFUNCION = ""
		END IF
	IF  ID<>"" THEN CBOID=ID
	IF ID2<>"" THEN CBOID=ID2
	IF ID3<>"" THEN CBOID=ID3
	
	SUPERCOMBO = "<SELECT ID="&cboID&" NAME="&cboID&" "&XFUNCION&">"
	SUPERCOMBO = SUPERCOMBO &"<OPTION VALUE=""""></OPTION>"
	IF XORIENTACION =  1 THEN
		FOR I=0 TO INT_FILAS
		IF TRIM(XSELEC)=TRIM(TABLA_GRID(XVALUE,I)) THEN 
		SELECCIONADO = "SELECTED" 
		ELSE
		SELECCIONADO = ""
		END IF
		OPCIONES = OPCIONES & "<OPTION VALUE='"&TRIM(TABLA_GRID(XVALUE,I))&"' "&SELECCIONADO&">"&TRIM(TABLA_GRID(XTEXT,I))&"</OPTION>"
		NEXT
	END IF
	IF XORIENTACION =  2 THEN
		FOR I=1 TO INT_COLUMNAS-1
		IF TRIM(XSELEC)=TRIM(TABLA_GRID(I,XVALUE)) THEN 
		SELECCIONADO = "SELECTED" 
		ELSE
		SELECCIONADO = ""
		END IF
		IF TRIM(TABLA_GRID(I,XVALUE))<>"" THEN
			OPCIONES = OPCIONES & "<OPTION  VALUE='"&TRIM(TABLA_GRID(I,XVALUE))&"'>"&TRIM(TABLA_GRID(I,XVALUE))&"</OPTION>"
		END IF 
		NEXT
	END IF
	SUPERCOMBO = SUPERCOMBO & OPCIONES & "</SELECT>"
	RESPONSE.WRITE(SUPERCOMBO)
ELSE
	RESPONSE.WRITE("<CENTER>NO HAY DATOS</CENTER>")	
END IF	
	SET RS_DATOS = NOTHING
END SUB
%>

