CREATE TABLE [conform_riskman].[Feedback_Issue_Fact](
	[fd_key] [int] IDENTITY(1,1) NOT NULL,
	[Displayid] [int] NULL,
	[FBIssueId] [int] NULL,
	[FBIssueGroup] [nvarchar](max) NULL,
	[FBIssue] [nvarchar](max) NULL,
	[FBIssueNotes] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

-- PK
alter table [conform_riskman].[Feedback_issue_fact]
add constraint [pk_Feedback_issue_fact]
    primary key clustered (fd_key asc);
go


