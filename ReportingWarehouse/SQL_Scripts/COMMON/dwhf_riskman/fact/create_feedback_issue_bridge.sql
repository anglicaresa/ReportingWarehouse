CREATE TABLE [riskman].[Feedback_issue_Bridge](
	[fb_key] [int]  NOT NULL,
	[id] [int] NULL,
	[batchid] [int] NULL
) ON [PRIMARY]

GO
-- PK
alter table [riskman].[Feedback_issue_Bridge]
add constraint [pk_Feedbak_issue_Bridge]
    primary key clustered (fb_key asc);
go

