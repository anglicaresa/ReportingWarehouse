CREATE TABLE [extract_comcare].[FC_Contract_Area_Product](
	[CAP_ID] [numeric](18, 0) NOT NULL,
	[Area_ID] [numeric](18, 0) NULL,
	[FC_Product_ID] [numeric](18, 0) NOT NULL,
	[Funding_Prog_Code] [smallint] NULL,
	[Description] [varchar](50) NULL,
	[GL_Account_Code_Billing] [varchar](35) NULL,
	[Effective_From_Date] [datetime] NOT NULL,
	[Effective_To_Date] [datetime] NULL,
	[Creation_Date] [datetime] NULL,
	[Creator_User_Name] [varchar](20) NULL,
	[Last_Modified_Date] [datetime] NULL,
	[Last_Modified_User_Name] [varchar](20) NULL,
	[Funder_Contract_ID] [numeric](18, 0) NOT NULL,
	[GL_Account_Code_Payroll] [varchar](35) NULL,
	[GL_Account_Code_Consumables] [varchar](35) NULL
) ON [PRIMARY]

GO
