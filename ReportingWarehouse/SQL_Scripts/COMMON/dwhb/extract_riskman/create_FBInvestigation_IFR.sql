CREATE TABLE [dbo].[FBInvestigation_IFR](
	[FBInvestigation_ID] [int] NOT NULL,
	[FBObjectives] [varchar](500) NULL,
	[FBResolution] [varchar](100) NULL,
	[FBExtAgency] [bit] NULL,
	[FBExtAgencyName] [varchar](100) NULL,
	[FBOutcome] [varchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[FBInvestigation_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

