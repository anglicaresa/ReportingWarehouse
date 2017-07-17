CREATE TABLE extract_comcare.[Indirect_Activity_Type](
	[Indirect_Activity_Type_Code] [tinyint] NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Short_Description] [varchar](10) NULL,
	[Internal_Task] [bit] NULL,
	[Effective_Date_From] [datetime] NULL,
	[Effective_Date_To] [datetime] NULL,
	[Creation_Date] [datetime] NULL,
	[Creator_User_Name] [varchar](20) NULL,
	[Last_Modified_Date] [datetime] NULL,
	[Last_Modified_User_Name] [varchar](20) NULL,
 CONSTRAINT [PK_INDIRECT_ACTIVITY_TYPE] PRIMARY KEY CLUSTERED 
(
	[Indirect_Activity_Type_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO