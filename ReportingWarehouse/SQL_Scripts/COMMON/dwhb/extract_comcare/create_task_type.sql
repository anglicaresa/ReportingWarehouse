CREATE TABLE extract_comcare.[Task_Type](
	[Task_Type_Code] [char](8) NOT NULL,
	[Service_Type_Code] [char](4) NOT NULL,
	[Display_Sequence] [tinyint] NULL,
	[Description] [varchar](50) NOT NULL,
	[Effective_Date] [datetime] NOT NULL,
	[Withdrawn_Date] [datetime] NULL,
	[Visit_Indicator] [char](1) NULL,
	[Funding_Required] [char](1) NULL,
	[Short_Description] [varchar](10) NULL,
	[Penalty_Rate_Apply] [char](1) NULL,
	[Creation_Date] [datetime] NULL,
	[Creator_User_Name] [varchar](20) NULL,
	[Last_Modified_Date] [datetime] NULL,
	[Last_Modified_User_Name] [varchar](20) NULL,
	[Valid_Interruption] [bit] NULL,
	[Include_in_Claim] [bit] NULL,
	[Group_Activity_Task_Ind] [bit] NULL,
	[Preferred_Provider_Class_Code] [char](6) NULL,
	[Out_Of_Home] [bit] NULL,
	[Transport_Ind] [bit] NULL,
	[Unit_Description] [varchar](30) NULL,
	[Allow_Optional_Travel] [bit] NULL,
 CONSTRAINT [PK_TASK_TYPE] PRIMARY KEY CLUSTERED 
(
	[Task_Type_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO