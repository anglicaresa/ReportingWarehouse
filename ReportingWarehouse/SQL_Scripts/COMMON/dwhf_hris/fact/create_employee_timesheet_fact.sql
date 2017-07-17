-- creating table 'employee_timesheet_fact'
create table [hris].[employee_timesheet_fact] (
  [employee_timesheet_key] int  not null,
[portfolio_key] int  not null,
[service_stream_key] int  not null,
[program_key] int  not null,
[position_key] int  not null,
[employee_key] int  not null,
[manager_key] int  not null,
[manager_position_key] int  not null,
[timesheet_entry_date_key] int  not null,
[account_key] int  not null,
[pay_period_end_date_key] int  not null,
[payment_type_key] int  not null,
[authoriser_key] int  not null,
[entry_type] varchar(40) null,
[authorised_flag] varchar(3) null,
[clock_in_time] time null,
[clock_out_time] time null,
[units] decimal(18,6) null,
[meal_break] varchar(20) null,
[comments] varchar(500) null,
[count] int null,
[status] varchar(20) null
  
);
go
-- creating primary key on [accreditation_key] in table 'accreditation_dim'
alter table [hris].[employee_timesheet_fact]
add constraint [pk_employee_timesheet_fact]
    primary key clustered ([employee_timesheet_key] asc);
go

-- FK for portfolio_key
alter table [hris].employee_timesheet_fact
add constraint [fk_employee_timesheet_fact_portfolio_key]
    foreign key ([portfolio_key])
    references [hris].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- FK for service_stream_key
alter table [hris].employee_timesheet_fact
add constraint [fk_employee_timesheet_fact_service_stream_key]
    foreign key ([service_stream_key])
    references [hris].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- FK for program_key
alter table [hris].employee_timesheet_fact
add constraint [fk_employee_timesheet_fact_program_key]
    foreign key ([program_key])
    references [hris].[program_dim]
        ([program_key])
    on delete no action on update no action;
go

-- FK for position_key
alter table [hris].employee_timesheet_fact
add constraint [fk_employee_timesheet_fact_position_key]
    foreign key ([position_key])
    references [hris].[position_dim]
        ([position_key])
    on delete no action on update no action;
go

-- FK for employee_key
alter table [hris].employee_timesheet_fact
add constraint [fk_employee_timesheet_fact_employee_key]
    foreign key ([employee_key])
    references [hris].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- FK for manager_key
alter table [hris].employee_timesheet_fact
add constraint [fk_employee_timesheet_fact_manager_key]
    foreign key ([manager_key])
    references [hris].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- FK for manager_position_key
alter table [hris].employee_timesheet_fact
add constraint [fk_employee_timesheet_fact_manager_position_key]
    foreign key ([manager_position_key])
    references [hris].[position_dim]
        ([position_key])
    on delete no action on update no action;
go


-- FK for [timesheet_entry_date_key]
alter table [hris].employee_timesheet_fact
add constraint [fk_employee_timesheet_fact_timesheet_entry_date_key]
    foreign key ([timesheet_entry_date_key])
    references [hris].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- FK for [account_key]
alter table [hris].employee_timesheet_fact
add constraint [fk_employee_timesheet_fact_account_key]
    foreign key ([account_key])
    references [hris].[account_dim]
        ([account_key])
    on delete no action on update no action;
go

-- FK for [pay_period_end_date_key]
alter table [hris].employee_timesheet_fact
add constraint [fk_employee_timesheet_fact_pay_period_end_date_key]
    foreign key ([pay_period_end_date_key])
    references [hris].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- FK for [payment_type_key]
alter table [hris].employee_timesheet_fact
add constraint [fk_employee_timesheet_fact_payment_type_key]
    foreign key ([payment_type_key])
    references [hris].[payment_type_dim]
        ([payment_type_key])
    on delete no action on update no action;
go

-- FK for authoriser_key
alter table [hris].employee_timesheet_fact
add constraint [fk_employee_timesheet_fact_authoriser_key]
    foreign key ([authoriser_key])
    references [hris].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go