CREATE TABLE [extract_comcare].[State](
	[State_Code] [tinyint] NOT NULL,
	[Description] [varchar](60) NOT NULL,
	[State_Abbreviation] [varchar](30) NOT NULL,
	[ISO_3Alpha_Country_Code] [varchar](3) NULL,
 CONSTRAINT [PK_STATE] PRIMARY KEY CLUSTERED 
(
	[State_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO