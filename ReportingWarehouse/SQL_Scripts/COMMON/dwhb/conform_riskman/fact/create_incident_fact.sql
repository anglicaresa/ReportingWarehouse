create table [conform_riskman].[incident_fact] (
	[incident_key] int identity(1,1) not null,
	[id] int not null,
	[base_id] int not null,
	[display_id] int not null,
	[person_key] int not null,
	[portfolio_key] int not null,
	[service_stream_key] int not null,
	[program_key] int not null,
	[closed_date_key] int not null,
	[incident_date_key] int not null,
	[notified_date_key] int not null,
	[deleted_date_key] int not null,
	[investigation_initiated_date_key] int not null,
	[investigation_completed_date_key] int not null,
	[incident_time] date,
	[age] int,
	[severity] varchar(20),
	[status] varchar(20),
	[location] varchar(50),
	[area_room] varchar(50),
	[incident_involved] varchar(50),
	[deceased] varchar(3),
	[coroner_notified] varchar(3),
	[autopsy] varchar(3),
	[next_of_kin_notified] varchar(3),
	[notification_reason] varchar(20),
	[transfer_location] varchar(20),
	[employee_site] varchar(50),
	[nature_of_injury] varchar(50),
	[summary] varchar(255),
	[lti_incurred] varchar(3),
	[investigation_initiated] varchar(3),
	[safeworksa_notified] varchar(3),
	[staff_injury] varchar(3),
	[preventative_corrective_action_required] varchar(3),
	[police_notified] varchar(3),
	[fire_brigade_notified] varchar(3),
	[ambulance__notified] varchar(3),
	[human_services_notified] varchar(3),
	[health_sa_notified] varchar(3),
	[crisis_intervention_notified] varchar(3),
	[carl_notified] varchar(3),
	[ag_notified] varchar(3),
	[housing_regulator_notified] varchar(3),
	[funder_notified] varchar(3),
	[parent_guardian_notified] varchar(3),
	[detail] varchar(255),
	[cust_service] varchar(100),
	[customer_site] varchar(200)
);
go
-- PK
alter table [conform_riskman].[incident_fact]
add constraint [pk_incident_fact]
    primary key clustered ([incident_key] asc);
go

-- FK person_dim
alter table [conform_riskman].[incident_fact]
add constraint [fk_incident_fact_person_key]
    foreign key ([person_key])
    references [conform_riskman].[person_dim]
        ([person_key])
    on delete no action on update no action;
go

-- FK portfolio
alter table [conform_riskman].[incident_fact]
add constraint [fk_incident_fact_portfolio_key]
    foreign key ([portfolio_key])
    references [conform_riskman].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- FK service stream
alter table [conform_riskman].[incident_fact]
add constraint [fk_incident_fact_service_stream_key]
    foreign key ([service_stream_key])
    references [conform_riskman].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- FK program
alter table [conform_riskman].[incident_fact]
add constraint [fk_incident_fact_program_key]
    foreign key ([program_key])
    references [conform_riskman].[program_dim]
        ([program_key])
    on delete no action on update no action;
go
-- FK date closed
alter table [conform_riskman].[incident_fact]
add constraint [fk_incident_fact_closed_date_key]
    foreign key ([closed_date_key])
    references [conform_riskman].[date_dim]
        ([date_key])
    on delete no action on update no action;
go
-- FK incident date
alter table [conform_riskman].[incident_fact]
add constraint [fk_incident_fact_incident_date_key]
    foreign key ([incident_date_key])
    references [conform_riskman].[date_dim]
        ([date_key])
    on delete no action on update no action;
go
-- FK notification date
alter table [conform_riskman].[incident_fact]
add constraint [fk_incident_fact_notified_date_key]
    foreign key ([notified_date_key])
    references [conform_riskman].[date_dim]
        ([date_key])
    on delete no action on update no action;
go
-- FK date deleted
alter table [conform_riskman].[incident_fact]
add constraint [fk_incident_fact_deleted_date_key]
    foreign key ([deleted_date_key])
    references [conform_riskman].[date_dim]
        ([date_key])
    on delete no action on update no action;
go
-- FK investigation initiated date
alter table [conform_riskman].[incident_fact]
add constraint [fk_incident_fact_investigation_initiated_date_key]
    foreign key ([investigation_initiated_date_key])
    references [conform_riskman].[date_dim]
        ([date_key])
    on delete no action on update no action;
go
-- FK investigation completed date
alter table [conform_riskman].[incident_fact]
add constraint [fk_incident_fact_investigation_completed_date_key]
    foreign key ([investigation_completed_date_key])
    references [conform_riskman].[date_dim]
        ([date_key])
    on delete no action on update no action;
go