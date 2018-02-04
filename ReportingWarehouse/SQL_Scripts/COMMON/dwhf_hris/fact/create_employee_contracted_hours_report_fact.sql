use DWHF;
-- creating table 'employee_contracted_hours_report_fact'
create table [hris].[employee_contracted_hours_report_fact] (
    [employee_contracted_hours_report_fact_key] int not null,
    [portfolio_key] int  not null,
    [service_stream_key] int  not null,
    [program_key] int  not null,
    [position_key] int  not null,
    [employee_key] int  not null,
    [pay_period_date_key] int null,
    [work_pattern_hours] decimal(10,4) null,
    [payment_hours] decimal(10,4) null
);
go

-- creating primary key on [employee_contracted_hours_report_fact_key] in table 'employee_contracted_hours_report_fact'
alter table [hris].[employee_contracted_hours_report_fact]
add constraint [pk_employee_contracted_hours_report_fact]
    primary key clustered ([employee_contracted_hours_report_fact_key] asc);
go

-- creating foreign key on [portfolio_key] in table 'employee_contracted_hours_report_fact'
alter table [hris].[employee_contracted_hours_report_fact]
add constraint [fk_employee_contracted_hours_report_fact_portfolio_key]
    foreign key (portfolio_key)
    references [hris].[portfolio_dim]
        (portfolio_key)
    on delete no action on update no action;
go

-- creating foreign key on [service_stream_key] in table 'employee_contracted_hours_report_fact'
alter table [hris].[employee_contracted_hours_report_fact]
add constraint [fk_employee_contracted_hours_report_fact_service_stream_key]
    foreign key (service_stream_key)
    references [hris].[service_stream_dim]
        (service_stream_key)
    on delete no action on update no action;
go

-- creating foreign key on [program_key] in table 'employee_contracted_hours_report_fact'
alter table [hris].[employee_contracted_hours_report_fact]
add constraint [fk_employee_contracted_hours_report_fact_program_key]
    foreign key (program_key)
    references [hris].[program_dim]
        (program_key)
    on delete no action on update no action;
go

-- creating foreign key on [[position_key]] in table 'employee_contracted_hours_report_fact'
alter table [hris].[employee_contracted_hours_report_fact]
add constraint [fk_employee_contracted_hours_report_fact_position_key]
    foreign key (position_key)
    references [hris].[position_dim]
        (position_key)
    on delete no action on update no action;
go

-- creating foreign key on [[program_key]] in table 'employee_contracted_hours_report_fact'
alter table [hris].[employee_contracted_hours_report_fact]
add constraint [fk_employee_contracted_hours_report_fact_employee_key]
    foreign key (employee_key)
    references [hris].[employee_dim]
        (employee_key)
    on delete no action on update no action;
go
-- FK for pay_period_date_key
alter table [hris].[employee_contracted_hours_report_fact]
add constraint [fk_employee_contracted_hours_report_fact_pay_period_date_key]
    foreign key (pay_period_date_key)
    references [hris].[date_dim]
        (date_key)
    on delete no action on update no action;
go