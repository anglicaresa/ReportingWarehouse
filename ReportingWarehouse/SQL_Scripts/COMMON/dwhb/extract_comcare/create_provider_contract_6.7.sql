CREATE TABLE [extract_comcare].[Provider_Contract](
	[Provider_ID] [int] NOT NULL,
	[Provider_Contract_Type_Code] [tinyint] NOT NULL,
	[Effective_Date_From] [datetime] NOT NULL,
	[Working_Week_No] [numeric](18, 0) NULL,
	[Effective_Date_To] [datetime] NULL,
	[Minimum_Daily_Hours] [decimal](4, 2) NULL,
	[Maximum_Daily_Hours] [decimal](4, 2) NULL,
	[Minimum_Period_Hours] [decimal](4, 2) NULL,
	[Maximum_Period_Hours] [decimal](4, 2) NULL,
	[Comment] [varchar](255) NULL,
	[Creation_Date] [datetime] NOT NULL,
	[Creator_User_Name] [varchar](20) NOT NULL,
	[Last_Modified_Date] [datetime] NULL,
	[Last_Modified_User_Name] [varchar](20) NULL,
	[Provider_Class_Code] [char](6) NULL,
	[Organisation_ID] [numeric](18, 0) NULL,
	[Agency_Organisation_ID] [numeric](18, 0) NULL,
	[Centre_ID] [numeric](18, 0) NULL,
	[Team_No] [smallint] NULL,
 CONSTRAINT [PK_PROVIDER_CONTRACT] PRIMARY KEY CLUSTERED 
(
	[Provider_ID] ASC,
	[Effective_Date_From] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO