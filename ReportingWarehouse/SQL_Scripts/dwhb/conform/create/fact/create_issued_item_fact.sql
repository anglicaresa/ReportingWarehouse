-- creating table 'issued_item_fact'
create table [conform].[issued_item_fact] (
    [issued_item_key] int identity(1,1) not null,
    [item_key] int  not null,
    [issued_date_key] int  not null,
	[returned_date_key] int  not null,
	[returned_reason] varchar(50) not null,
    [employee_key] int  not null,
    [organisation_key] int  not null,
    [portfolio_key] int  not null,
    [service_stream_key] int  not null,
    [program_key] int  not null,
    [position_key] int  not null
);
go

-- creating primary key on [issued_item_key] in table 'issued_item_fact'
alter table [conform].[issued_item_fact]
add constraint [pk_issued_item_fact]
    primary key clustered ([issued_item_key] asc);
go

-- creating foreign key on [item_key] in table 'issued_item_fact'
alter table [conform].[issued_item_fact]
add constraint [fk_item_dimissued_item_fact]
    foreign key ([item_key])
    references [conform].[item_dim]
        ([item_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_item_dimissued_item_fact'
create index [ix_fk_item_dimissued_item_fact]
on [conform].[issued_item_fact]
    ([item_key]);
go

-- creating foreign key on [issued_date_key] in table 'issued_item_fact'
alter table [conform].[issued_item_fact]
add constraint [fk_date_dimissued_item_fact]
    foreign key ([issued_date_key])
    references [conform].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_date_dimissued_item_fact'
create index [ix_fk_date_dimissued_item_fact]
on [conform].[issued_item_fact]
    ([issued_date_key]);
go
-- creating foreign key on [returned_date_key] in table 'issued_item_fact'
alter table [conform].[issued_item_fact]
add constraint [fk_issued_item_fact_returned_date]
    foreign key ([returned_date_key])
    references [conform].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key '[returned_date_key]'
create index [fk_issued_item_fact_returned_date]
on [conform].[issued_item_fact]
    ([returned_date_key]);
go
-- creating foreign key on [employee_key] in table 'issued_item_fact'
alter table [conform].[issued_item_fact]
add constraint [fk_employee_dimissued_item_fact]
    foreign key ([employee_key])
    references [conform].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_employee_dimissued_item_fact'
create index [ix_fk_employee_dimissued_item_fact]
on [conform].[issued_item_fact]
    ([employee_key]);
go

-- creating foreign key on [returned_date_key] in table 'issued_item_fact'
alter table [conform].[issued_item_fact]
add constraint [fk_date_dimissued_item_fact1]
    foreign key ([returned_date_key])
    references [conform].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_date_dimissued_item_fact1'
create index [ix_fk_date_dimissued_item_fact1]
on [conform].[issued_item_fact]
    ([returned_date_key]);
go

-- creating foreign key on [organisation_key] in table 'issued_item_fact'
alter table [conform].[issued_item_fact]
add constraint [fk_organisation_dimissued_item_fact]
    foreign key ([organisation_key])
    references [conform].[organisation_dim]
        ([organisation_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_organisation_dimissued_item_fact'
create index [ix_fk_organisation_dimissued_item_fact]
on [conform].[issued_item_fact]
    ([organisation_key]);
go

-- creating foreign key on [portfolio_key] in table 'issued_item_fact'
alter table [conform].[issued_item_fact]
add constraint [fk_portfolio_dimissued_item_fact]
    foreign key ([portfolio_key])
    references [conform].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_portfolio_dimissued_item_fact'
create index [ix_fk_portfolio_dimissued_item_fact]
on [conform].[issued_item_fact]
    ([portfolio_key]);
go

-- creating foreign key on [service_stream_key] in table 'issued_item_fact'
alter table [conform].[issued_item_fact]
add constraint [fk_service_stream_dimissued_item_fact]
    foreign key ([service_stream_key])
    references [conform].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_service_stream_dimissued_item_fact'
create index [ix_fk_service_stream_dimissued_item_fact]
on [conform].[issued_item_fact]
    ([service_stream_key]);
go

-- creating foreign key on [program_key] in table 'issued_item_fact'
alter table [conform].[issued_item_fact]
add constraint [fk_program_dimissued_item_fact]
    foreign key ([program_key])
    references [conform].[program_dim]
        ([program_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_program_dimissued_item_fact'
create index [ix_fk_program_dimissued_item_fact]
on [conform].[issued_item_fact]
    ([program_key]);
go

-- creating foreign key on [position_key] in table 'issued_item_fact'
alter table [conform].[issued_item_fact]
add constraint [fk_position_dimissued_item_fact]
    foreign key ([position_key])
    references [conform].[position_dim]
        ([position_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_position_dimissued_item_fact'
create index [ix_fk_position_dimissued_item_fact]
on [conform].[issued_item_fact]
    ([position_key]);
go
