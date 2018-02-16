CREATE TABLE [conform_riskman].[Feedback_Fact](
	[feedback_key] [int] IDENTITY(1,1) NOT NULL,
	[ID] [int] NULL,
	[Base_id] [int] NULL,
	[DisplayID] [int] NULL,
	[IncidentInvolved] [varchar](50) NULL,
	[person_key] [int] NULL,
	[portfolio_key] [int] NULL,
	[service_stream_key] [int] NULL,
	[program_key] [int] NULL,
	[closed_date_key] [int] NULL,
	[incident_date_key] [int] NULL,
	[notified_date_key] [int] NULL,
	[age] [int] NULL,
	[severity] [varchar](255) NULL,
	[status] [varchar](50) NULL,
	[location] [varchar](50) NULL,
	[detail] [nvarchar](max) NULL,
	[AdditionalRef] [varchar](8000) NULL,
	[Site] [varchar](100) NULL,
	[Incident_Location] [varchar](50) NULL,
	[Outcome] [varchar](255) NULL,
	[InvestigationFinding] [varchar](5000) NULL,
	[Comment] [varchar](8000) NULL,
	[FBModeRecieved] [varchar](255) NULL,
	[FBRelateClient] [varchar](3) NULL,
	[FBRelateStaff] [varchar](3) NULL,
	[FBAssocInc] [varchar](3) NULL,
	[FBCompStatus] [varchar](50) NULL,
	[FBCompStatusOther] [varchar](200) NULL,
	[FBCompAnon] [varchar](3) NULL,
	[FBCompRelationship] [varchar](50) NULL,
	[FBAckDate] [datetime] NULL,
	[FBFirstFormalDate] [datetime] NULL,
	[FBObjectives] [varchar](500) NULL,
	[FBExtAgency] [varchar](3) NULL,
	[FBExtAgencyName] [varchar](100) NULL,
	[FBIsClosed] [varchar](3) NULL,
	[FBOutcome] [varchar](4000) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
-- PK
alter table [conform_riskman].[Feedback_Fact]
add constraint [pk_Feedback_Fact]
    primary key clustered ([feedback_key] asc);
go

-- FK person_dim
alter table [conform_riskman].[Feedback_Fact]
add constraint [fk_feedback_key_person_key]
    foreign key ([person_key])
    references [conform_riskman].[person_dim]
        ([person_key])
    on delete no action on update no action;
go

-- FK portfolio
alter table [conform_riskman].[Feedback_Fact]
add constraint [fk_feedback_key_portfolio_key]
    foreign key ([portfolio_key])
    references [conform_riskman].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- FK service stream
alter table [conform_riskman].[Feedback_Fact]
add constraint [fk_feedback_key_service_stream_key]
    foreign key ([service_stream_key])
    references [conform_riskman].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- FK program
alter table [conform_riskman].[Feedback_Fact]
add constraint [fk_feedback_key_program_key]
    foreign key ([program_key])
    references [conform_riskman].[program_dim]
        ([program_key])
    on delete no action on update no action;
go
-- FK date closed
alter table [conform_riskman].[Feedback_Fact]
add constraint [fk_feedback_key_closed_date_key]
    foreign key ([closed_date_key])
    references [conform_riskman].[date_dim]
        ([date_key])
    on delete no action on update no action;
go
-- FK incident date
alter table [conform_riskman].[Feedback_Fact]
add constraint [fk_feedback_key_incident_date_key]
    foreign key ([incident_date_key])
    references [conform_riskman].[date_dim]
        ([date_key])
    on delete no action on update no action;
go
-- FK notification date
alter table [conform_riskman].[Feedback_Fact]
add constraint [fk_feedback_key_notified_date_key]
    foreign key ([notified_date_key])
    references [conform_riskman].[date_dim]
        ([date_key])
    on delete no action on update no action;
go