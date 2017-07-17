CREATE TABLE extract_comcare.[FC_Transaction](
	[FC_Transaction_ID] [numeric](18, 0) NOT NULL,
	[Unique_Identifier] [uniqueidentifier] NULL,
	[FC_Account_ID] [numeric](18, 0) NOT NULL,
	[FC_Transaction_Type_ID] [tinyint] NOT NULL,
	[Account_Code] [varchar](50) NULL,
	[Transaction_Source] [varchar](50) NULL,
	[Activity_Date] [datetime] NULL,
	[Activity_Type] [varchar](1) NULL,
	[Estimated_Amount] [decimal](28, 5) NULL,
	[Actual_Amount] [decimal](28, 5) NULL,
	[Balance_After_Txn] [decimal](28, 5) NULL,
	[Comments] [varchar](255) NULL,
	[Creation_Date] [datetime] NOT NULL,
	[Creator_User_Name] [varchar](20) NOT NULL,
	[Last_Modified_Date] [datetime] NULL,
	[Last_Modified_User_Name] [varchar](20) NULL,
	[Source_Table] [varchar](255) NULL,
	[Source_Record_Key] [varchar](255) NULL,
	[FC_Product_ID] [numeric](18, 0) NULL,
	[Funding_Care_Model_Period_ID] [numeric](18, 0) NULL,
	[Statement_Closing_Balance] [decimal](28, 5) NULL,
	[Overhead_Client_Supplement_ID] [decimal](18, 0) NULL,
	[FC_Supplement_Type_ID] [tinyint] NULL,
	[Unit] [decimal](28, 5) NULL,
	[Rate] [decimal](28, 5) NULL,
	[Exported_Date] [datetime] NULL,
 CONSTRAINT [PK_FC_TRANSACTION] PRIMARY KEY CLUSTERED 
(
	[FC_Transaction_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO