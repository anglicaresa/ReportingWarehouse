-- creating table 'employee_leave_snapshot_fact'
create table [hris].[employee_leave_snapshot_fact] (
    [employee_leave_snapshot_key] int not null,
	[date_key] int not null,
	[portfolio_key] int not null,
	[service_stream_key] int not null,
	[leave_type_key] int not null,
	[leave_taken_permanent_ft] decimal(6,2) null,
	[leave_taken_permanent_pt] decimal(6,2) null,
	[leave_taken_contract_ft] decimal(6,2) null,
	[leave_taken_contract_pt] decimal(6,2) null,
	[leave_taken_casual] decimal(6,2) null,
	[leave_booked_permanent_ft] decimal(6,2) null,
	[leave_booked_permanent_pt] decimal(6,2) null,
	[leave_booked_contract_ft] decimal(6,2) null,
	[leave_booked_contract_pt] decimal(6,2) null,
	[leave_booked_casual] decimal(6,2) null,
	[employee_count] int null 
);
go

-- creating primary key 
alter table [hris].[employee_leave_snapshot_fact]
add constraint [pk_employee_leave_snapshot_key]
    primary key clustered ([employee_leave_snapshot_key] asc);
go

-- FK date_key
alter table [hris].[employee_leave_snapshot_fact]
add constraint [fk_employee_leave_snapshot_fact_date_key]
    foreign key ([date_key])
    references [hris].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- FK [portfolio_key]
alter table [hris].[employee_leave_snapshot_fact]
add constraint [fk_employee_leave_snapshot_fact_portfolio_key]
    foreign key ([portfolio_key])
    references [hris].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- FK [service_stream_key]
alter table [hris].[employee_leave_snapshot_fact]
add constraint [fk_employee_leave_snapshot_fact_service_stream_key]
    foreign key ([service_stream_key])
    references [hris].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- FK [leave_type_key]
alter table [hris].[employee_leave_snapshot_fact]
add constraint [fk_employee_leave_snapshot_fact_leave_type_key]
    foreign key (leave_type_key)
    references [hris].[leave_type_dim]
        ([leave_type_key])
    on delete no action on update no action;
go