﻿CREATE TABLE [extract_comcare].[FB_Client_CB_Transaction](
	[Client_CB_Trx_ID] [numeric](18, 0) NOT NULL,
	[Client_CB_ID] [numeric](18, 0) NOT NULL,
	[Fee_Hold_Reason_Code] [tinyint] NULL,
	[GST_Type_Code] [tinyint] NULL,
	[Organisation_ID] [numeric](18, 0) NULL,
	[Person_ID] [int] NULL,
	[Processing_Date] [datetime] NOT NULL,
	[Billing_Period_From] [datetime] NOT NULL,
	[Billing_Period_To] [datetime] NOT NULL,
	[Amount] [numeric](9, 2) NOT NULL,
	[Tax_Percentage] [numeric](6, 2) NULL,
	[Late_Data_Indicator] [bit] NULL,
	[Comments] [varchar](255) NULL,
	[Date_Transferred_To_GL] [datetime] NULL,
	[GL_Account_Code] [varchar](35) NULL,
	[Creation_Date] [datetime] NOT NULL,
	[Creator_User_Name] [varchar](20) NOT NULL,
	[Last_Modified_Date] [datetime] NULL,
	[Last_Modified_User_Name] [varchar](20) NULL,
	[Invoice_No] [varchar](30) NULL,
	[Debtor_ID] [varchar](20) NULL,
	[Units] [numeric](11, 4) NULL,
	[UOM_Code] [varchar](4) NULL,
	[Visit_Date] [datetime] NULL,
	[Visit_No] [tinyint] NULL,
	[Client_CB_Adj_ID] [numeric](18, 0) NULL,
	[Client_CB_Item_ID] [numeric](18, 0) NULL,
	[Provider_ID] [int] NULL,
	[Service_Prov_Position_ID] [numeric](18, 0) NULL,
	[Contract_Billing_Rate_ID] [numeric](18, 0) NULL,
	[Rate_Used] [numeric](9, 2) NULL,
	[Invoice_Date] [datetime] NULL,
	[Claim_History_Detail_ID] [numeric](18, 0) NULL,
	[FC_Account_ID] [numeric](18, 0) NULL
) ON [PRIMARY]

GO


