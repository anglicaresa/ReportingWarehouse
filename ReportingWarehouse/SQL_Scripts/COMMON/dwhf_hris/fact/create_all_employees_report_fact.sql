use dwhf;
-- [all_employees_report_fact]
create table [hris].[all_employees_report_fact] (
	[all_employees_report_key] int not null,
	[portfolio_key] int  not null,
	[service_stream_key] int  not null,
	[program_key] int  not null,
	[position_key] int  not null,
	[employee_key] int  not null,
	[employee_type] varchar(20) null,
	[employee_class] varchar(20) null,
	[manager_key]  int not null,
	[manager_position_key]  int not null,
    [commencement_date_key] int not null,
	[terminate_date_key] int not null,
    [effective_date_key] int not null,
	[expire_date_key] int not null,
	[count] int   
);

go

-- PK all_employees_report_key
alter table [hris].[all_employees_report_fact]
add constraint [pk_all_employees_report_fact]
    primary key clustered ([all_employees_report_key] asc);
go

-- FK portfolio_key
alter table [hris].[all_employees_report_fact]
add constraint [fk_all_employees_report_fact_portfolio_key]
    foreign key ([portfolio_key])
    references [hris].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- FK service_stream_key
alter table [hris].[all_employees_report_fact]
add constraint [fk_all_employees_report_fact_service_stream_key]
    foreign key ([service_stream_key])
    references [hris].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- FK program_key
alter table [hris].[all_employees_report_fact]
add constraint [fk_all_employees_report_fact_program_key]
    foreign key ([program_key])
    references [hris].[program_dim]
        ([program_key])
    on delete no action on update no action;
go

-- FK position_key
alter table [hris].[all_employees_report_fact]
add constraint [fk_all_employees_report_fact_position_key]
    foreign key ([position_key])
    references [hris].[position_dim]
        ([position_key])
    on delete no action on update no action;
go

-- FK employee_key
alter table [hris].[all_employees_report_fact]
add constraint [fk_all_employees_report_fact_employee_key]
    foreign key ([employee_key])
    references [hris].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- FK manager_position_key
alter table [hris].[all_employees_report_fact]
add constraint [fk_all_employees_report_fact_manager_position_key]
    foreign key ([manager_position_key])
    references [hris].[position_dim]
        ([position_key])
    on delete no action on update no action;
go

-- FK manager_key
alter table [hris].[all_employees_report_fact]
add constraint [fk_all_employees_report_fact_manager_employee_key]
    foreign key ([manager_key])
    references [hris].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go


-- FK commencement_date_key
alter table [hris].[all_employees_report_fact]
add constraint [fk_all_employees_report_fact_commencement_date_key]
    foreign key ([commencement_date_key])
    references [hris].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- FK terminate_date_key
alter table [hris].[all_employees_report_fact]
add constraint [fk_all_employees_report_fact_terminate_date_key]
    foreign key ([terminate_date_key])
    references [hris].[date_dim]
        ([date_key])
    on delete no action on update no action;
go


-- FK effective_date_key
alter table [hris].[all_employees_report_fact]
add constraint [fk_all_employees_report_fact_effective_date_key]
    foreign key ([effective_date_key])
    references [hris].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- FK expire_date_key
alter table [hris].[all_employees_report_fact]
add constraint [fk_all_employees_report_fact_expire_date_key]
    foreign key ([expire_date_key])
    references [hris].[date_dim]
        ([date_key])
    on delete no action on update no action;
go