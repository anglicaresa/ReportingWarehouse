create table [hris].[work_pattern_fact] (
    [work_pattern_key] int not null,
    [portfolio_key] int  not null,
    [service_stream_key] int  not null,
    [program_key] int  not null,
    [position_key] int  not null,
    [employee_key] int  not null,
	[manager_key] int  not null,
	[day_no] int null,
	[hours] decimal(4,2) null,
	[in_time] datetime null,
	[out_time] datetime null,
	[roster_type] varchar(9) null,
	[roster_start_date_key] int null
	);
go

-- PK
alter table [hris].[work_pattern_fact]
add constraint [pk_work_pattern_fact]
    primary key clustered ([work_pattern_key] asc);
go


-- FK portfolio_dim
alter table [hris].[work_pattern_fact]
add constraint [fk_work_pattern_fact_portfolio_key]
    foreign key (portfolio_key)
    references [hris].[portfolio_dim]
        (portfolio_key)
    on delete no action on update no action;
go

-- FK service_stream_dim
alter table [hris].[work_pattern_fact]
add constraint [fk_work_pattern_fact_service_stream_key]
    foreign key (service_stream_key)
    references [hris].[service_stream_dim]
        (service_stream_key)
    on delete no action on update no action;
go

-- FK program_dim
alter table [hris].[work_pattern_fact]
add constraint [fk_work_pattern_fact_program_key]
    foreign key (program_key)
    references [hris].[program_dim]
        (program_key)
    on delete no action on update no action;
go

-- FK position_dim
alter table [hris].[work_pattern_fact]
add constraint [fk_work_pattern_fact_position_key]
    foreign key (position_key)
    references [hris].[position_dim]
        (position_key)
    on delete no action on update no action;
go

-- FK employee_dim
alter table [hris].[work_pattern_fact]
add constraint [fk_work_pattern_fact_employee_key]
    foreign key (employee_key)
    references [hris].[employee_dim]
        (employee_key)
    on delete no action on update no action;
go

-- FK manager_dim
alter table [hris].[work_pattern_fact]
add constraint [fk_work_pattern_fact_manager_key]
    foreign key (manager_key)
    references [hris].[employee_dim]
        (employee_key)
    on delete no action on update no action;
go