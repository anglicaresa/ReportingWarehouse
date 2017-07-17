-- creating table 'employee_contract_fact'
create table [conform].[employee_contract_fact] (
    [employee_contract_key] int identity(1,1) not null,
    [employee_key] int  not null,
	[manager_key] int  not null,
	[manager_position_key] int  not null,
    [portfolio_key] int  not null,
    [service_stream_key] int  not null,
    [program_key] int  not null,
    [position_key] int  not null,
	[contract_expiry_date_key] int not null,
	[count] int null,
	 
);
go

-- creating primary key on [employee_contract_key] in table 'employee_contract_fact'
alter table [conform].[employee_contract_fact]
add constraint [pk_employee_contract_fact]
    primary key clustered ([employee_contract_key] asc);
go

-- creating foreign key on [[employee_key]] in table 'employee_contract_fact'
alter table [conform].[employee_contract_fact]
add constraint [fk_employee_contract_fact_employee_key]
    foreign key ([employee_key])
    references [conform].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- creating foreign key on [[manager_key]] in table 'employee_contract_fact'
alter table [conform].[employee_contract_fact]
add constraint [fk_employee_contract_fact_manager_key]
    foreign key ([manager_key])
    references [conform].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- creating foreign key on [portfolio_key] in table 'employee_contract_fact'
alter table [conform].[employee_contract_fact]
add constraint [fk_employee_contract_fact_portfolio_key]
    foreign key ([portfolio_key])
    references [conform].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- creating foreign key on [service_stream_key] in table 'employee_contract_fact'
alter table [conform].[employee_contract_fact]
add constraint [fk_employee_contract_fact_service_stream_key]
    foreign key ([service_stream_key])
    references [conform].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- creating foreign key on [program_key] in table 'employee_contract_fact'
alter table [conform].[employee_contract_fact]
add constraint [fk_employee_contract_fact_program_key]
    foreign key ([program_key])
    references [conform].[program_dim]
        ([program_key])
    on delete no action on update no action;
go

-- creating foreign key on [position_key] in table 'employee_contract_fact'
alter table [conform].[employee_contract_fact]
add constraint [fk_employee_contract_fact_position_key]
    foreign key ([position_key])
    references [conform].[position_dim]
        ([position_key])
    on delete no action on update no action;
go

-- FK for manager_position_key
alter table [conform].[employee_contract_fact]
add constraint [fk_employee_contract_fact_manager_position_key]
    foreign key ([manager_position_key])
    references [conform].[position_dim]
        ([position_key])
    on delete no action on update no action;
go