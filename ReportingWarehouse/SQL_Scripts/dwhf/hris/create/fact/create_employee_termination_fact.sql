-- creating table 'employee_termination_fact'
create table [hris].[employee_termination_fact] (
    [employee_termination_key] int identity(1,1) not null,
    [termination_reason] nvarchar(max)  not null,
    [employee_key] int  not null,
    [termination_date_key] int  not null,
    [organisation_key] int  not null,
    [portfolio_key] int  not null,
    [service_stream_key] int  not null,
    [program_key] int  not null,
    [position_key] int  not null

);
go

-- creating primary key on [employee_termination_key] in table 'employee_termination_fact'
alter table [hris].[employee_termination_fact]
add constraint [pk_employee_termination_fact]
    primary key clustered ([employee_termination_key] asc);
go


-- creating foreign key on [employee_key] in table 'employee_termination_fact'
alter table [hris].[employee_termination_fact]
add constraint [fk_employee_dimemployee_termination_fact]
    foreign key ([employee_key])
    references [hris].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_employee_dimemployee_termination_fact'
create index [ix_fk_employee_dimemployee_termination_fact]
on [hris].[employee_termination_fact]
    ([employee_key]);
go

-- creating foreign key on [termination_date_key] in table 'employee_termination_fact'
alter table [hris].[employee_termination_fact]
add constraint [fk_date_dimemployee_termination_fact]
    foreign key ([termination_date_key])
    references [hris].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_date_dimemployee_termination_fact'
create index [ix_fk_date_dimemployee_termination_fact]
on [hris].[employee_termination_fact]
    ([termination_date_key]);
go

-- creating foreign key on [organisation_key] in table 'employee_termination_fact'
alter table [hris].[employee_termination_fact]
add constraint [fk_organisation_dimemployee_termination_fact]
    foreign key ([organisation_key])
    references [hris].[organisation_dim]
        ([organisation_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_organisation_dimemployee_termination_fact'
create index [ix_fk_organisation_dimemployee_termination_fact]
on [hris].[employee_termination_fact]
    ([organisation_key]);
go

-- creating foreign key on [portfolio_key] in table 'employee_termination_fact'
alter table [hris].[employee_termination_fact]
add constraint [fk_portfolio_dimemployee_termination_fact]
    foreign key ([portfolio_key])
    references [hris].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_portfolio_dimemployee_termination_fact'
create index [ix_fk_portfolio_dimemployee_termination_fact]
on [hris].[employee_termination_fact]
    ([portfolio_key]);
go

-- creating foreign key on [service_stream_key] in table 'employee_termination_fact'
alter table [hris].[employee_termination_fact]
add constraint [fk_service_stream_dimemployee_termination_fact]
    foreign key ([service_stream_key])
    references [hris].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_service_stream_dimemployee_termination_fact1'
create index [ix_fk_service_stream_dimemployee_termination_fact]
on [hris].[employee_termination_fact]
    ([service_stream_key]);
go

-- creating foreign key on [program_key] in table 'employee_termination_fact'
alter table [hris].[employee_termination_fact]
add constraint [fk_program_dimemployee_termination_fact]
    foreign key ([program_key])
    references [hris].[program_dim]
        ([program_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_program_dimemployee_termination_fact'
create index [ix_fk_program_dimemployee_termination_fact]
on [hris].[employee_termination_fact]
    ([program_key]);
go

-- creating foreign key on [position_key] in table 'employee_termination_fact'
alter table [hris].[employee_termination_fact]
add constraint [fk_position_dimemployee_termination_fact]
    foreign key ([position_key])
    references [hris].[position_dim]
        ([position_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_position_dimemployee_termination_fact'
create index [ix_fk_position_dimemployee_termination_fact]
on [hris].[employee_termination_fact]
    ([position_key]);
go