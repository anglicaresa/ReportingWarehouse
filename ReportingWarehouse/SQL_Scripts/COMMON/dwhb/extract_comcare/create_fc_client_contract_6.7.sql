CREATE TABLE extract_comcare.[FC_Client_Contract](
	[Client_Contract_ID] [numeric](18, 0) NOT NULL,
	[Funder_Contract_ID] [numeric](18, 0) NOT NULL,
	[Program_ID] [numeric](18, 0) NULL,
	[Client_ID] [int] NOT NULL,
	[Funded_Indicator] [bit] NULL,
	[Govt_Recipient_ID] [varchar](20) NULL,
	[Start_Date_of_Claim] [datetime] NULL,
	[End_Date_of_Claim] [datetime] NULL,
	[ACAT_Assessment_Date] [datetime] NULL,
	[ACAT_Expiry_Date] [datetime] NULL,
	[ACAT_Level] [char](1) NULL,
	[Effective_From_Date] [datetime] NOT NULL,
	[Effective_To_Date] [datetime] NULL,
	[Creator_User_Name] [varchar](20) NOT NULL,
	[Creation_Date] [datetime] NOT NULL,
	[Last_Modified_User_Name] [varchar](20) NULL,
	[Last_Modified_Date] [datetime] NULL,
	[FC_Service_Delivery_Outcome_ID] [numeric](18, 0) NULL,
	[Amount_Transferred_In] [decimal](9, 2) NULL,
	[Amount_Transferred_Out] [decimal](9, 2) NULL,
	[Overhead_Rate_Percentage] [decimal](7, 2) NULL,
	[Entry_To_Care] [datetime] NULL,
	[Program_Level_ID] [numeric](18, 0) NULL,
	[Record_In_Error] [bit] NULL,
	[FC_Care_Rating_ID] [numeric](18, 0) NULL,
	[Amount_Transferred_In_Client] [decimal](9, 2) NULL,
	[Amount_Transferred_Out_Client] [decimal](9, 2) NULL,
 CONSTRAINT [PK_FC_CLIENT_CONTRACT] PRIMARY KEY NONCLUSTERED 
(
	[Client_Contract_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO