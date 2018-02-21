CREATE TABLE [conform_riskman].[Feedback_issue_fact](
	[fd_key] [int] IDENTITY(1,1) NOT NULL,
	[batchid] [int] NULL,
    FBIssueGroup nvarchar(max),
    FBIssue nvarchar(max),
    FBIssueNotes nvarchar(max),
    FBIssueSite nvarchar(max)
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

-- PK
alter table [conform_riskman].[Feedback_issue_fact]
add constraint [pk_Feedback_issue_fact]
    primary key clustered (fd_key asc);
go


