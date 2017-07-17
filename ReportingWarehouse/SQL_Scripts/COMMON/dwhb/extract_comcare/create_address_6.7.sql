CREATE TABLE [extract_comcare].[Address](
	[Address_ID] [numeric](18, 0) NOT NULL,
	[Abode_Type_Code] [smallint] NULL,
	[Post_Code] [varchar](10) NULL,
	[Suburb_ID] [numeric](18, 0) NOT NULL,
	[Building_Name] [varchar](50) NULL,
	[Dwelling_Number] [varchar](20) NULL,
	[Street_or_PO_Box] [varchar](50) NULL,
	[International_Address] [varchar](100) NULL,
	[Access_Comments] [varchar](255) NULL,
	[Nearest_Cross_Street] [varchar](60) NULL,
	[Creation_Date] [datetime] NOT NULL,
	[Creator_User_Name] [varchar](20) NOT NULL,
	[Last_Modified_Date] [datetime] NULL,
	[Last_Modified_User_Name] [varchar](20) NULL,
	[Org_Address_ID] [numeric](18, 0) NULL,
	[Location_Detail] [varchar](100) NULL,
	[DPID] [varchar](8) NULL,
	[Bar_Code] [varchar](37) NULL,
	[Attachment_ID] [int] NULL,
	[Att_File_Name] [varchar](15) NULL,
	[xxxLat] [decimal](9, 6) NULL,
	[xxxLng] [decimal](9, 6) NULL,
	[Accuracy] [tinyint] NULL,
	[xxxGMAP_Address] [varchar](150) NULL,
	[xxxAddress_Type] [varchar](25) NULL,
	[xxxLocation_Type] [varchar](25) NULL,
	[xxxGMAP_Address_ID] [int] NULL,
	[GM_Address_ID] [int] NULL,
	[Additional_Addr_Line] [varchar](100) NULL,
	[CRM_Reference_1] [varchar](255) NULL,
 CONSTRAINT [PK_ADDRESS] PRIMARY KEY CLUSTERED 
(
	[Address_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO