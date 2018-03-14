CREATE TABLE [extract_riskman].[vwSF_FBIssue](
	[keydata] [varchar](200) NOT NULL,
	[RecordID] [int] NOT NULL,
	[FBIssueID] [float] NULL,
	[FBIssueGroup] [nvarchar](max) NULL,
	[FBIssue] [nvarchar](max) NULL,
	[FBIssueNotes] [nvarchar](max) NULL,
	[FBIssueSite] [nvarchar](max) NULL,
	[FBIssueLocation] [nvarchar](max) NULL,
	[FBOtherService] [nvarchar](max) NULL,
	[FBOtherSite] [nvarchar](max) NULL,
	[FBIssueWing] [nvarchar](max) NULL,
	[FBIssueProgram] [nvarchar](max) NULL,
	[FBIssueFileName] [nvarchar](max) NULL,
	[FBIssueClinicalArea] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
