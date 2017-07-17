


-- creating table 'employee_recruitment_fact'
create table [hris].[employee_recruitment_fact] (
    [employee_recruitment_key] int  not null,
    [employee_key] int  not null,
    [position_key] int  not null,
    [organisation_key] int  not null,
    [portfolio_key] int  not null,
    [service_stream_key] int  not null,
    [program_key] int  not null,
    [recruitment_date_key] int  not null,
	[count] int null,
	[manager_key] int not null,
	[manager_position_key] int not null,
	[service_date_key] int not null,
	[contract_expiry_date_key] int not null,
	[termination_date_key] int not null
);
go

-- creating primary key on [employee_recruitment_key] in table 'employee_recruitment_fact'
alter table [hris].[employee_recruitment_fact]
add constraint [pk_employee_recruitment_fact]
    primary key clustered ([employee_recruitment_key] asc);
go

-- creating non-clustered index for foreign key 'fk_date_dimemployee_recruitment_fact'
create index [ix_fk_date_dimemployee_recruitment_fact]
on [hris].[employee_recruitment_fact]
    ([recruitment_date_key]);
go

alter table [hris].[employee_recruitment_fact]
add constraint [fk_date_dimemployee_recruitment_fact]
    foreign key ([recruitment_date_key])
    references [hris].[date_dim]  
        ([date_key])
    on delete no action on update no action;
go



-- creating foreign key on [position_key] in table 'employee_recruitment_fact'
alter table [hris].[employee_recruitment_fact]
add constraint [fk_position_dimemployee_recruitment_fact]
    foreign key ([position_key])
    references [hris].[position_dim]
        ([position_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_position_dimemployee_recruitment_fact'
create index [ix_fk_position_dimemployee_recruitment_fact]
on [hris].[employee_recruitment_fact]
    ([position_key]);
go

-- creating foreign key on [organisation_key] in table 'employee_recruitment_fact'
alter table [hris].[employee_recruitment_fact]
add constraint [fk_organisation_dimemployee_recruitment_fact]
    foreign key ([organisation_key])
    references [hris].[organisation_dim]
        ([organisation_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_organisation_dimemployee_recruitment_fact'
create index [ix_fk_organisation_dimemployee_recruitment_fact]
on [hris].[employee_recruitment_fact]
    ([organisation_key]);
go

-- creating foreign key on [portfolio_key] in table 'employee_recruitment_fact'
alter table [hris].[employee_recruitment_fact]
add constraint [fk_portfolio_dimemployee_recruitment_fact]
    foreign key ([portfolio_key])
    references [hris].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_portfolio_dimemployee_recruitment_fact'
create index [ix_fk_portfolio_dimemployee_recruitment_fact]
on [hris].[employee_recruitment_fact]
    ([portfolio_key]);
go

-- creating foreign key on [service_stream_key] in table 'employee_recruitment_fact'
alter table [hris].[employee_recruitment_fact]
add constraint [fk_service_stream_dimemployee_recruitment_fact]
    foreign key ([service_stream_key])
    references [hris].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_service_stream_dimemployee_recruitment_fact'
create index [ix_fk_service_stream_dimemployee_recruitment_fact]
on [hris].[employee_recruitment_fact]
    ([service_stream_key]);
go

-- creating foreign key on [program_key] in table 'employee_recruitment_fact'
alter table [hris].[employee_recruitment_fact]
add constraint [fk_program_dimemployee_recruitment_fact]
    foreign key ([program_key])
    references [hris].[program_dim]
        ([program_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_program_dimemployee_recruitment_fact'
create index [ix_fk_program_dimemployee_recruitment_fact]
on [hris].[employee_recruitment_fact]
    ([program_key]);
go

-- FK for manager_key
alter table [hris].[employee_recruitment_fact]
add constraint [fk_employee_recruitment_fact_manager_key]
foreign key ([manager_key])
references [hris].[employee_dim]
 ([employee_key])
 on delete no action on update no action;
go

-- FK for manager_position_key
alter table [hris].[employee_recruitment_fact]
add constraint [fk_employee_recruitment_fact_manager_position_key]
foreign key ([manager_position_key])
references [hris].[position_dim]
 ([position_key])
 on delete no action on update no action;
go

-- FK for service_date_key
alter table [hris].[employee_recruitment_fact]
add constraint [fk_employee_recruitment_fact_service_date_key]
foreign key ([service_date_key])
references [hris].[date_dim]
 ([date_key])
 on delete no action on update no action;
go

-- FK for contract_expiry_date_key
alter table [hris].[employee_recruitment_fact]
add constraint [fk_employee_recruitment_fact_contract_expiry_date_key]
foreign key ([contract_expiry_date_key])
references [hris].[date_dim]
 ([date_key])
 on delete no action on update no action;
go

-- FK for termination_date_key
alter table [hris].[employee_recruitment_fact]
add constraint [fk_employee_recruitment_fact_termination_date_key]
foreign key ([termination_date_key])
references [hris].[date_dim]
 ([date_key])
 on delete no action on update no action;
go