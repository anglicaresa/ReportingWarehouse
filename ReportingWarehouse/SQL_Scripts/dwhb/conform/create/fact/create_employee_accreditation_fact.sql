-- creating table 'employee_accreditation_fact'
create table [conform].[employee_accreditation_fact] (
    [employee_accreditation_key] int identity(1,1) not null,
    [employee_key] int  not null,
    [received_date_key] int  not null,
	[valid_until_date_key] int  not null,
	[renewal_sent_date_key] int  not null,
	[expiry_date_key] int  not null,
	[organisation_key] int  not null,
    [portfolio_key] int  not null,
    [service_stream_key] int  not null,
    [program_key] int  not null,
    [accreditation_key] int  not null,
	[convictions] varchar(50) null,
	[reference_no] varchar(20) null
    
);
go

-- creating primary key on [employee_accreditation_key] in table 'employee_accreditation_fact'
alter table [conform].[employee_accreditation_fact]
add constraint [pk_employee_accreditation_fact]
    primary key clustered ([employee_accreditation_key] asc);
go


-- creating foreign key on [employee_key] in table 'employee_accreditation_fact'
alter table [conform].[employee_accreditation_fact]
add constraint [fk_employee_dimemployee_accreditation_fact]
    foreign key ([employee_key])
    references [conform].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_employee_dimemployee_accreditation_fact'
create index [ix_fk_employee_dimemployee_accreditation_fact]
on [conform].[employee_accreditation_fact]
    ([employee_key]);
go

-- creating foreign key on [received_date_key] in table 'employee_accreditation_fact'
alter table [conform].[employee_accreditation_fact]
add constraint [fk_employee_accreditation_fact_received_date_key]
    foreign key ([received_date_key])
    references [conform].[date_dim]
        ([date_key])
    on delete no action on update no action;
go
-- creating non-clustered index for foreign key '[fk_employee_accreditation_fact_received_date_key]'
create index [ix_fk_employee_accreditation_fact_received_date_key]
on [conform].[employee_accreditation_fact]
    ([received_date_key]);
go
-- creating foreign key on [valid_until_date_key] in table 'employee_accreditation_fact'
alter table [conform].[employee_accreditation_fact]
add constraint [fk_employee_accreditation_fact_valid_until_date_key]
    foreign key ([valid_until_date_key])
    references [conform].[date_dim]
        ([date_key])
    on delete no action on update no action;
go
-- creating non-clustered index for foreign key '[fk_employee_accreditation_fact_valid_until_date_key]'
create index [ix_fk_employee_accreditation_fact_valid_until_date_key]
on [conform].[employee_accreditation_fact]
    ([valid_until_date_key]);
go

-- creating foreign key on [organisation_key] in table 'employee_accreditation_fact'
alter table [conform].[employee_accreditation_fact]
add constraint [fk_organisation_dimemployee_accreditation_fact]
    foreign key ([organisation_key])
    references [conform].[organisation_dim]
        ([organisation_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_organisation_dimemployee_accreditation_fact'
create index [ix_fk_organisation_dimemployee_accreditation_fact]
on [conform].[employee_accreditation_fact]
    ([organisation_key]);
go

-- creating foreign key on [portfolio_key] in table 'employee_accreditation_fact'
alter table [conform].[employee_accreditation_fact]
add constraint [fk_portfolio_dimemployee_accreditation_fact]
    foreign key ([portfolio_key])
    references [conform].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_portfolio_dimemployee_accreditation_fact'
create index [ix_fk_portfolio_dimemployee_accreditation_fact]
on [conform].[employee_accreditation_fact]
    ([portfolio_key]);
go

-- creating foreign key on [service_stream_key] in table 'employee_accreditation_fact'
alter table [conform].[employee_accreditation_fact]
add constraint [fk_service_stream_dimemployee_accreditation_fact]
    foreign key ([service_stream_key])
    references [conform].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_service_stream_dimemployee_accreditation_fact'
create index [ix_fk_service_stream_dimemployee_accreditation_fact]
on [conform].[employee_accreditation_fact]
    ([service_stream_key]);
go

-- creating foreign key on [program_key] in table 'employee_accreditation_fact'
alter table [conform].[employee_accreditation_fact]
add constraint [fk_program_dimemployee_accreditation_fact]
    foreign key ([program_key])
    references [conform].[program_dim]
        ([program_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_program_dimemployee_accreditation_fact'
create index [ix_fk_program_dimemployee_accreditation_fact]
on [conform].[employee_accreditation_fact]
    ([program_key]);
go

-- creating foreign key on [accreditation_key] in table 'employee_accreditation_fact'
alter table [conform].[employee_accreditation_fact]
add constraint [fk_employee_accreditation_dimemployee_accreditation_fact]
    foreign key ([accreditation_key])
    references [conform].[accreditation_dim]
        ([accreditation_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_employee_accreditation_dimemployee_accreditation_fact'
create index [ix_fk_employee_accreditation_dimemployee_accreditation_fact]
on [conform].[employee_accreditation_fact]
    ([accreditation_key]);
go

-- creating foreign key on [expiry_date_key] in table 'employee_accreditation_fact'
alter table [conform].[employee_accreditation_fact]
add constraint [fk_date_dimemployee_accreditation_fact1]
    foreign key ([expiry_date_key])
    references [conform].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_date_dimemployee_accreditation_fact1'
create index [ix_fk_date_dimemployee_accreditation_fact1]
on [conform].[employee_accreditation_fact]
    ([expiry_date_key]);
go

-- creating foreign key on [renewal_sent_date_key] in table 'employee_accreditation_fact'
alter table [conform].[employee_accreditation_fact]
add constraint [fk_employee_accreditation_fact_renewal_send_date]
    foreign key ([renewal_sent_date_key])
    references [conform].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key '[fk_employee_accreditation_fact_renewal_send_date]'
create index [ix_fk_employee_accreditation_fact_renewal_send_date]
on [conform].[employee_accreditation_fact]
    ([renewal_sent_date_key]);
go
