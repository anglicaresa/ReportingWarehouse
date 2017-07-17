 /*------------------------------------------------------------------------------------------------------------------------
             Script name: Create FACT Tables
			 Purpose: create DWHF.FACT tables 
			 Development history:
			        1. 24/08/2016  created by Jerry Shen

			 Notes:
				  
*------------------------------------------------------------------------------------------------------------------------/

---------------------  Creating table 'CDC_LOAD_FACT' -------------------------------------------------------------------
CREATE TABLE [DWHF].[CDC_LOAD_FACT] (
    [cdc_load_key] int IDENTITY(1,1) NOT NULL,
    [date_key] int  NOT NULL,
    [batch_key] int  NOT NULL,
    [table_key] int  NOT NULL,
    [status_key] int  NOT NULL,
    [module_key] int  NOT NULL,
    [cdc_date_time] datetime  NOT NULL
);
GO

ALTER TABLE [DWHF].[CDC_LOAD_FACT]
ADD CONSTRAINT [PK_CDC_LOAD_FACT]
    PRIMARY KEY CLUSTERED ([cdc_load_key] ASC);
GO
-- JOB START
INSERT INTO [DWHF].[CDC_LOAD_FACT]
SELECT 	T1.DATE_KEY
,1 
, T2.TABLE_KEY
,1
,1
,GETDATE()
FROM  DWHF.DATE_DIM T1
,DWHF.TABLE_DIM T2
WHERE CONVERT(DATE,T1.FULL_DATE)=CONVERT(DATE,GETDATE())
AND  T2.SCHEMA+'.'+T2.TABLE_NAME= 'HRSYS_HIERARCH_CTL'

TRUNCATE TABLE [DWHF].[CDC_LOAD_FACT]
SELECT * FROM [DWHF].[CDC_LOAD_FACT]


---------------------------------- Creating table 'ERROR_EVENT_FACT'  ----------------------------------------------
CREATE TABLE [DWHF].[ERROR_EVENT_FACT] (
    [error_event_key] int IDENTITY(1,1) NOT NULL,
    [batch_key] int  NOT NULL,
    [date_key] int  NOT NULL,
    [error_date_time] datetime  NOT NULL,
    [module_key] int  NOT NULL,
    [error_severity] varchar(20)  NOT NULL
);
GO

ALTER TABLE [DWHF].[ERROR_EVENT_FACT]
ADD CONSTRAINT [PK_ERROR_EVENT_FACT]
    PRIMARY KEY CLUSTERED ([error_event_key] ASC);
GO



------------------------------------- Creating table 'ERROR_EVENT_DETAIL_FACT' -------------------------------------
CREATE TABLE [DWHF].[ERROR_EVENT_DETAIL_FACT] (
    [error_event_key] int IDENTITY(1,1) NOT NULL,
    [DATE_DIM_date_key] int  NOT NULL,
    [BATCH_DIM_batch_key] int  NOT NULL,
    [MODULE_DIM_module_key] int  NOT NULL,
    [TABLE_DIM_table_key] int  NOT NULL,
    [table_pk] nvarchar(max)  NOT NULL,
    [error_condition] nvarchar(max)  NOT NULL,
    [field_name] nvarchar(max)  NOT NULL
);
GO
---------------------------------------------------------------------------------------------------------------------