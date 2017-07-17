-- creating table 'employee_payment_fact'
create table [hris].[employee_payment_fact] (
    [employee_payment_key] int identity(1,1) not null,
    [payment_amount] nvarchar(max)  not null,
    [payment_key] int  not null,
    [employee_key] int  not null,
    [payment_date_key] int  not null,
    [organisation_key] int  not null,
    [portfolio_key] int  not null,
    [service_stream_key] int  not null,
    [program_key] int  not null,
    [position_key] int  not null
);
go

-- creating primary key on [employee_payment_key] in table 'employee_payment_fact'
alter table [hris].[employee_payment_fact]
add constraint [pk_employee_payment_fact]
    primary key clustered ([employee_payment_key] asc);
go


-- creating foreign key on [payment_key] in table 'employee_payment_fact'
alter table [hris].[employee_payment_fact]
add constraint [fk_employee_payment_dimemployee_payment_fact]
    foreign key ([payment_key])
    references [hris].[employee_payment_dim]
        ([employee_payment_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_employee_payment_dimemployee_payment_fact'
create index [ix_fk_employee_payment_dimemployee_payment_fact]
on [hris].[employee_payment_fact]
    ([payment_key]);
go

-- creating foreign key on [employee_key] in table 'employee_payment_fact'
alter table [hris].[employee_payment_fact]
add constraint [fk_employee_dimemployee_payment_fact]
    foreign key ([employee_key])
    references [hris].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_employee_dimemployee_payment_fact'
create index [ix_fk_employee_dimemployee_payment_fact]
on [hris].[employee_payment_fact]
    ([employee_key]);
go

-- creating foreign key on [payment_date_key] in table 'employee_payment_fact'
alter table [hris].[employee_payment_fact]
add constraint [fk_date_dimemployee_payment_fact]
    foreign key ([payment_date_key])
    references [hris].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_date_dimemployee_payment_fact'
create index [ix_fk_date_dimemployee_payment_fact]
on [hris].[employee_payment_fact]
    ([payment_date_key]);
go

-- creating foreign key on [organisation_key] in table 'employee_payment_fact'
alter table [hris].[employee_payment_fact]
add constraint [fk_organisation_dimemployee_payment_fact]
    foreign key ([organisation_key])
    references [hris].[organisation_dim]
        ([organisation_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_organisation_dimemployee_payment_fact'
create index [ix_fk_organisation_dimemployee_payment_fact]
on [hris].[employee_payment_fact]
    ([organisation_key]);
go

-- creating foreign key on [portfolio_key] in table 'employee_payment_fact'
alter table [hris].[employee_payment_fact]
add constraint [fk_portfolio_dimemployee_payment_fact]
    foreign key ([portfolio_key])
    references [hris].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_portfolio_dimemployee_payment_fact'
create index [ix_fk_portfolio_dimemployee_payment_fact]
on [hris].[employee_payment_fact]
    ([portfolio_key]);
go

-- creating foreign key on [service_stream_key] in table 'employee_payment_fact'
alter table [hris].[employee_payment_fact]
add constraint [fk_service_stream_dimemployee_payment_fact]
    foreign key ([service_stream_key])
    references [hris].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_service_stream_dimemployee_payment_fact'
create index [ix_fk_service_stream_dimemployee_payment_fact]
on [hris].[employee_payment_fact]
    ([service_stream_key]);
go

-- creating foreign key on [program_key] in table 'employee_payment_fact'
alter table [hris].[employee_payment_fact]
add constraint [fk_program_dimemployee_payment_fact]
    foreign key ([program_key])
    references [hris].[program_dim]
        ([program_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_program_dimemployee_payment_fact'
create index [ix_fk_program_dimemployee_payment_fact]
on [hris].[employee_payment_fact]
    ([program_key]);
go

-- creating foreign key on [position_key] in table 'employee_payment_fact'
alter table [hris].[employee_payment_fact]
add constraint [fk_position_dimemployee_payment_fact]
    foreign key ([position_key])
    references [hris].[position_dim]
        ([position_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_position_dimemployee_payment_fact'
create index [ix_fk_position_dimemployee_payment_fact]
on [hris].[employee_payment_fact]
    ([position_key]);
go