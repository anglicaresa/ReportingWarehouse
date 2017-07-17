CREATE TABLE [extract_riskman].[IncidentClassificationsIFR](
	[ID] [int] NULL,
	[Supergroup] [nvarchar](150) NULL,
	[IncidentClass] [nvarchar](500) NULL,
	[Definitions] [nvarchar](500) NULL,
	[SortSeq] [smallint] NULL,
	[ClassID] [int] NULL,
	[DefinitionID] [int] NULL,
	[autonum] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[autonum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO