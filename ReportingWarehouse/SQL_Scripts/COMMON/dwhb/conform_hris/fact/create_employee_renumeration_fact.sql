-- creating table 'employee_renumeration_fact'
create table [conform].[employee_renumeration_fact] (
    [employee_renumeration_key] int identity(1,1) not null,
    [portfolio_key] int  not null,
    [service_stream_key] int  not null,
    [program_key] int  not null,
	[position_key] int  not null,
    [employee_key] int  not null,
	[manager_key] int  not null,
	[manager_position_key] int  not null,
	[recruitment_date_key] int not null,
	[count] int null,
	[total_fte_salary] DECIMAL (18, 6) NULL,
	[effective_date] INT NULL,
	[expiration_date] INT NULL,
	[current_row_indicator]        NVARCHAR (1)    NULL
);
go

-- creating primary key on [employee_renumeration_key] in table 'employee_renumeration_fact'
alter table [conform].[employee_renumeration_fact]
add constraint [pk_employee_renumeration_fact]
    primary key clustered ([employee_renumeration_key] asc);
go

-- FK for portfolio_key
alter table [conform].[employee_renumeration_fact]
add constraint [fk_employee_renumeration_fact_portfolio_key]
    foreign key ([portfolio_key])
    references [conform].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- FK for service_stream_key
alter table [conform].[employee_renumeration_fact]
add constraint [fk_employee_renumeration_fact_service_stream_key]
    foreign key ([service_stream_key])
    references [conform].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- FK for program_key
alter table [conform].[employee_renumeration_fact]
add constraint [fk_employee_renumeration_fact_program_key]
    foreign key ([program_key])
    references [conform].[program_dim]
        ([program_key])
    on delete no action on update no action;
go

-- FK for position_key
alter table [conform].[employee_renumeration_fact]
add constraint [fk_employee_renumeration_fact_position_key]
    foreign key ([position_key])
    references [conform].[position_dim]
        ([position_key])
    on delete no action on update no action;
go

-- FK for employee_key
alter table [conform].[employee_renumeration_fact]
add constraint [fk_employee_renumeration_fact_employee_key]
    foreign key ([employee_key])
    references [conform].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- FK for manager_key
alter table [conform].[employee_renumeration_fact]
add constraint [fk_employee_renumeration_fact_manager_key]
    foreign key ([manager_key])
    references [conform].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- FK for manager_position_key
alter table [conform].[employee_renumeration_fact]
add constraint [fk_employee_renumeration_fact_manager_position_key]
    foreign key ([manager_position_key])
    references [conform].[position_dim]
        ([position_key])
    on delete no action on update no action;
go

-- FK for recruitment_date_key
alter table [conform].[employee_renumeration_fact]
add constraint [fk_employee_renumeration_fact_date_key]
    foreign key ([recruitment_date_key])
    references [conform].[date_dim]
        ([date_key])
    on delete no action on update no action;
go