CREATE TABLE [extract_comcare].[PT_Program](
	[Program_ID] [numeric](18, 0) NOT NULL,
	[Description] [varchar](255) NOT NULL,
	[Current_Period] [tinyint] NULL,
	[No_Future_Periods_to_Generate] [tinyint] NULL,
	[Creator_User_Name] [varchar](20) NOT NULL,
	[Creation_Date] [datetime] NOT NULL,
	[Last_Modified_User_Name] [varchar](20) NULL,
	[Last_Modified_Date] [datetime] NULL,
	[Current_Year] [smallint] NULL,
 CONSTRAINT [PK_PT_PROGRAM] PRIMARY KEY NONCLUSTERED 
(
	[Program_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO