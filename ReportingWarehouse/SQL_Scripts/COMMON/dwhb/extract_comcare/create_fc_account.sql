CREATE TABLE [extract_comcare].[FC_Account](
	[FC_Account_ID] [numeric](18, 0) NOT NULL,
	[Client_Contract_ID] [numeric](18, 0) NULL,
	[FC_Account_Type_ID] [numeric](18, 0) NOT NULL,
	[Account_Code] [varchar](50) NULL,
	[Actual_Balance] [decimal](28, 5) NULL,
	[Creation_Date] [datetime] NOT NULL,
	[Creator_User_Name] [varchar](20) NOT NULL,
	[Last_Modified_Date] [datetime] NULL,
	[Last_Modified_User_Name] [varchar](20) NULL,
 CONSTRAINT [PK_FC_ACCOUNT] PRIMARY KEY CLUSTERED 
(
	[FC_Account_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO