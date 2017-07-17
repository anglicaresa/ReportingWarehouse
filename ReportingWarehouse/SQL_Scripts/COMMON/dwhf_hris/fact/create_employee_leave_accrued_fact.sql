-- creating table 'employee_leave_accrued_fact'
create table [hris].[employee_leave_accrued_fact] (
    [employee_leave_accrued_key] int not null,
    [employee_key] int  not null,
	[accrued_date_key] int not null,
    [portfolio_key] int  not null,
    [service_stream_key] int  not null,
    [program_key] int  not null,
    [position_key] int  not null,
    [leave_type_key] int  not null,
	[manager_key] int not null,
	[manager_position_key] int not null,
	[accrual_hours] decimal(14,4) null,
    [accrual_prorata] decimal(14,4) null,
	[accrual_taken] decimal(14,4) null,
	[number_of_accruals] int

    
);
go

-- PK
alter table [hris].[employee_leave_accrued_fact]
add constraint [pk_employee_leave_accrued_fact]
    primary key clustered ([employee_leave_accrued_key] asc);
go

-- FK employee
alter table [hris].[employee_leave_accrued_fact]
add constraint [fk_employee_leave_accrued_fact_employee_key]
    foreign key ([employee_key])
    references [hris].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- FK accrued_date
alter table [hris].[employee_leave_accrued_fact]
add constraint [fk_employee_leave_accrued_fact_accrued_date_key]
    foreign key ([accrued_date_key])
    references [hris].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- FK portfolio
alter table [hris].[employee_leave_accrued_fact]
add constraint [fk_employee_leave_accrued_fact_portfolio_key]
    foreign key ([portfolio_key])
    references [hris].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- FK service_stream
alter table [hris].[employee_leave_accrued_fact]
add constraint [fk_employee_leave_accrued_fact_service_stream_key]
    foreign key ([service_stream_key])
    references [hris].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- FK program
alter table [hris].[employee_leave_accrued_fact]
add constraint [fk_employee_leave_accrued_fact_program_key]
    foreign key ([program_key])
    references [hris].[program_dim]
        ([program_key])
    on delete no action on update no action;
go

-- FK position
alter table [hris].[employee_leave_accrued_fact]
add constraint [fk_employee_leave_accrued_fact_position_key]
    foreign key ([position_key])
    references [hris].[position_dim]
        ([position_key])
    on delete no action on update no action;
go

-- FK leave_type
alter table [hris].[employee_leave_accrued_fact]
add constraint [fk_employee_leave_accrued_fact_leave_type_key]
    foreign key ([leave_type_key])
    references [hris].[leave_type_dim]
        ([leave_type_key])
    on delete no action on update no action;
go

-- FK manager
alter table [hris].[employee_leave_accrued_fact]
add constraint [fk_employee_leave_accrued_fact_manager_key]
    foreign key ([manager_key])
    references [hris].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- FK manager_position
alter table [hris].[employee_leave_accrued_fact]
add constraint [fk_employee_leave_accrued_fact_manager_position_key]
    foreign key ([manager_position_key])
    references [hris].[position_dim]
        ([position_key])
    on delete no action on update no action;
go
