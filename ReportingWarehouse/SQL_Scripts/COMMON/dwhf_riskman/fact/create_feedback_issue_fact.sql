CREATE TABLE [riskman].[Feedback_Issue_Fact](
	[fd_key] [int] NULL,
	[Displayid] [int] NULL,
	[FBIssueId] [int] NULL,
	[FBIssueGroup] [nvarchar](max) NULL,
	[FBIssue] [nvarchar](max) NULL,
	[FBIssueNotes] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


-- PK
alter table [riskman].[Feedback_issue_fact]
add constraint [pk_Feedback_issue_fact]
    primary key clustered (fd_key asc);
go


