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
 CREATE TABLE  DWHB.EXTRACT_TABLES
 (T_KEY INTEGER IDENTITY(1,1),
  S_SYSTEM VARCHAR(20),
  S_DBSERVER VARCHAR(50),
  S_DBNAME VARCHAR(50),
  S_SCHEME VARCHAR(20),
  S_TABLENAME VARCHAR(50),
  D_DBNAME VARCHAR(50),
  D_SCHEME VARCHAR(20),
  D_TABLENAME VARCHAR(50),
  NOTE1 VARCHAR(50),
  NOTE2 VARCHAR(50),
  CREATE_DATE DATETIME,
  CREATE_PERSON VARCHAR(20))

  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','[appsql-4\train]','[fintrain]','[dbo]','HRSYS_HIERARCH_CTL','[ASADWH]','[DWHB]' ,'HRSYS_HIERARCH_CTL',NULL,NULL,GETDATE(),'JSHEN');
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','[appsql-4\train]','[fintrain]','[dbo]','HRSYS_HIERARCH_ITM','[ASADWH]','[DWHB]' ,'HRSYS_HIERARCH_ITM',NULL,NULL,GETDATE(),'JSHEN');
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','[appsql-4\train]','[fintrain]','[dbo]','HRSYS_HIERARCH_LVL','[ASADWH]','[DWHB]' ,'HRSYS_HIERARCH_LVL',NULL,NULL,GETDATE(),'JSHEN');
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','[appsql-4\train]','[fintrain]','[dbo]','HRHMN_EMPL_JOB_CTL','[ASADWH]','[DWHB]' ,'HRHMN_EMPL_JOB_CTL',NULL,NULL,GETDATE(),'JSHEN');
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','[appsql-4\train]','[fintrain]','[dbo]','HRHMN_EMPL_JOB_POS','[ASADWH]','[DWHB]' ,'HRHMN_EMPL_JOB_POS',NULL,NULL,GETDATE(),'JSHEN');
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','[appsql-4\train]','[fintrain]','[dbo]','HRHMN_EMPL_REF','[ASADWH]','[DWHB]' ,'HRHMN_EMPL_REF',NULL,NULL,GETDATE(),'JSHEN');
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','[appsql-4\train]','[fintrain]','[dbo]','HRHMN_EMPLTERM_DTL','[ASADWH]','[DWHB]' ,'HRHMN_EMPLTERM_DTL',NULL,NULL,GETDATE(),'JSHEN');
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','[appsql-4\train]','[fintrain]','[dbo]','HRHMN_QUAL_REF','[ASADWH]','[DWHB]' ,'HRHMN_QUAL_REF',NULL,NULL,GETDATE(),'JSHEN');
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','[appsql-4\train]','[fintrain]','[dbo]','HRHMN_EMPLQUAL_DTL','[ASADWH]','[DWHB]' ,'HRHMN_EMPLQUAL_DTL',NULL,NULL,GETDATE(),'JSHEN');
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','[appsql-4\train]','[fintrain]','[dbo]','HRPAY_PAYITEMS_SUMMACCR','[ASADWH]','[DWHB]' ,'HRPAY_PAYITEMS_SUMMACCR',NULL,NULL,GETDATE(),'JSHEN');
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','[appsql-4\train]','[fintrain]','[dbo]','HRPAY_PAYITEMS_DTL','[ASADWH]','[DWHB]' ,'HRPAY_PAYITEMS_DTL',NULL,NULL,GETDATE(),'JSHEN');
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','[appsql-4\train]','[fintrain]','[dbo]','HRPAY_PAYITEMS_SUMMPMNT','[ASADWH]','[DWHB]' ,'HRPAY_PAYITEMS_SUMMPMNT',NULL,NULL,GETDATE(),'JSHEN');
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','[appsql-4\train]','[fintrain]','[dbo]','HRPAY_MASTER_CTL','[ASADWH]','[DWHB]' ,'HRPAY_MASTER_CTL',NULL,NULL,GETDATE(),'JSHEN');
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','[appsql-4\train]','[fintrain]','[dbo]','HRPAY_LEAVE_DTL','[ASADWH]','[DWHB]' ,'HRPAY_LEAVE_DTL',NULL,NULL,GETDATE(),'JSHEN');
  INSERT INTO  DWHB.EXTRACT_TABLES VALUES('T1_HRIS','[appsql-4\train]','[fintrain]','[dbo]','HRPAY_LEAVE_CTL','[ASADWH]','[DWHB]' ,'HRPAY_LEAVE_CTL',NULL,NULL,GETDATE(),'JSHEN');

  SELECT * FROM DWHB.EXTRACT_TABLES

  --Step2:
  -- Create table structure same as source table
  -- bulk create

