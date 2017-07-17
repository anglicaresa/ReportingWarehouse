create table [conform_riskman].[incident_action_fact] (
	[incident_action_fact_key] int identity(1,1) not null,
	[incident_key] int not null,
	[action_key] int not null
);
	go

-- PK
alter table [conform_riskman].[incident_action_fact]
add constraint [pk_incident_action_fact]
    primary key clustered ([incident_action_fact_key] asc);
go

-- FK incident_fact
alter table [conform_riskman].[incident_action_fact]
add constraint [fk_incident_action_fact_incident_fact]
    foreign key ([incident_key])
    references [conform_riskman].[incident_fact]
        ([incident_key])
    on delete no action on update no action;
go


-- FK action_dim
alter table [conform_riskman].[incident_action_fact]
add constraint [fk_incident_action_fact_action_dim]
    foreign key ([action_key])
    references [conform_riskman].[action_dim]
        ([action_key])
    on delete no action on update no action;
go