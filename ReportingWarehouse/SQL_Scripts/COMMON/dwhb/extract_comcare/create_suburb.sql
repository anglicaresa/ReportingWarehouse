CREATE TABLE [extract_comcare].[Suburb](
	[Suburb_ID] [numeric](18, 0) NOT NULL,
	[HACC_Region_Code] [char](4) NULL,
	[Post_Code] [varchar](10) NOT NULL,
	[ASGC_State_Code] [tinyint] NULL,
	[ASGC_Division_Code] [int] NULL,
	[ASGC_Sub_Divison_Code] [int] NULL,
	[ASGC_SLA_Code] [int] NULL,
	[State_Code] [tinyint] NULL,
	[Suburb_Name] [varchar](50) NOT NULL,
	[Effective_From_Date] [datetime] NULL,
	[Effective_To_Date] [datetime] NULL,
	[xxxLat] [decimal](9, 6) NULL,
	[xxxLng] [decimal](9, 6) NULL,
	[Accuracy] [tinyint] NULL,
	[GMAP_Address] [varchar](150) NULL,
	[Address_Type] [varchar](25) NULL,
	[Location_Type] [varchar](25) NULL,
	[ISO_3Alpha_Country_Code] [varchar](3) NULL,
	[Time_Zone_ID] [varchar](100) NULL,
	[Position] [geography] NULL,
 CONSTRAINT [PK_SUBURB] PRIMARY KEY CLUSTERED 
(
	[Suburb_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO