CREATE TABLE extract_comcare.[Person](
	[Person_ID] [int] NOT NULL,
	[Title_Code] [char](6) NULL,
	[Gender_Code] [tinyint] NULL,
	[Given_Names] [varchar](50) NULL,
	[Last_Name] [varchar](50) NOT NULL,
	[Preferred_Name] [varchar](50) NULL,
	[Salutation] [varchar](50) NULL,
	[Birth_Date] [datetime] NULL,
	[Sold_To_Account_Code] [varchar](35) NULL,
	[Bill_To_Account_Code] [varchar](17) NULL,
	[Creation_Date] [datetime] NOT NULL,
	[Creator_User_Name] [varchar](20) NOT NULL,
	[Last_Modified_Date] [datetime] NULL,
	[Last_Modified_User_Name] [varchar](20) NULL,
	[Deceased_Date] [datetimeoffset](7) NULL,
	[Country_Code] [smallint] NULL,
	[Language_Code] [smallint] NULL,
	[Ethnicity_Class_Code] [tinyint] NULL,
	[Estimated_DOB_Flag] [bit] NULL,
	[Attachment_ID] [int] NULL,
	[Employment_Status_ID] [tinyint] NULL,
	[Marital_Status_ID] [tinyint] NULL,
	[Dummy_PID] [bit] NULL,
	[FS_Blob_ID] [numeric](18, 0) NULL,
	[BPAY_ID] [varchar](30) NULL,
	[POSTPAY_ID] [varchar](30) NULL,
	[Source_System_Person_ID] [varchar](30) NULL,
	[Source_System] [varchar](30) NULL,
	[Interpreter_Status_ID] [tinyint] NULL,
 CONSTRAINT [PK_PERSON] PRIMARY KEY CLUSTERED 
(
	[Person_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO