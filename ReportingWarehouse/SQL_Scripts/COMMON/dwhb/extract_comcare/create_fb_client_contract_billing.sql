CREATE TABLE extract_comcare.[FB_Client_Contract_Billing](
	[Client_CB_ID] [numeric](18, 0) NOT NULL,
	[Client_ID] [int] NOT NULL,
	[Funder_Contract_ID] [numeric](18, 0) NOT NULL,
	[Billing_Rate_Classification_ID] [numeric](18, 0) NULL,
	[Primary_Signatory_ID] [int] NULL,
	[Secondary_Signatory_ID] [int] NULL,
	[Contract_Billing_Group_ID] [tinyint] NOT NULL,
	[Billing_Cap] [decimal](9, 2) NULL,
	[Billing_Start_Date] [datetime] NOT NULL,
	[Billing_End_Date] [datetime] NULL,
	[Creation_Date] [datetime] NOT NULL,
	[Creator_User_Name] [varchar](20) NOT NULL,
	[Last_Modified_Date] [datetime] NULL,
	[Last_Modified_User_Name] [varchar](20) NULL,
	[Billing_Reference] [varchar](50) NULL,
	[Insurance_Claim] [bit] NULL,
	[Actual_Admission_Date] [datetime] NULL,
	[Proposed_Discharged_Date] [datetime] NULL,
	[Contract_Date] [datetime] NULL,
	[Billing_Number] [varchar](20) NULL,
	[Assessed_As_Couple] [bit] NULL,
	[Comments] [varchar](255) NULL,
	[Provider_ID] [int] NULL,
	[Contract_Billing_ID] [numeric](18, 0) NOT NULL,
	[Information_Sharing_Indicator] [bit] NULL,
	[Review_Date] [datetime] NULL,
	[Bill_From_Organisation_ID] [numeric](18, 0) NULL,
 CONSTRAINT [PK_FB_CLIENT_CONTRACT_BILLING] PRIMARY KEY CLUSTERED 
(
	[Client_CB_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO