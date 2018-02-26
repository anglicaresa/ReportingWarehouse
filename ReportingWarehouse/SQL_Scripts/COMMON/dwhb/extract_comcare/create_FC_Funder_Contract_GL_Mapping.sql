CREATE TABLE [extract_comcare].[FC_Funder_Contract_GL_Mapping](
	[Funder_Contract_GL_Mapping_ID] [numeric](18, 0) NOT NULL,
	[Funding_Care_Model_ID] [numeric](18, 0) NULL,
	[Funder_Contract_ID] [numeric](18, 0) NOT NULL,
	[Program_Level_ID] [numeric](18, 0) NULL,
	[Funder_Contract_Area_ID] [numeric](18, 0) NULL,
	[FC_Supplement_ID] [numeric](18, 0) NULL,
	[Finance_Program_Code] [varchar](35) NULL,
	[Billing_GL_Account_Code] [varchar](35) NULL,
	[Service_GL_Account_Code] [varchar](35) NULL,
	[Consumable_GL_Account] [varchar](35) NULL,
	[Funder_Claim_GL_Account] [varchar](35) NULL,
	[Effective_From_Date] [datetime] NOT NULL,
	[Effective_To_Date] [datetime] NULL,
	[Creation_Date] [datetime] NOT NULL,
	[Creator_User_Name] [varchar](20) NOT NULL,
	[Last_Modified_Date] [datetime] NULL,
	[Last_Modified_User_Name] [varchar](20) NULL
) ON [PRIMARY]

GO
