
create table [hris].[employee_working_hours_fact] (
    [employee_working_hours_key] int not null,
	[portfolio_key] int not null,
	[service_stream_key] int not null,
	[program_key] int not null,
	[position_key] int not null,
	[employee_key] int not null,
	[date_key] int not null,
	[leave_type_key] int not null,
	[payment_type_key] int not null,
	[working_hours] decimal(4,2),
	[paid_leave_hours] decimal(18,6), 
	[unpaid_leave_hours] decimal(18,6)
    
);
go

-- PK
alter table [hris].[employee_working_hours_fact]
add constraint [pk_employee_working_hours_fact]
    primary key clustered ([employee_working_hours_key] asc);
go

-- FK portfolio
alter table [hris].[employee_working_hours_fact]
add constraint [fk_employee_working_hours_portfolio_key]
    foreign key ([portfolio_key])
    references [hris].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- FK service stream
alter table [hris].[employee_working_hours_fact]
add constraint [fk_employee_working_hours_service_stream_key]
    foreign key ([service_stream_key])
    references [hris].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- FK program
alter table [hris].[employee_working_hours_fact]
add constraint [fk_employee_working_hours_program_key]
    foreign key ([program_key])
    references [hris].[program_dim]
        ([program_key])
    on delete no action on update no action;
go

-- FK positon
alter table [hris].[employee_working_hours_fact]
add constraint [fk_employee_working_hours_position_key]
    foreign key ([position_key])
    references [hris].[position_dim]
        ([position_key])
    on delete no action on update no action;
go

-- FK employee
alter table [hris].[employee_working_hours_fact]
add constraint [fk_employee_working_hours_employee_key]
    foreign key ([employee_key])
    references [hris].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- FK date
alter table [hris].[employee_working_hours_fact]
add constraint [fk_employee_working_hours_date_key]
    foreign key ([date_key])
    references [hris].[date_dim]
        ([date_key])
    on delete no action on update no action;
go
-- FK leave type
alter table [hris].[employee_working_hours_fact]
add constraint [fk_employee_working_hours_leave_type_key]
    foreign key ([leave_type_key])
    references [hris].[leave_type_dim]
        ([leave_type_key])
    on delete no action on update no action;
go
-- FK payment type
alter table [hris].[employee_working_hours_fact]
add constraint [fk_employee_working_hours_payment_type_key]
    foreign key ([payment_type_key])
    references [hris].[payment_type_dim]
        ([payment_type_key])
    on delete no action on update no action;
go