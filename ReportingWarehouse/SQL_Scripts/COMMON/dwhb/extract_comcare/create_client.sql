CREATE TABLE extract_comcare.[Client](
	[Client_ID] [int] NOT NULL,
	[Carer_Availability_Type_Code] [tinyint] NULL,
	[Old_Country_Code] [smallint] NULL,
	[Old_Language_Code] [smallint] NULL,
	[Organisation_ID] [numeric](18, 0) NULL,
	[Old_Ethnicity_Class_Code] [tinyint] NULL,
	[Spare] [datetime] NULL,
	[URN] [char](12) NULL,
	[Registration_Date] [datetime] NULL,
	[Spare_1] [tinyint] NULL,
	[ComCare_PID] [int] NULL,
	[Creation_Date] [datetime] NOT NULL,
	[Creator_User_Name] [varchar](20) NOT NULL,
	[Last_Modified_Date] [datetime] NULL,
	[Last_Modified_User_Name] [varchar](20) NULL,
	[Centre_ID] [numeric](18, 0) NULL,
	[Religion_Code] [smallint] NULL,
	[Carer_Residency_Status_Code] [tinyint] NULL,
	[Pension_Benefit_Status_Code] [tinyint] NULL,
	[Living_Arrangement_Type_Code] [tinyint] NULL,
	[Stream_Type_Code] [smallint] NULL,
	[Next_Hazax_Date] [datetime] NULL,
	[IHI_Number] [varchar](20) NULL,
	[IHI_Record_Status] [varchar](20) NULL,
	[IHI_Status] [varchar](20) NULL,
	[IHI_Last_Updated_Date] [datetimeoffset](7) NULL,
	[IHI_Status_Code] [varchar](20) NULL,
	[IHI_Reason] [varchar](100) NULL,
	[IHI_Severity] [varchar](50) NULL,
	[PCEHR_Exists] [bit] NULL,
	[PCEHR_Last_Checked] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_CLIENT] PRIMARY KEY CLUSTERED 
(
	[Client_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO