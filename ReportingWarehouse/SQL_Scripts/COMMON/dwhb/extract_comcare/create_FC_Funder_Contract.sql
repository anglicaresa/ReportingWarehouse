CREATE TABLE [extract_comcare].[FC_Funder_Contract](
	[Funder_Contract_ID] [numeric](18, 0) NOT NULL,
	[Funding_Type_ID] [tinyint] NOT NULL,
	[Description] [varchar](100) NOT NULL,
	[Creation_Date] [datetime] NULL,
	[Creator_User_Name] [varchar](20) NULL,
	[Last_Modified_Date] [datetime] NULL,
	[Last_Modified_User_Name] [varchar](20) NULL,
	[Internal_Contract_Number] [varchar](50) NULL,
	[Short_Description] [varchar](10) NULL,
	[Funding_Care_Model_ID] [numeric](18, 0) NULL,
	[Claiming_Service_ID] [varchar](20) NULL,
	[FC_Claiming_Service_Classification_Code] [char](1) NULL,
	[Organisation_ID] [numeric](18, 0) NULL
) ON [PRIMARY]

GO