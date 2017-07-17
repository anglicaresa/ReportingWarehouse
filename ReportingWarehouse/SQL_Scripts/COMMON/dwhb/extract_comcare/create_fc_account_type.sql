CREATE TABLE [extract_comcare].[FC_Account_Type](
	[FC_Account_Type_ID] [numeric](18, 0) NOT NULL,
	[Funding_Care_Model_ID] [numeric](18, 0) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Print_On_Statement] [bit] NULL,
	[Effective_From_Date] [datetime] NOT NULL,
	[Effective_To_Date] [datetime] NULL,
	[Creation_Date] [datetime] NOT NULL,
	[Creator_User_Name] [varchar](20) NOT NULL,
	[Last_Modified_Date] [datetime] NULL,
	[Last_Modified_User_Name] [varchar](20) NULL,
	[Account_Automatic_Creation] [bit] NULL,
	[Is_Contigency_Account] [bit] NULL,
	[EOS_Code] [varchar](20) NULL,
	[Default_Account] [bit] NULL,
 CONSTRAINT [PK_FC_ACCOUNT_TYPE] PRIMARY KEY CLUSTERED 
(
	[FC_Account_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO