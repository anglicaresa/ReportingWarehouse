-- creating table 'employee_benefit_fact'
create table [conform].[employee_benefit_fact] (
    [employee_benefit_key] int identity(1,1) not null,
    [employee_key] int  not null,
    [benefit_key] int  not null,
    [benefit_date_key] int  not null,
    [organisation_key] int  not null,
    [portfolio_key] int  not null,
    [service_stream_key] int  not null,
    [program_key] int  not null,
    [position_key] int  not null
);
go

-- creating primary key on [employee_benefit_key] in table '[employee_benefit_fact]'
alter table [conform].employee_benefit_fact
add constraint [pk_employee_benefit_fact]
    primary key clustered ([employee_benefit_key] asc);
go

-- creating foreign key on [employee_key] in table 'employee_benefit_fact'
alter table [conform].[employee_benefit_fact]
add constraint [fk_employee_dimemployee_benefit_fact]
    foreign key ([employee_key])
    references [conform].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_employee_dimemployee_benefit_fact'
create index [ix_fk_employee_dimemployee_benefit_fact]
on [conform].[employee_benefit_fact]
    ([employee_key]);
go

-- creating foreign key on [benefit_key] in table 'employee_benefit_fact'
alter table [conform].[employee_benefit_fact]
add constraint [fk_employee_benefit_dimemployee_benefit_fact]
    foreign key ([benefit_key])
    references [conform].[employee_benefit_dim]
        ([employee_benefit_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_employee_benefit_dimemployee_benefit_fact'
create index [ix_fk_employee_benefit_dimemployee_benefit_fact]
on [conform].[employee_benefit_fact]
    ([benefit_key]);
go

-- creating foreign key on [benefit_date_key] in table 'employee_benefit_fact'
alter table [conform].[employee_benefit_fact]
add constraint [fk_date_dimemployee_benefit_fact]
    foreign key ([benefit_date_key])
    references [conform].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_date_dimemployee_benefit_fact'
create index [ix_fk_date_dimemployee_benefit_fact]
on [conform].[employee_benefit_fact]
    ([benefit_date_key]);
go

-- creating foreign key on [organisation_key] in table 'employee_benefit_fact'
alter table [conform].[employee_benefit_fact]
add constraint [fk_organisation_dimemployee_benefit_fact]
    foreign key ([organisation_key])
    references [conform].[organisation_dim]
        ([organisation_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_organisation_dimemployee_benefit_fact'
create index [ix_fk_organisation_dimemployee_benefit_fact]
on [conform].[employee_benefit_fact]
    ([organisation_key]);
go

-- creating foreign key on [portfolio_key] in table 'employee_benefit_fact'
alter table [conform].[employee_benefit_fact]
add constraint [fk_portfolio_dimemployee_benefit_fact]
    foreign key ([portfolio_key])
    references [conform].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_portfolio_dimemployee_benefit_fact'
create index [ix_fk_portfolio_dimemployee_benefit_fact]
on [conform].[employee_benefit_fact]
    ([portfolio_key]);
go

-- creating foreign key on [service_stream_key] in table 'employee_benefit_fact'
alter table [conform].[employee_benefit_fact]
add constraint [fk_service_stream_dimemployee_benefit_fact]
    foreign key ([service_stream_key])
    references [conform].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_service_stream_dimemployee_benefit_fact'
create index [ix_fk_service_stream_dimemployee_benefit_fact]
on [conform].[employee_benefit_fact]
    ([service_stream_key]);
go

-- creating foreign key on [program_key] in table 'employee_benefit_fact'
alter table [conform].[employee_benefit_fact]
add constraint [fk_program_dimemployee_benefit_fact]
    foreign key ([program_key])
    references [conform].[program_dim]
        ([program_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_program_dimemployee_benefit_fact'
create index [ix_fk_program_dimemployee_benefit_fact]
on [conform].[employee_benefit_fact]
    ([program_key]);
go

-- creating foreign key on [position_key] in table 'employee_benefit_fact'
alter table [conform].[employee_benefit_fact]
add constraint [fk_position_dimemployee_benefit_fact]
    foreign key ([position_key])
    references [conform].[position_dim]
        ([position_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_position_dimemployee_benefit_fact'
create index [ix_fk_position_dimemployee_benefit_fact]
on [conform].[employee_benefit_fact]
    ([position_key]);
go