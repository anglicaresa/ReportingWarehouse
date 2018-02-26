CREATE TABLE [extract_comcare].[Funding_Program](
	[Funding_Prog_Code] [smallint] NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Requires_Approval_No_Ind] [bit] NOT NULL,
	[Invoice_Required_Ind] [bit] NOT NULL,
	[From_Date] [datetime] NOT NULL,
	[To_Date] [datetime] NULL,
	[Creation_Date] [datetime] NOT NULL,
	[Creator_User_Name] [varchar](20) NOT NULL,
	[Last_Modified_Date] [datetime] NULL,
	[Last_Modified_User_Name] [varchar](20) NULL
) ON [PRIMARY]

GO
