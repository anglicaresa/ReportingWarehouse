-- creating table 'employee_accreditation_fact'
create table [hris].[employee_accreditation_fact] (
    [employee_accreditation_key] int identity(1,1) not null,
    [employee_key] int  not null,
    [accreditation_date_key] int  not null,
    [organisation_key] int  not null,
    [portfolio_key] int  not null,
    [service_stream_key] int  not null,
    [program_key] int  not null,
    [accreditation_key] int  not null,
    [accreditation_level] nvarchar(max)  not null,
    [expiry_date_key] int  not null
);
go

-- creating primary key on [employee_accreditation_key] in table 'employee_accreditation_fact'
alter table [hris].[employee_accreditation_fact]
add constraint [pk_employee_accreditation_fact]
    primary key clustered ([employee_accreditation_key] asc);
go


-- creating foreign key on [employee_key] in table 'employee_accreditation_fact'
alter table [hris].[employee_accreditation_fact]
add constraint [fk_employee_dimemployee_accreditation_fact]
    foreign key ([employee_key])
    references [hris].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_employee_dimemployee_accreditation_fact'
create index [ix_fk_employee_dimemployee_accreditation_fact]
on [hris].[employee_accreditation_fact]
    ([employee_key]);
go

-- creating foreign key on [accreditation_date_key] in table 'employee_accreditation_fact'
alter table [hris].[employee_accreditation_fact]
add constraint [fk_date_dimemployee_accreditation_fact]
    foreign key ([accreditation_date_key])
    references [hris].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_date_dimemployee_accreditation_fact'
create index [ix_fk_date_dimemployee_accreditation_fact]
on [hris].[employee_accreditation_fact]
    ([accreditation_date_key]);
go

-- creating foreign key on [organisation_key] in table 'employee_accreditation_fact'
alter table [hris].[employee_accreditation_fact]
add constraint [fk_organisation_dimemployee_accreditation_fact]
    foreign key ([organisation_key])
    references [hris].[organisation_dim]
        ([organisation_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_organisation_dimemployee_accreditation_fact'
create index [ix_fk_organisation_dimemployee_accreditation_fact]
on [hris].[employee_accreditation_fact]
    ([organisation_key]);
go

-- creating foreign key on [portfolio_key] in table 'employee_accreditation_fact'
alter table [hris].[employee_accreditation_fact]
add constraint [fk_portfolio_dimemployee_accreditation_fact]
    foreign key ([portfolio_key])
    references [hris].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_portfolio_dimemployee_accreditation_fact'
create index [ix_fk_portfolio_dimemployee_accreditation_fact]
on [hris].[employee_accreditation_fact]
    ([portfolio_key]);
go

-- creating foreign key on [service_stream_key] in table 'employee_accreditation_fact'
alter table [hris].[employee_accreditation_fact]
add constraint [fk_service_stream_dimemployee_accreditation_fact]
    foreign key ([service_stream_key])
    references [hris].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_service_stream_dimemployee_accreditation_fact'
create index [ix_fk_service_stream_dimemployee_accreditation_fact]
on [hris].[employee_accreditation_fact]
    ([service_stream_key]);
go

-- creating foreign key on [program_key] in table 'employee_accreditation_fact'
alter table [hris].[employee_accreditation_fact]
add constraint [fk_program_dimemployee_accreditation_fact]
    foreign key ([program_key])
    references [hris].[program_dim]
        ([program_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_program_dimemployee_accreditation_fact'
create index [ix_fk_program_dimemployee_accreditation_fact]
on [hris].[employee_accreditation_fact]
    ([program_key]);
go

-- creating foreign key on [accreditation_key] in table 'employee_accreditation_fact'
alter table [hris].[employee_accreditation_fact]
add constraint [fk_employee_accreditation_dimemployee_accreditation_fact]
    foreign key ([accreditation_key])
    references [hris].[accreditation_dim]
        ([accreditation_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_employee_accreditation_dimemployee_accreditation_fact'
create index [ix_fk_employee_accreditation_dimemployee_accreditation_fact]
on [hris].[employee_accreditation_fact]
    ([accreditation_key]);
go

-- creating foreign key on [expiry_date_key] in table 'employee_accreditation_fact'
alter table [hris].[employee_accreditation_fact]
add constraint [fk_date_dimemployee_accreditation_fact1]
    foreign key ([expiry_date_key])
    references [hris].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_date_dimemployee_accreditation_fact1'
create index [ix_fk_date_dimemployee_accreditation_fact1]
on [hris].[employee_accreditation_fact]
    ([expiry_date_key]);
go