-- creating table 'employee_position_snapshot_fact'
create table [hris].[employee_position_snapshot_fact] (
    [employee_position_snapshot_key] int identity(1,1) not null,
    [position_filled_count] nvarchar(max)  not null,
    [position_vacant_count] nvarchar(max)  not null,
    [employee_key] int  not null,
    [month_key] int  not null,
    [organisation_key] int  not null,
    [portfolio_key] int  not null,
    [service_stream_key] int  not null,
    [program_key] int  not null,
    [position_key] int  not null
);
go

-- creating primary key on [employee_position_snapshot_key] in table 'employee_position_snapshot_fact'
alter table [hris].[employee_position_snapshot_fact]
add constraint [pk_employee_position_snapshot_fact]
    primary key clustered ([employee_position_snapshot_key] asc);
go


-- creating foreign key on [employee_key] in table 'employee_position_snapshot_fact'
alter table [hris].[employee_position_snapshot_fact]
add constraint [fk_employee_dimemployee_position_snapshot_fact]
    foreign key ([employee_key])
    references [hris].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_employee_dimemployee_position_snapshot_fact'
create index [ix_fk_employee_dimemployee_position_snapshot_fact]
on [hris].[employee_position_snapshot_fact]
    ([employee_key]);
go

-- creating foreign key on [month_key] in table 'employee_position_snapshot_fact'
alter table [hris].[employee_position_snapshot_fact]
add constraint [fk_month_dimemployee_position_snapshot_fact]
    foreign key ([month_key])
    references [hris].[month_dim]
        ([month_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_month_dimemployee_position_snapshot_fact'
create index [ix_fk_month_dimemployee_position_snapshot_fact]
on [hris].[employee_position_snapshot_fact]
    ([month_key]);
go

-- creating foreign key on [organisation_key] in table 'employee_position_snapshot_fact'
alter table [hris].[employee_position_snapshot_fact]
add constraint [fk_organisation_dimemployee_position_snapshot_fact]
    foreign key ([organisation_key])
    references [hris].[organisation_dim]
        ([organisation_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_organisation_dimemployee_position_snapshot_fact'
create index [ix_fk_organisation_dimemployee_position_snapshot_fact]
on [hris].[employee_position_snapshot_fact]
    ([organisation_key]);
go

-- creating foreign key on [portfolio_key] in table 'employee_position_snapshot_fact'
alter table [hris].[employee_position_snapshot_fact]
add constraint [fk_portfolio_dimemployee_position_snapshot_fact]
    foreign key ([portfolio_key])
    references [hris].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_portfolio_dimemployee_position_snapshot_fact'
create index [ix_fk_portfolio_dimemployee_position_snapshot_fact]
on [hris].[employee_position_snapshot_fact]
    ([portfolio_key]);
go

-- creating foreign key on [service_stream_key] in table 'employee_position_snapshot_fact'
alter table [hris].[employee_position_snapshot_fact]
add constraint [fk_service_stream_dimemployee_position_snapshot_fact]
    foreign key ([service_stream_key])
    references [hris].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_service_stream_dimemployee_position_snapshot_fact'
create index [ix_fk_service_stream_dimemployee_position_snapshot_fact]
on [hris].[employee_position_snapshot_fact]
    ([service_stream_key]);
go

-- creating foreign key on [program_key] in table 'employee_position_snapshot_fact'
alter table [hris].[employee_position_snapshot_fact]
add constraint [fk_program_dimemployee_position_snapshot_fact]
    foreign key ([program_key])
    references [hris].[program_dim]
        ([program_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_program_dimemployee_position_snapshot_fact'
create index [ix_fk_program_dimemployee_position_snapshot_fact]
on [hris].[employee_position_snapshot_fact]
    ([program_key]);
go