CREATE TABLE [extract_comcare].[Period_of_Residency](
	[Residency_ID] [numeric](18, 0) NOT NULL,
	[Address_Purpose_ID] [int] NOT NULL,
	[Person_ID] [int] NULL,
	[Address_ID] [numeric](18, 0) NULL,
	[Organisation_ID] [numeric](18, 0) NULL,
	[From_Date] [datetime] NOT NULL,
	[To_Date] [datetime] NULL,
	[Display_Indicator] [bit] NOT NULL,
	[Confidential_Indicator] [bit] NOT NULL,
	[Creation_Date] [datetime] NOT NULL,
	[Creator_User_Name] [varchar](20) NOT NULL,
	[Last_Modified_Date] [datetime] NULL,
	[Last_Modified_User_Name] [varchar](20) NULL,
	[Override_Org_Address_Ind] [bit] NULL,
 CONSTRAINT [PK_PERIOD_OF_RESIDENCY] PRIMARY KEY CLUSTERED 
(
	[Residency_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO