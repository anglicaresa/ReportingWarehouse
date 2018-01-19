use DWHF;
-- employee_last_paid_date_fact
create table [hris].[employee_last_paid_date_fact] (
	[employee_last_paid_key] int not null,
	[portfolio_key] int  not null,
	[service_stream_key] int  not null,
	[program_key] int  not null,
	[position_key] int  not null,
	[employee_key] int  not null,
	[pay_period_date_key] int not null,
	[paid_date_key] int not null,	
	[count] int
  
);

go

-- PK employee_last_paid_key
alter table [hris].[employee_last_paid_date_fact]
add constraint [pk_employee_last_paid_date_fact]
    primary key clustered ([employee_last_paid_key] asc);
go

-- FK portfolio_key
alter table [hris].[employee_last_paid_date_fact]
add constraint [fk_employee_last_paid_date_fact_portfolio_key]
    foreign key ([portfolio_key])
    references [hris].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- FK service_stream_key
alter table [hris].[employee_last_paid_date_fact]
add constraint [fk_employee_last_paid_date_fact_service_stream_key]
    foreign key ([service_stream_key])
    references [hris].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- FK program_key
alter table [hris].[employee_last_paid_date_fact]
add constraint [fk_employee_last_paid_date_fact_program_key]
    foreign key ([program_key])
    references [hris].[program_dim]
        ([program_key])
    on delete no action on update no action;
go

-- FK position_key
alter table [hris].[employee_last_paid_date_fact]
add constraint [fk_employee_last_paid_date_fact_position_key]
    foreign key ([position_key])
    references [hris].[position_dim]
        ([position_key])
    on delete no action on update no action;
go

-- FK employee_key
alter table [hris].[employee_last_paid_date_fact]
add constraint [fk_employee_last_paid_date_fact_employee_key]
    foreign key ([employee_key])
    references [hris].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- FK date_key
alter table [hris].[employee_last_paid_date_fact]
add constraint [fk_employee_last_paid_date_fact_date_key]
    foreign key ([pay_period_date_key])
    references [hris].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- FK paid_date_key
alter table [hris].[employee_last_paid_date_fact]
add constraint [fk_employee_last_paid_date_fact_paid_date_key]
    foreign key ([paid_date_key])
    references [hris].[date_dim]
        ([date_key])
    on delete no action on update no action;
go