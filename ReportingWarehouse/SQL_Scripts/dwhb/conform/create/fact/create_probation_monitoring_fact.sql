-- creating table 'probation_monitoring_fact'
create table [conform].[probation_monitoring_fact] (
    [probation_monitoring_key] int identity(1,1) not null,
    [probation_end_date_key] int  not null,
    [employee_key] int  not null,
    [organisation_key] int  not null,
    [portfolio_key] int  not null,
    [service_stream_key] int  not null,
    [program_key] int  not null
);
go

-- creating primary key on [probation_monitoring_key] in table 'probation_monitoring_fact'
alter table [conform].[probation_monitoring_fact]
add constraint [pk_probation_monitoring_fact]
    primary key clustered ([probation_monitoring_key] asc);
go


-- creating foreign key on [employee_key] in table 'probation_monitoring_fact'
alter table [conform].[probation_monitoring_fact]
add constraint [fk_employee_dimprobation_monitoring_fact]
    foreign key ([employee_key])
    references [conform].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_employee_dimprobation_monitoring_fact'
create index [ix_fk_employee_dimprobation_monitoring_fact]
on [conform].[probation_monitoring_fact]
    ([employee_key]);
go

-- creating foreign key on [probation_end_date_key] in table 'probation_monitoring_fact'
alter table [conform].[probation_monitoring_fact]
add constraint [fk_date_dimprobation_monitoring_fact]
    foreign key ([probation_end_date_key])
    references [conform].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_date_dimprobation_monitoring_fact'
create index [ix_fk_date_dimprobation_monitoring_fact]
on [conform].[probation_monitoring_fact]
    ([probation_end_date_key]);
go

-- creating foreign key on [organisation_key] in table 'probation_monitoring_fact'
alter table [conform].[probation_monitoring_fact]
add constraint [fk_organisation_dimprobation_monitoring_fact]
    foreign key ([organisation_key])
    references [conform].[organisation_dim]
        ([organisation_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_organisation_dimprobation_monitoring_fact'
create index [ix_fk_organisation_dimprobation_monitoring_fact]
on [conform].[probation_monitoring_fact]
    ([organisation_key]);
go

-- creating foreign key on [portfolio_key] in table 'probation_monitoring_fact'
alter table [conform].[probation_monitoring_fact]
add constraint [fk_portfolio_dimprobation_monitoring_fact]
    foreign key ([portfolio_key])
    references [conform].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_portfolio_dimprobation_monitoring_fact'
create index [ix_fk_portfolio_dimprobation_monitoring_fact]
on [conform].[probation_monitoring_fact]
    ([portfolio_key]);
go

-- creating foreign key on [service_stream_key] in table 'probation_monitoring_fact'
alter table [conform].[probation_monitoring_fact]
add constraint [fk_service_stream_dimprobation_monitoring_fact]
    foreign key ([service_stream_key])
    references [conform].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_service_stream_dimprobation_monitoring_fact'
create index [ix_fk_service_stream_dimprobation_monitoring_fact]
on [conform].[probation_monitoring_fact]
    ([service_stream_key]);
go

-- creating foreign key on [program_key] in table 'probation_monitoring_fact'
alter table [conform].[probation_monitoring_fact]
add constraint [fk_program_dimprobation_monitoring_fact]
    foreign key ([program_key])
    references [conform].[program_dim]
        ([program_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_program_dimprobation_monitoring_fact'
create index [ix_fk_program_dimprobation_monitoring_fact]
on [conform].[probation_monitoring_fact]
    ([program_key]);
go