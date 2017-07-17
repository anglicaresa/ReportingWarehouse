/*------------------------------------------------------------------------------------------------------------------------
             Script name: Create DWHB Tables
			 Purpose: create DWHB tables to import HRIS source tables
			 Development history:
			        1. 24/08/2016  created by Jerry Shen

			 Notes:
				    1. All DWHB tables are defined in Database->models->dwhb->Red color tables
*------------------------------------------------------------------------------------------------------------------------/
 --Step1:
 --create a table to store all the table information for source and destination
 --tempory use and will repalce table in data model later
 DROP TABLE DWHB.EXTRACT_TABLES
 CREATE TABLE  DWHB.EXTRACT_TABLES
 (T_KEY INTEGER IDENTITY(1,1),
  S_SYSTEM VARCHAR(20),
  S_DBSERVER VARCHAR(50),
  S_DBNAME VARCHAR(50),
  S_SCHEMA VARCHAR(20),
  S_TABLENAME VARCHAR(50),
  D_DBNAME VARCHAR(50),
  D_SCHEMA VARCHAR(20),
  D_TABLENAME VARCHAR(50),
  NOTE1 VARCHAR(50),
  NOTE2 VARCHAR(50),
  CREATE_DATE DATETIME,
  CREATE_PERSON VARCHAR(20))

  TRUNCATE TABLE DWHB.EXTRACT_TABLES;
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','appsql-4\train','fintrain','dbo','HRSYS_HIERARCH_CTL','ASADWH','DWHB' ,'HRSYS_HIERARCH_CTL',NULL,NULL,GETDATE(),'JSHEN');
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','appsql-4\train','fintrain','dbo','HRSYS_HIERARCH_ITM','ASADWH','DWHB' ,'HRSYS_HIERARCH_ITM',NULL,NULL,GETDATE(),'JSHEN');
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','appsql-4\train','fintrain','dbo','HRSYS_HIERARCH_LVL','ASADWH','DWHB' ,'HRSYS_HIERARCH_LVL',NULL,NULL,GETDATE(),'JSHEN');
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','appsql-4\train','fintrain','dbo','HRHMN_EMPL_JOB_CTL','ASADWH','DWHB' ,'HRHMN_EMPL_JOB_CTL',NULL,NULL,GETDATE(),'JSHEN');
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','appsql-4\train','fintrain','dbo','HRHMN_EMPL_JOB_POS','ASADWH','DWHB' ,'HRHMN_EMPL_JOB_POS',NULL,NULL,GETDATE(),'JSHEN');
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','appsql-4\train','fintrain','dbo','HRHMN_EMPL_REF','ASADWH','DWHB' ,'HRHMN_EMPL_REF',NULL,NULL,GETDATE(),'JSHEN');
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','appsql-4\train','fintrain','dbo','HRHMN_EMPLTERM_DTL','ASADWH','DWHB' ,'HRHMN_EMPLTERM_DTL',NULL,NULL,GETDATE(),'JSHEN');
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','appsql-4\train','fintrain','dbo','HRHMN_QUAL_REF','ASADWH','DWHB' ,'HRHMN_QUAL_REF',NULL,NULL,GETDATE(),'JSHEN');
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','appsql-4\train','fintrain','dbo','HRHMN_EMPLQUAL_DTL','ASADWH','DWHB' ,'HRHMN_EMPLQUAL_DTL',NULL,NULL,GETDATE(),'JSHEN');
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','appsql-4\train','fintrain','dbo','HRPAY_PAYITEMS_SUMMACCR','ASADWH','DWHB' ,'HRPAY_PAYITEMS_SUMMACCR',NULL,NULL,GETDATE(),'JSHEN');
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','appsql-4\train','fintrain','dbo','HRPAY_PAYITEMS_DTL','ASADWH','DWHB' ,'HRPAY_PAYITEMS_DTL',NULL,NULL,GETDATE(),'JSHEN');
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','appsql-4\train','fintrain','dbo','HRPAY_PAYITEMS_SUMMPMNT','ASADWH','DWHB' ,'HRPAY_PAYITEMS_SUMMPMNT',NULL,NULL,GETDATE(),'JSHEN');
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','appsql-4\train','fintrain','dbo','HRPAY_MASTER_CTL','ASADWH','DWHB' ,'HRPAY_MASTER_CTL',NULL,NULL,GETDATE(),'JSHEN');
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','appsql-4\train','fintrain','dbo','HRPAY_LEAVE_DTL','ASADWH','DWHB' ,'HRPAY_LEAVE_DTL',NULL,NULL,GETDATE(),'JSHEN');
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','appsql-4\train','fintrain','dbo','HRPAY_LEAVE_CTL','ASADWH','DWHB' ,'HRPAY_LEAVE_CTL',NULL,NULL,GETDATE(),'JSHEN');

  SELECT * FROM DWHB.EXTRACT_TABLES

  

  --Step2:
  -- Create table structure same as source table
  -- bulk create and just use once at first time
  DECLARE @D_SCHEMA VARCHAR(50);
  DECLARE @D_TNAME VARCHAR(50);
  DECLARE @S_TNAME VARCHAR(100);
  DECLARE @SQL_DROP VARCHAR(1000);
  DECLARE @SQL_INSERT VARCHAR(1000);
  DECLARE C_TNAMES CURSOR FOR SELECT D_SCHEMA,D_TABLENAME,'['+S_DBSERVER+'].'+S_DBNAME+'.'+S_SCHEMA+'.'+S_TABLENAME FROM DWHB.EXTRACT_TABLES ORDER BY T_KEY ASC;
  OPEN C_TNAMES;
  FETCH NEXT FROM C_TNAMES INTO @D_SCHEMA,@D_TNAME,@S_TNAME;
  WHILE @@FETCH_STATUS =0
  BEGIN
		
		   --if source table exists, drop it first
		  IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = @D_SCHEMA
                 AND  TABLE_NAME = @D_TNAME))
          BEGIN
            SET  @SQL_DROP='DROP TABLE  ' + @D_SCHEMA+'.'+@D_TNAME
			EXEC (@SQL_DROP)
		
          END

		-- copy source table  
		SET  @SQL_INSERT='SELECT * INTO  ' + @D_SCHEMA+'.'+@D_TNAME + ' FROM  '+  @S_TNAME
		EXEC (@SQL_INSERT)
		

  FETCH NEXT FROM C_TNAMES   INTO   @D_SCHEMA,@D_TNAME,@S_TNAME;
  END 
  CLOSE C_TNAMES ;
  DEALLOCATE C_TNAMES;

  --------------------------------------------------------------------------------------------------------------------------------------
  ----------------------------------------Codes for dwhb.GREEN tables  -----------------------------------------------------------------
  -- note: haven't done 2016-08-24 16:06PM
  -- need change and test.
  -- also need to add process in Extract.dtsx package.

--PROGRAM
 select t1.id_number, t2.hierarchy_code , t3.hierarchy_descr,t4.hierarchy_level, t4.level_desc, t2.parent_node, t2.parent_type
 into DWHB.TMP_EMPLOYEE
  from 
  DWHB.HRHMN_EMPL_JOB_pos t1
  ,dwhb.hrsys_hierarch_itm t2
  , DWHB.hrsys_hierarch_ctl t3
  , dwhb.hrsys_hierarch_lvl t4
  where t1.position_code = t2.hierarchy_code 
  and t2.hierarchy_code = t3.hierarchy_code
  and t2.current_level = t4.hierarchy_level
  and t4.hierarchy_level = 7
  order by t1.id_number 

  SELECT * FROM DWHB.TMP_EMPLOYEE WHERE ID_NUMBER ='6024'
  SELECT * FROM DWHB.HRSYS_HIERARCH_LVL
--MANGER
DROP TABLE DWHB.TMP_MANAGER
select t2.hierarchy_code ,t2.parent_node
into DWHB.TMP_MANAGER
  from 
  DWHB.HRHMN_EMPL_JOB_pos t1
  ,dwhb.hrsys_hierarch_itm t2
  , DWHB.hrsys_hierarch_ctl t3
  , dwhb.hrsys_hierarch_lvl t4
  where t1.position_code = t2.hierarchy_code 
  and t2.hierarchy_code = t3.hierarchy_code
  and t2.current_level = t4.hierarchy_level
  and t4.hierarchy_level IN (3, 4)
  and t4.LEVEL_DESC IN ('Manager','Senior Manager')
  and t2.PARENT_TYPE='ORGUNIT'
  order by t1.id_number 

  select * from DWHB.TMP_MANAGER

--
select T1.*,T2.* from DWHB.TMP_EMPLOYEE t1
,DWHB.TMP_MANAGER T2
WHERE T1.PARENT_NODE=T2.HIERARCHY_CODE
AND T1.ID_NUMBER=6910

SELECT * FROM  DWHB.HRHMN_EMPL_JOB_pos WHERE ID_NUMBER =6910

SELECT * FROM DWHB.HRSYS_HIERARCH_ITM WHERE HIERARCHY_CODE='2001676'

-- PROGRAM
DROP TABLE DWHB.TMP_PROGRAM
select t2.hierarchy_code ,t2.parent_node,T2.CURRENT_LEVEL,T4.HIERARCHY_TYPE
into DWHB.TMP_PROGRAM
  from 
 -- DWHB.HRHMN_EMPL_JOB_pos t1
dwhb.hrsys_hierarch_itm t2
  , DWHB.hrsys_hierarch_ctl t3
  , dwhb.hrsys_hierarch_lvl t4
  where t2.hierarchy_code = t3.hierarchy_code
  and t2.current_level = t4.hierarchy_level
  and t4.hierarchy_level IN (4, 5)
  and t4.LEVEL_DESC IN ('Program','Sub-Program')
  and t2.PARENT_TYPE='ORGUNIT'


  select T1.ID_NUMBER,
         T1.HIERARCHY_CODE POSITION_CODE,
		 T1.HIERARCHY_DESCR POSITION_DESC,
		 T1.PARENT_NODE,
		 T2.HIERARCHY_CODE,
		 T2.PARENT_NODE,
		 T4.HIERARCHY_DESCR AS PROGRAM_NAME
		
		 
  
from DWHB.TMP_EMPLOYEE t1
,DWHB.TMP_MANAGER T2
,DWHB.TMP_PROGRAM T3 
,DWHB.HRSYS_HIERARCH_CTL T4
WHERE T1.PARENT_NODE=T2.HIERARCHY_CODE
AND T2.PARENT_NODE=T3.HIERARCHY_CODE
AND T3.HIERARCHY_CODE=T4.HIERARCHY_CODE
AND T1.ID_NUMBER=7

SELECT * FROM DWHB.TMP_PROGRAM 

---SERVICE STREAM
--MANGER
DROP TABLE DWHB.TMP_SERVICE_STREAM
select t2.hierarchy_code ,t2.parent_node
into DWHB.TMP_SERVICE_STREAM
  from 
 -- DWHB.HRHMN_EMPL_JOB_pos t1
dwhb.hrsys_hierarch_itm t2
  , DWHB.hrsys_hierarch_ctl t3
  , dwhb.hrsys_hierarch_lvl t4
  where t2.hierarchy_code = t3.hierarchy_code
  and t2.current_level = t4.hierarchy_level
  and t4.hierarchy_level IN (3)
  and t4.LEVEL_DESC IN ('Service Stream')
  and t2.PARENT_TYPE='ORGUNIT'
SELECT * FROM  DWHB.TMP_SERVICE_STREAM
  select T1.ID_NUMBER,
         T1.HIERARCHY_CODE POSITION_CODE,
		 T1.HIERARCHY_DESCR POSITION_DESC,
		 T1.PARENT_NODE AS MANAGER_CODE,
		 T2.HIERARCHY_CODE,
		 T2.PARENT_NODE AS SERVICE_CODE
		--,T3.HIERARCHY_CODE AS PROGRAM_CODE
		 
  
from DWHB.TMP_EMPLOYEE t1
,DWHB.TMP_MANAGER T2
,DWHB.TMP_SERVICE_STREAM T3
--,DWHB.TMP_PROGRAM T3 
--,DWHB.HRSYS_HIERARCH_CTL T4
WHERE T1.PARENT_NODE=T2.HIERARCHY_CODE
AND T2.PARENT_NODE=T3.HIERARCHY_CODE
--AND T3.HIERARCHY_CODE=T4.HIERARCHY_CODE
AND T1.ID_NUMBER=6910

-- PORTFOLIO
select t2.hierarchy_code ,t2.parent_node
into DWHB.TMP_PORTFOLIO
  from 
 -- DWHB.HRHMN_EMPL_JOB_pos t1
dwhb.hrsys_hierarch_itm t2
  , DWHB.hrsys_hierarch_ctl t3
  , dwhb.hrsys_hierarch_lvl t4
  where t2.hierarchy_code = t3.hierarchy_code
  and t2.current_level = t4.hierarchy_level
  and t4.hierarchy_level IN (2)
  and t4.LEVEL_DESC IN ('Portfolio')
  and t2.PARENT_TYPE='ORGUNIT'


SELECT * FROM  DWHB.TMP_PORTFOLIO
DELETE FROM  DWHB.TMP_PORTFOLIO
WHERE LEN(HIERARCHY_CODE)>6

--------------------------------------------------------------------------------------------------------------------------------------