-- creating table 'employee_position_fact'
create table [conform].[employee_position_fact] (
    [employee_position_key] int identity(1,1) not null,
    [new_position_flag] nvarchar(max)  not null,
	[manager_key] int  not null,
	[manager_position_key] int  not null,
    [organisation_key] int  not null,
    [portfolio_key] int  not null,
    [service_stream_key] int  not null,
    [program_key] int  not null,
    [position_key] int  not null,
	[primary_position_flag] varchar(3) null,
    [employee_key] int  not null,
    [position_start_date_key] int  not null,
	[anniversary_date_key] int  not null,
	[increment_date_key] int  not null,
	[last_increment_date_key] int  not null,
	[service_date_key] int  not null,
	[position_vacant_date_key] int not null,
	[permanent_ft_count] int null, 
	[permanent_pt_count] int null, 
	[contract_ft_count] int null, 
	[contract_pt_count] int null, 
	[casual_count] int null,
	[total_count] int null
);
go

-- creating primary key on [employee_position_key] in table 'employee_position_fact'
alter table [conform].[employee_position_fact]
add constraint [pk_employee_position_fact]
    primary key clustered ([employee_position_key] asc);
go

-- creating foreign key on [manager_key] in table 'employee_position_fact'
alter table [conform].[employee_position_fact]
add constraint [fk_employee_position_fact_manager_key]
    foreign key ([manager_key])
    references [conform].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key '[fk_employee_position_fact_manager_key]'
create index [ix_fk_employee_position_fact_manager_key]
on [conform].[employee_position_fact]
    ([manager_key]);
go

-- creating foreign key on [manager_position_key] in table 'employee_position_fact'
alter table [conform].[employee_position_fact]
add constraint [fk_employee_position_fact_manager_position]
    foreign key ([manager_position_key])
    references [conform].[position_dim]
        ([position_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key '[[fk_employee_position_fact_manager_position]]'
create index [ix_fk_employee_position_fact_manager_position]
on [conform].[employee_position_fact]
    ([manager_position_key]);
go

-- creating foreign key on [position_key] in table 'employee_position_fact'
alter table [conform].[employee_position_fact]
add constraint [fk_position_dimemployee_position_fact]
    foreign key ([position_key])
    references [conform].[position_dim]
        ([position_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_position_dimemployee_position_fact'
create index [ix_fk_position_dimemployee_position_fact]
on [conform].[employee_position_fact]
    ([position_key]);
go

-- creating foreign key on [employee_key] in table 'employee_position_fact'
alter table [conform].[employee_position_fact]
add constraint [fk_employee_dimemployee_position_fact]
    foreign key ([employee_key])
    references [conform].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_employee_dimemployee_position_fact'
create index [ix_fk_employee_dimemployee_position_fact]
on [conform].[employee_position_fact]
    ([employee_key]);
go

-- creating foreign key position_start_date_key
alter table [conform].[employee_position_fact]
add constraint [fk_employee_position_fact_position_start_date]
    foreign key ([position_start_date_key])
    references [conform].[date_dim]
        ([date_key])
    on delete no action on update no action;
go
-- creating non-clustered index for foreign key 'fk_employee_position_fact_position_start_date'
create index [ix_fk_employee_position_fact_position_start_date]
on [conform].[employee_position_fact]
    ([position_start_date_key]);
go

-- creating foreign key anniversary_date_key
alter table [conform].[employee_position_fact]
add constraint [fk_employee_position_fact_anniversary_date]
    foreign key ([anniversary_date_key])
    references [conform].[date_dim]
        ([date_key])
    on delete no action on update no action;
go
-- creating non-clustered index for foreign key '[fk_employee_position_fact_anniversary_date]'
create index [ix_fk_employee_position_fact_anniversary_date]
on [conform].[employee_position_fact]
    ([anniversary_date_key]);
go

-- creating foreign key increment_date_key
alter table [conform].[employee_position_fact]
add constraint [fk_employee_position_fact_increment_date]
    foreign key ([increment_date_key])
    references [conform].[date_dim]
        ([date_key])
    on delete no action on update no action;
go
-- creating non-clustered index for foreign key '[fk_employee_position_fact_increment_date]'
create index [ix_fk_employee_position_fact_increment_date]
on [conform].[employee_position_fact]
    ([increment_date_key]);
go

-- creating foreign key last_increment_date_key
alter table [conform].[employee_position_fact]
add constraint [fk_employee_position_fact_last_increment_date]
    foreign key ([last_increment_date_key])
    references [conform].[date_dim]
        ([date_key])
    on delete no action on update no action;
go
-- creating non-clustered index for foreign key '[fk_employee_position_fact_last_increment_date]'
create index [ix_fk_employee_position_fact_last_increment_date]
on [conform].[employee_position_fact]
    ([last_increment_date_key]);
go



-- creating foreign key on [organisation_key] in table 'employee_position_fact'
alter table [conform].[employee_position_fact]
add constraint [fk_organisation_dimemployee_position_fact]
    foreign key ([organisation_key])
    references [conform].[organisation_dim]
        ([organisation_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_organisation_dimemployee_position_fact'
create index [ix_fk_organisation_dimemployee_position_fact]
on [conform].[employee_position_fact]
    ([organisation_key]);
go

-- creating foreign key on [portfolio_key] in table 'employee_position_fact'
alter table [conform].[employee_position_fact]
add constraint [fk_portfolio_dimemployee_position_fact]
    foreign key ([portfolio_key])
    references [conform].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_portfolio_dimemployee_position_fact'
create index [ix_fk_portfolio_dimemployee_position_fact]
on [conform].[employee_position_fact]
    ([portfolio_key]);
go

-- creating foreign key on [service_stream_key] in table 'employee_position_fact'
alter table [conform].[employee_position_fact]
add constraint [fk_service_stream_dimemployee_position_fact]
    foreign key ([service_stream_key])
    references [conform].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_service_stream_dimemployee_position_fact'
create index [ix_fk_service_stream_dimemployee_position_fact]
on [conform].[employee_position_fact]
    ([service_stream_key]);
go

-- creating foreign key on [program_key] in table 'employee_position_fact'
alter table [conform].[employee_position_fact]
add constraint [fk_program_dimemployee_position_fact]
    foreign key ([program_key])
    references [conform].[program_dim]
        ([program_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_program_dimemployee_position_fact'
create index [ix_fk_program_dimemployee_position_fact]
on [conform].[employee_position_fact]
    ([program_key]);
go

-- creating foreign key position_vacant_date_key
alter table [conform].[employee_position_fact]
add constraint [fk_employee_position_fact_position_vacant]
    foreign key ([position_vacant_date_key])
    references [conform].[date_dim]
        ([date_key])
    on delete no action on update no action;
go
-- creating non-clustered index for foreign key '[[fk_employee_position_fact_position_vacant]]'
create index [ix_fk_employee_position_fact_position_vacant]
on [conform].[employee_position_fact]
    ([position_vacant_date_key]);
go
