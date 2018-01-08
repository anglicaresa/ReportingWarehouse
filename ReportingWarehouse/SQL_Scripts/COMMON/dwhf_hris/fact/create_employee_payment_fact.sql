-- employee_payment_fact
use dwhf;
go
DROP TABLE [hris].[employee_payment_fact];
GO

create table [hris].[employee_payment_fact] (
	[employee_payment_key] int not null,
	[portfolio_key] int  not null,
	[service_stream_key] int  not null,
	[program_key] int  not null,
	[position_key] int  not null,
	[employee_key] int  not null,
	[pay_period_date_key] int not null,
	[account_key] int not null,
	[number_units] decimal(10,4) null,
	[pay_period_unit] varchar(10) null,
	[pay_period_unit_desc] varchar(30) null,
	[pay_item_rate] decimal(18,6) null,
	[pay_item_amount] decimal(18,6) null,
	[taxable] varchar(1) null,
	[payment] varchar(1) null,
	[pay_component_def] int null,
	[pay_component_ref] decimal(10,4) null,
	[pay_period_type] varchar(10) null,
	[posted_ind] varchar (1) null,
    [document_type] VARCHAR (10) null,
	[count] int  
);

go

-- PK employee_payment_key
alter table [hris].[employee_payment_fact]
add constraint [pk_employee_payment_fact]
    primary key clustered ([employee_payment_key] asc);
go

-- FK portfolio_key
alter table [hris].[employee_payment_fact]
add constraint [fk_employee_payment_fact_portfolio_key]
    foreign key ([portfolio_key])
    references [hris].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- FK service_stream_key
alter table [hris].[employee_payment_fact]
add constraint [fk_employee_payment_fact_service_stream_key]
    foreign key ([service_stream_key])
    references [hris].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- FK program_key
alter table [hris].[employee_payment_fact]
add constraint [fk_employee_payment_fact_program_key]
    foreign key ([program_key])
    references [hris].[program_dim]
        ([program_key])
    on delete no action on update no action;
go

-- FK position_key
alter table [hris].[employee_payment_fact]
add constraint [fk_employee_payment_fact_position_key]
    foreign key ([position_key])
    references [hris].[position_dim]
        ([position_key])
    on delete no action on update no action;
go

-- FK employee_key
alter table [hris].[employee_payment_fact]
add constraint [fk_employee_payment_fact_employee_key]
    foreign key ([employee_key])
    references [hris].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- FK date_key
alter table [hris].[employee_payment_fact]
add constraint [fk_employee_payment_fact_date_key]
    foreign key ([pay_period_date_key])
    references [hris].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- FK account_key
alter table [hris].[employee_payment_fact]
add constraint [fk_employee_payment_fact_account_key]
    foreign key ([account_key])
    references [hris].[account_dim]
        ([account_key])
    on delete no action on update no action;
go