
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [SP_TABLE_DEFINITION]
	@TBL [varchar](100)
WITH EXECUTE AS CALLER
AS
SELECT a.[name] as ''Table'',  b.[name] as ''Column'', 
 c.[name] as ''Datatype'',  b.[length] as ''Length'' , 
CASE   WHEN b.[cdefault] > 0 THEN d.[text]   ELSE NULL  END as ''Default'',  
CASE   WHEN b.[isnullable] = 0 THEN ''No''   ELSE ''Yes''  END as ''Nullable''

FROM  sysobjects  a
INNER JOIN syscolumns b ON  a.[id] = b.[id]
INNER JOIN systypes c ON  b.[xtype] = c.[xtype] 
and  b.[xusertype] = c.[xusertype]
LEFT JOIN syscomments d ON  b.[cdefault] = d.[id]
WHERE 
---a.[xtype] = CASE WHEN @TIP IS NULL THEN ''U'' ELSE @TIP END
-- ''u'' for user tables, ''v'' for views.
---and 
a.[name]=@tbl AND  a.[name] <> ''dtproperties''
ORDER BY a.[name],b.[colorder]


' 
