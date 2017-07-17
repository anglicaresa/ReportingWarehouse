-- creating table 'employee_leave_booked_fact'
create table [conform].[employee_leave_booked_txn_fact] (
    [employee_leave_booked_txn_key] int identity(1,1) not null,
    [employee_key] int  not null,
	[leave_start_date_key] int  not null,
    [portfolio_key] int  not null,
    [service_stream_key] int  not null,
    [program_key] int  not null,
    [position_key] int  not null,
    [leave_type_key] int  not null,
	[manager_key] int not null,
	[leave_booked] decimal(6,2)  not null,
	[status] varchar(10) null
);
go

-- PK
alter table [conform].[employee_leave_booked_txn_fact]
add constraint [pk_employee_leave_booked_txn_fact]
    primary key clustered ([employee_leave_booked_txn_key] asc);
go

-- FK employee
alter table [conform].[employee_leave_booked_txn_fact]
add constraint [fk_employee_leave_booked_txn_fact_employee_key]
    foreign key ([employee_key])
    references [conform].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- FK leave start date
alter table [conform].[employee_leave_booked_txn_fact]
add constraint [fk_employee_leave_booked_txn_fact_leave_start_date_key]
    foreign key ([leave_start_date_key])
    references [conform].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- FK portfolio
alter table [conform].[employee_leave_booked_txn_fact]
add constraint [fk_employee_leave_booked_txn_fact_portfolio_key]
    foreign key ([portfolio_key])
    references [conform].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- FK service stream
alter table [conform].[employee_leave_booked_txn_fact]
add constraint [fk_employee_leave_booked_txn_fact_service_stream_key]
    foreign key ([service_stream_key])
    references [conform].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- FK program
alter table [conform].[employee_leave_booked_txn_fact]
add constraint [fk_employee_leave_booked_txn_fact_program_key]
    foreign key ([program_key])
    references [conform].[program_dim]
        ([program_key])
    on delete no action on update no action;
go

-- FK position
alter table [conform].[employee_leave_booked_txn_fact]
add constraint [fk_employee_leave_booked_txn_fact_position_key]
    foreign key ([position_key])
    references [conform].[position_dim]
        ([position_key])
    on delete no action on update no action;
go

-- FK leave type
alter table [conform].[employee_leave_booked_txn_fact]
add constraint [fk_employee_leave_booked_txn_fact_leave_type_key]
    foreign key ([leave_type_key])
    references [conform].[leave_type_dim]
        ([leave_type_key])
    on delete no action on update no action;
go

-- FK manager
alter table [conform].[employee_leave_booked_txn_fact]
add constraint [fk_employee_leave_booked_txn_fact_manager_key]
    foreign key ([manager_key])
    references [conform].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go