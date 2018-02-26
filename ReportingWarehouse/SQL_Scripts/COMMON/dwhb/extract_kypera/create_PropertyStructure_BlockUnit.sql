CREATE TABLE [extract_kypera].[PropertyStructure_BlockUnit](
	[Company] [int] NOT NULL,
	[Block] [varchar](13) NOT NULL,
	[Unit] [varchar](13) NOT NULL,
	[Version] [varchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[LastUpdateOn] [datetime] NULL,
	[LastUpdateBy] [int] NULL
) ON [PRIMARY]

GO
