USE DWHB 
/*------------------------------------------------------------------------------------------------------------------------------------
               Purpose: check table columns difference betwen dwh extract.tables and source tables after source system update
			   Developer: Jerry Shen
			   Version:   30.05.2017 created
			   Notes:
			          1. Using Linked Servers to visit source tables, please set Linked Servers values to different source databaase
					  2. Reset extract_Schema for different data marts
					  3. Using default shceck - dbo for source system tables. if not please change.

------------------------------------------------------------------------------------------------------------------------------------*/

 ---Please reset Linked Servers value and extrac schem
 DECLARE @Dblink VARCHAR(100);
 DECLARE @Extract_Schema VARCHAR(100);
 DECLARE @Source_Schema VARCHAR(100);
 SET @Dblink='[appsql-4\train].fintrain.'		-----------Check Linkded Servers in DWH database.
 SET @Extract_Schema='extract'                  -----------HRIS:extract, Comcare:extract_comcare, Riskman: extract_riskman, etc
 SET @Source_Schema='dbo'						-----------Defualt value. If not, please change.


--Declare other variables
DECLARE @DestTable VARCHAR(100);
DECLARE @DestSchema VARCHAR(20);
DECLARE @sqlCommand  NVARCHAR(MAX)

--Create temp table to store check results
IF OBJECT_ID('tempdb..#CHECKRESULT') IS NOT NULL drop table #CHECKRESULT;
CREATE TABLE  #CHECKRESULT
(
   SOURCE_TABLE VARCHAR(200),
   SOURCE_COLUMN VARCHAR(100),
   SROUCE_COLUMN_POS INT,
   DEST_TABLE  VARCHAR(200),
   DEST_COLUMN	VARCHAR(100),
  DEST_COLUMN_POS	INT
 )

--Get all extract tables which need to be checked from management.table_dim
DECLARE C_TABLES CURSOR FOR
SELECT table_name,[schema] 
FROM management.table_dim	WHERE  [schema] =@Extract_Schema

--Checking in LOOP
OPEN C_TABLES
FETCH NEXT FROM C_TABLES INTO @DestTable,@DestSchema 

WHILE @@FETCH_STATUS =0
 BEGIN
          

SET @sqlCommand =
 'INSERT INTO   #CHECKRESULT
  SELECT
     T1.*,
	 T2.*
FROM 
(
SELECT TABLE_NAME AS SOURCE_TABLE,
       COLUMN_NAME AS SOURCE_COLUMN,
	   ORDINAL_POSITION	AS SROUCE_COLUMN_POS
FROM  '+ @Dblink+'INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = '+''''+@DestTable+''''+	  +
' AND TABLE_SCHEMA='+''''+@Source_Schema+'''' +'	   
) AS T1
LEFT JOIN

(
SELECT TABLE_NAME AS DEST_TABLE,
       COLUMN_NAME AS DEST_COLUMN,
	   ORDINAL_POSITION	AS DEST_COLUMN_POS
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME ='+''''+ @DestTable	+ ''''+  
' AND TABLE_SCHEMA='+''''+@DestSchema  + ''''+
') AS T2
ON T1.SOURCE_TABLE=T2.DEST_TABLE	  COLLATE Latin1_General_CI_AS 
AND T1.SOURCE_COLUMN=T2.DEST_COLUMN		COLLATE Latin1_General_CI_AS '

EXECUTE sp_executesql @sqlCommand



FETCH NEXT FROM C_TABLES   INTO  @DestTable,@DestSchema 
END 
CLOSE C_TABLES ;
DEALLOCATE C_TABLES;



--GET THE CHECK RESULTS WHICH TABLES HAVE BEEN CHANGED IN SOURCE TABLES AFTER UPDATES
SELECT * FROM  #CHECKRESULT
WHERE SOURCE_TABLE IS NOT NULL AND DEST_TABLE IS NULL
