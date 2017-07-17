
create table [conform].[employee_working_hours_fact] (
    [employee_working_hours_key] int identity(1,1) not null,
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
alter table [conform].[employee_working_hours_fact]
add constraint [pk_employee_working_hours_fact]
    primary key clustered ([employee_working_hours_key] asc);
go

-- FK portfolio
alter table [conform].[employee_working_hours_fact]
add constraint [fk_employee_working_hours_portfolio_key]
    foreign key ([portfolio_key])
    references [conform].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- FK service stream
alter table [conform].[employee_working_hours_fact]
add constraint [fk_employee_working_hours_service_stream_key]
    foreign key ([service_stream_key])
    references [conform].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- FK program
alter table [conform].[employee_working_hours_fact]
add constraint [fk_employee_working_hours_program_key]
    foreign key ([program_key])
    references [conform].[program_dim]
        ([program_key])
    on delete no action on update no action;
go

-- FK positon
alter table [conform].[employee_working_hours_fact]
add constraint [fk_employee_working_hours_position_key]
    foreign key ([position_key])
    references [conform].[position_dim]
        ([position_key])
    on delete no action on update no action;
go

-- FK employee
alter table [conform].[employee_working_hours_fact]
add constraint [fk_employee_working_hours_employee_key]
    foreign key ([employee_key])
    references [conform].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- FK date
alter table [conform].[employee_working_hours_fact]
add constraint [fk_employee_working_hours_date_key]
    foreign key ([date_key])
    references [conform].[date_dim]
        ([date_key])
    on delete no action on update no action;
go
-- FK leave type
alter table [conform].[employee_working_hours_fact]
add constraint [fk_employee_working_hours_leave_type_key]
    foreign key ([leave_type_key])
    references [conform].[leave_type_dim]
        ([leave_type_key])
    on delete no action on update no action;
go
-- FK payment type
alter table [conform].[employee_working_hours_fact]
add constraint [fk_employee_working_hours_payment_type_key]
    foreign key ([payment_type_key])
    references [conform].[payment_type_dim]
        ([payment_type_key])
    on delete no action on update no action;
go