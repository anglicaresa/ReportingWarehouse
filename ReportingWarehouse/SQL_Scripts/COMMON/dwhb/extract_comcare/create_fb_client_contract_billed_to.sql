CREATE TABLE extract_comcare.[FB_Client_Contract_Billed_To](
	[Client_Contract_Billed_To_ID] [numeric](18, 0) NOT NULL,
	[Client_CB_ID] [numeric](18, 0) NOT NULL,
	[Effective_From_Date] [datetime] NOT NULL,
	[Effective_To_Date] [datetime] NULL,
	[Creation_Date] [datetime] NOT NULL,
	[Creator_User_Name] [varchar](20) NOT NULL,
	[Last_Modified_Date] [datetime] NULL,
	[Last_Modified_User_Name] [varchar](20) NULL,
 CONSTRAINT [PK_FB_CLIENT_CONTRACT_BILLED_T] PRIMARY KEY CLUSTERED 
(
	[Client_Contract_Billed_To_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO