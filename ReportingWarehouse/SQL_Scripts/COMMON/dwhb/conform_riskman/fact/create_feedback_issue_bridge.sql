CREATE TABLE [conform_riskman].[Feedback_issue_Bridge](
	[fb_key] [int] IDENTITY(1,1) NOT NULL,
	[id] [int] NULL,
	[batchid] [int] NULL
) ON [PRIMARY]

GO
-- PK
alter table [conform_riskman].[Feedback_issue_Bridge]
add constraint [pk_Feedback_issue_Bridge]
    primary key clustered (fb_key asc);
go

