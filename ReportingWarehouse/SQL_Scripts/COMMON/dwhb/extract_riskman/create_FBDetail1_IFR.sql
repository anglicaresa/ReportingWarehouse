CREATE TABLE [dbo].[FBDetail1_IFR](
	[FBDetail1_ID] [int] NOT NULL,
	[FBResultedInQIANotes] [nvarchar](max) NULL,
	[FBTestField] [varchar](250) NULL,
	[FBIsClosed] [bit] NULL,
	[FBStaffNames] [varchar](200) NULL,
	[OtherService] [varchar](100) NULL,
	[OtherSite] [varchar](100) NULL,
	[OtherAddr] [varchar](100) NULL,
	[FBWing] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[FBDetail1_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
