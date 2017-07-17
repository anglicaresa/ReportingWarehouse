CREATE TABLE [extract_riskman].[FRM_DATA](
	[DataID] [int] NOT NULL,
	[BatchID] [int] NOT NULL,
	[FieldName] [varchar](50) NOT NULL,
	[ValueString] [nvarchar](max) NULL,
	[ValueDate] [datetime] NULL,
	[ValueNumber] [float] NULL,
	[ValueBit] [bit] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_FRM_DATA] PRIMARY KEY CLUSTERED 
(
	[DataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO