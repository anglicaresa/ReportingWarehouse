create table [conform_riskman].[incident_type_fact] (
	[incident_type_fact_key] int identity(1,1) not null,
	[incident_key] int not null,
	[incident_type_key] int not null
);
	go

-- PK
alter table [conform_riskman].[incident_type_fact]
add constraint [pk_incident_type_fact]
    primary key clustered ([incident_type_fact_key] asc);
go

-- FK incident_fact
alter table [conform_riskman].[incident_type_fact]
add constraint [fk_incident_type_fact_incident_fact]
    foreign key ([incident_key])
    references [conform_riskman].[incident_fact]
        ([incident_key])
    on delete no action on update no action;
go


-- FK incident_type_dim
alter table [conform_riskman].[incident_type_fact]
add constraint [fk_incident_type_fact_incident_type_dim]
    foreign key ([incident_type_key])
    references [conform_riskman].[incident_type_dim]
        ([incident_type_key])
    on delete no action on update no action;
go