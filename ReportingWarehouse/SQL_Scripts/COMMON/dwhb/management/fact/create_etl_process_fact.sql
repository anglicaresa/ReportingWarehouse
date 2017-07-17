
-- creating table 'etl_process_fact'
create table [management].[etl_process_fact] (
    [etl_process_key] int identity(1,1) not null,
    [date_key] int  not null,
    [batch_key] int  not null,
    [table_key] int  not null,
    [status_key] int  not null,
    [cdc_date_time] datetime  not null,
    [package_key] int  not null,
	[operation] varchar(50) null
);
go

-- creating primary key on [etl_process_key] in table 'etl_process_fact'
alter table [management].[etl_process_fact]
add constraint [pk_etl_process_fact]
    primary key clustered ([etl_process_key] asc);
go

-- creating foreign key on [date_key] in table 'etl_process_fact'
alter table [management].[etl_process_fact]
add constraint [fk_cdc_load_factdate_dim]
    foreign key ([date_key])
    references [management].[date_dim]
        ([date_key])
    on delete no action on update no action;
go


-- creating foreign key on [batch_key] in table 'etl_process_fact'
alter table [management].[etl_process_fact]
add constraint [fk_cdc_load_factbatch_dim]
    foreign key ([batch_key])
    references [management].[batch_dim]
        ([batch_key])
    on delete no action on update no action;
go

-- creating foreign key on [table_key] in table 'etl_process_fact'
alter table [management].[etl_process_fact]
add constraint [fk_cdc_load_facttable_dim]
    foreign key ([table_key])
    references [management].[table_dim]
        ([table_key])
    on delete no action on update no action;
go

-- creating foreign key on [status_key] in table 'etl_process_fact'
alter table [management].[etl_process_fact]
add constraint [fk_cdc_load_factstatus_dim]
    foreign key ([status_key])
    references [management].[status_dim]
        ([status_key])
    on delete no action on update no action;
go


-- creating foreign key on [package_key] in table 'etl_process_fact'
alter table [management].[etl_process_fact]
add constraint [fk_cdc_load_package_dim]
    foreign key ([package_key])
    references [management].[package_dim]
        ([package_key])
    on delete no action on update no action;
go



