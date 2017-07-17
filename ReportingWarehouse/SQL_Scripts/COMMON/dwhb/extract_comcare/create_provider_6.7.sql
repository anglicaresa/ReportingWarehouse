CREATE TABLE extract_comcare.[Provider](
	[Provider_ID] [int] NOT NULL,
	[ComCare_Provider_No] [varchar](10) NULL,
	[Employee_No] [varchar](15) NULL,
	[Creation_Date] [datetime] NOT NULL,
	[Creator_User_Name] [varchar](20) NOT NULL,
	[Last_Modified_Date] [datetime] NULL,
	[Last_Modified_User_Name] [varchar](20) NULL,
	[UserName] [varchar](20) NULL,
	[Trainer] [bit] NULL,
	[HPII_Number] [varchar](20) NULL,
	[HPII_Last_Updated_Date] [datetimeoffset](7) NULL,
	[Working_Hour_ID] [numeric](18, 0) NULL,
 CONSTRAINT [PK_PROVIDER] PRIMARY KEY CLUSTERED 
(
	[Provider_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO