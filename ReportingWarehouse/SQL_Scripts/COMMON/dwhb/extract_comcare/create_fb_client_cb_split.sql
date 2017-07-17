CREATE TABLE extract_comcare.[FB_Client_CB_Split](
	[Client_CB_Split_ID] [numeric](18, 0) NOT NULL,
	[Client_Contract_Billed_To_ID] [numeric](18, 0) NOT NULL,
	[Person_ID] [int] NULL,
	[Organisation_ID] [numeric](18, 0) NULL,
	[Split_Percentage] [decimal](6, 2) NOT NULL,
	[Direct_Debit] [bit] NULL,
	[Statement_Exempt] [bit] NULL,
	[Creation_Date] [datetime] NOT NULL,
	[Creator_User_Name] [varchar](20) NOT NULL,
	[Last_Modified_Date] [datetime] NULL,
	[Last_Modified_User_Name] [varchar](20) NULL,
	[Debtor_ID] [varchar](20) NULL,
 CONSTRAINT [PK_FB_CLIENT_CB_SPLIT] PRIMARY KEY CLUSTERED 
(
	[Client_CB_Split_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO