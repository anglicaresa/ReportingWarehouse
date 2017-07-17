-- creating table 'employee_profile_fact'
create table [hris].[employee_profile_fact] (
    [employee_profile_key] int not null,
    [portfolio_key] int  not null,
    [service_stream_key] int  not null,
    [program_key] int  not null,
    [position_key] int  not null,
    [employee_key] int  not null,
	[manager_key] int  not null,
	[manager_position_key]  int not null,
	[recruitment_date_key] int  not null,
	[service_date_key] int not null,
	[employee_age] int null,
	[service_years] decimal(5,2) null,
	[average_sick_leave] decimal(6,2) null,
	[permanent_ft_count] int null, 
	[permanent_pt_count] int null, 
	[contract_ft_count] int null, 
	[contract_pt_count] int null, 
	[casual_count] int null,
	[manager_count] int null,
	[non_manager_count] int null,
	[total_count] int null
);
go

-- creating primary key on [employee_profile_key] in table 'employee_profile_fact'
alter table [hris].[employee_profile_fact]
add constraint [pk_employee_profile_fact]
    primary key clustered ([employee_profile_key] asc);
go

-- creating foreign key on [[portfolio_key]] in table 'employee_profile_fact'
alter table [hris].[employee_profile_fact]
add constraint [fk_employee_profile_fact_portfolio_key]
    foreign key (portfolio_key)
    references [hris].[portfolio_dim]
        (portfolio_key)
    on delete no action on update no action;
go

-- creating foreign key on [[service_stream_key]] in table 'employee_profile_fact'
alter table [hris].[employee_profile_fact]
add constraint [fk_employee_profile_fact_service_stream_key]
    foreign key (service_stream_key)
    references [hris].[service_stream_dim]
        (service_stream_key)
    on delete no action on update no action;
go

-- creating foreign key on [[program_key]] in table 'employee_profile_fact'
alter table [hris].[employee_profile_fact]
add constraint [fk_employee_profile_fact_program_key]
    foreign key (program_key)
    references [hris].[program_dim]
        (program_key)
    on delete no action on update no action;
go

-- creating foreign key on [[position_key]] in table 'employee_profile_fact'
alter table [hris].[employee_profile_fact]
add constraint [fk_employee_profile_fact_position_key]
    foreign key (position_key)
    references [hris].[position_dim]
        (position_key)
    on delete no action on update no action;
go

-- creating foreign key on [[program_key]] in table 'employee_profile_fact'
alter table [hris].[employee_profile_fact]
add constraint [fk_employee_profile_fact_employee_key]
    foreign key (employee_key)
    references [hris].[employee_dim]
        (employee_key)
    on delete no action on update no action;
go

-- creating foreign key on [[manager_key]] in table 'employee_profile_fact'
alter table [hris].[employee_profile_fact]
add constraint [fk_employee_profile_fact_manager_key]
    foreign key (manager_key)
    references [hris].[employee_dim]
        (employee_key)
    on delete no action on update no action;
go

-- creating foreign key on [[manager_position_key]] in table 'employee_profile_fact'
alter table [hris].[employee_profile_fact]
add constraint [fk_employee_profile_fact_manager_position_key]
    foreign key (manager_position_key)
    references [hris].[position_dim]
        (position_key)
    on delete no action on update no action;
go

-- FK for recruitment_date_key
alter table [hris].[employee_profile_fact]
add constraint [fk_employee_profile_fact_recruitment_date_key]
    foreign key (recruitment_date_key)
    references [hris].[date_dim]
        (date_key)
    on delete no action on update no action;
go

-- FK for service_date_key
alter table [hris].[employee_profile_fact]
add constraint [fk_employee_profile_fact_service_date_key]
    foreign key (service_date_key)
    references [hris].[date_dim]
        (date_key)
    on delete no action on update no action;
go