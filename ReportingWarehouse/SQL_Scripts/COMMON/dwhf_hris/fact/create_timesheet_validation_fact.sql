create table [hris].[timesheet_validation_fact] (
    [timesheet_validation_key] int not null,
	[portfolio_key] int  not null,
	[service_stream_key] int  not null,
	[program_key] int  not null,
    [position_key] int  not null,
	[employee_key] int  not null,
	[manager_key] int  not null,
	[manager_position_key] int  not null,
    [activity_date_key] int not null,
	[validation_type] varchar(50),
	[activity1_start_time] time not null,
	[activity1_end_time] time not null,
	[activity1_cost_centre] varchar(10),
	[activity1_activity_code] varchar(10),
	[activity1_activity_desc] varchar(50),
	[activity2_start_time] time,
	[activity2_end_time] time,
	[activity2_cost_centre] varchar(10),
	[activity2_activity_code] varchar(10),
	[activity2_activity_desc] varchar(50)
 );
go

-- PK
alter table [hris].[timesheet_validation_fact]
add constraint [pk_timesheet_validation_fact_key]
    primary key clustered ([timesheet_validation_key] asc);
go

-- FK portfolio
alter table [hris].[timesheet_validation_fact]
add constraint [fk_timesheet_validation_portfolio_key]
    foreign key ([portfolio_key])
    references [hris].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- FK service stream
alter table [hris].[timesheet_validation_fact]
add constraint [fk_timesheet_validation_service_stream_key]
    foreign key ([service_stream_key])
    references [hris].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- FK program
alter table [hris].[timesheet_validation_fact]
add constraint [fk_timesheet_validation_program_key]
    foreign key ([program_key])
    references [hris].[program_dim]
        ([program_key])
    on delete no action on update no action;
go

-- FK employee position
alter table [hris].[timesheet_validation_fact]
add constraint [fk_timesheet_validation_position_key]
    foreign key ([position_key])
    references [hris].[position_dim]
        ([position_key])
    on delete no action on update no action;
go

-- FK employee
alter table [hris].[timesheet_validation_fact]
add constraint [fk_timesheet_validation_employee_key]
    foreign key ([employee_key])
    references [hris].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- FK manager
alter table [hris].[timesheet_validation_fact]
add constraint [fk_timesheet_validation_manager_key]
    foreign key ([manager_key])
    references [hris].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- FK manager position
alter table [hris].[timesheet_validation_fact]
add constraint [fk_timesheet_validation_manager_position_key]
    foreign key ([manager_position_key])
    references [hris].[position_dim]
        ([position_key])
    on delete no action on update no action;
go

-- FK activity date
alter table [hris].[timesheet_validation_fact]
add constraint [fk_timesheet_validation_activity_date_key]
    foreign key ([activity_date_key])
    references [hris].[date_dim]
        ([date_key])
    on delete no action on update no action;
go


    
    