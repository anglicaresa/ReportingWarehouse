/*------------------------------------------------------------------------------------------------------------------------
             Script name: Create DIM Tables
			 Purpose: create DWHF.DIM tables
			 Development history:
			        1. 24/08/2016  created by Jerry Shen

			 Notes:
				  
*------------------------------------------------------------------------------------------------------------------------/
 ----------------------DATE_DIM	 -----------------------------------------------------------------------------------------
 SELECT * INTO DWHF.DATE_DIM FROM DWHF.DIM_DATE
 SELECT * FROM DWHF.DATE_DIM
 ALTER TABLE DWHF.DATE_DIM
ADD CONSTRAINT [PK_DATE_DIM]
    PRIMARY KEY CLUSTERED ([date_key] ASC);
GO



 -------------------- Creating table 'TABLE_DIM'	 --------------------------------------------------------------------
CREATE TABLE [DWHF].[TABLE_DIM] (
    [table_key] int IDENTITY(1,1) NOT NULL,
    [table_name] varchar(50)  NOT NULL,
    [source_system] varchar(20)  NOT NULL,
    [schema] varchar(20)  NOT NULL
);
GO

ALTER TABLE [DWHF].[TABLE_DIM]
ADD CONSTRAINT [PK_TABLE_DIM]
    PRIMARY KEY CLUSTERED ([table_key] ASC);
GO

SELECT * FROM [DWHF].[TABLE_DIM]

INSERT INTO [DWHF].[TABLE_DIM]
SELECT 	D_TABLENAME,S_SYSTEM,D_SCHEMA
FROM DWHB.EXTRACT_TABLES



------------------------------- Creating table 'STATUS_DIM'	  -------------------------------------------------------------
CREATE TABLE [DWHF].[STATUS_DIM] (
    [status_key] int IDENTITY(1,1) NOT NULL,
    [status_group] varchar(2)  NOT NULL,
    [status_name] varchar(20)  NOT NULL
);
GO

ALTER TABLE [DWHF].[STATUS_DIM] 
ADD CONSTRAINT [PK_STATUS_DIM]
    PRIMARY KEY CLUSTERED ([status_key] ASC);
GO

TRUNCATE TABLE [DWHF].[STATUS_DIM]

INSERT INTO  [DWHF].[STATUS_DIM] VALUES('1','JOB START');
INSERT INTO  [DWHF].[STATUS_DIM] VALUES('2','JOB FINISH');
INSERT INTO  [DWHF].[STATUS_DIM] VALUES('3','JOB FAIL.');

SELECT * FROM  [DWHF].[STATUS_DIM]


------------------------- Creating table 'MODULE_DIM'  --------------------------------------------------------------------
CREATE TABLE [DWHF].[MODULE_DIM] (
    [module_key] int IDENTITY(1,1) NOT NULL,
    [etl_module] varchar(40)  NOT NULL,
    [exception_action] varchar(40)  NOT NULL,
    [module_definition] varchar(1000)  NOT NULL
);
GO
ALTER TABLE [DWHF].[MODULE_DIM]
ADD CONSTRAINT [PK_MODULE_DIM]
    PRIMARY KEY CLUSTERED ([module_key] ASC);
GO

INSERT INTO [DWHF].[MODULE_DIM] VALUES('EXTRACT','RE-RUN','EXTRACT SOURCE DATA AND LOAD INTO DESTINATION TABLES')

SELECT * FROM [DWHF].[MODULE_DIM] 

--------------------- Creating table 'BATCH_DIM'   ------------------------------------------------------------------------
CREATE TABLE [DWHF].[BATCH_DIM] (
    [batch_key] int IDENTITY(1,1) NOT NULL,
    [batch_type] nvarchar(max)  NOT NULL
);
GO

ALTER TABLE [DWHF].[BATCH_DIM]
ADD CONSTRAINT [PK_BATCH_DIM]
    PRIMARY KEY CLUSTERED ([batch_key] ASC);
GO

INSERT INTO  [DWHF].[BATCH_DIM] VALUES('Full Load');
INSERT INTO  [DWHF].[BATCH_DIM] VALUES('Incremental Load');

select * from [DWHF].[BATCH_DIM] 

----------------------------------------------------------------------------------------------------------------------------