create table [conform_riskman].[incident_history_fact] (
	[incident_history_key] int identity(1,1) not null,
	[employee_key] int not null,
	[incident_key] int not null,
	[manager_key] int not null,
	[entered_date] datetime


);
go
-- PK
alter table [conform_riskman].[incident_history_fact]
add constraint [pk_incident_history_fact]
    primary key clustered ([incident_history_key] asc);
go

-- FK employee_dim
alter table [conform_riskman].[incident_history_fact]
add constraint [fk_incident_fact_employee_key]
    foreign key ([employee_key])
    references [conform_riskman].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- FK employee_dim
alter table [conform_riskman].[incident_history_fact]
add constraint [fk_incident_fact_manager_key]
    foreign key ([manager_key])
    references [conform_riskman].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- FK incident_fact
alter table [conform_riskman].[incident_history_fact]
add constraint [fk_incident_fact_incident_key]
    foreign key ([incident_key])
    references [conform_riskman].[incident_fact]
        ([incident_key])
    on delete no action on update no action;
go