-- creating table 'error_event_detail_fact'
create table [management].[error_event_detail_fact] (
    [error_event_key] int identity(1,1) not null,
    [date_dim_date_key] int  not null,
    [batch_dim_batch_key] int  not null,
    [table_dim_table_key] int  not null,
    [table_pk] nvarchar(max)  not null,
    [error_condition] nvarchar(max)  not null,
    [field_name] nvarchar(max)  not null,
    [package_key] int  not null
);
go

-- creating primary key on [error_event_key] in table 'error_event_detail_fact'
alter table [management].[error_event_detail_fact]
add constraint [pk_error_event_detail_fact]
    primary key clustered ([error_event_key] asc);
go

-- creating foreign key on [date_dim_date_key] in table 'error_event_detail_fact'
alter table [management].[error_event_detail_fact]
add constraint [fk_date_dimerror_event_detail_fact]
    foreign key ([date_dim_date_key])
    references [management].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- creating foreign key on [batch_dim_batch_key] in table 'error_event_detail_fact'
alter table [management].[error_event_detail_fact]
add constraint [fk_batch_dimerror_event_detail_fact]
    foreign key ([batch_dim_batch_key])
    references [management].[batch_dim]
        ([batch_key])
    on delete no action on update no action;
go

-- creating foreign key on [table_dim_table_key] in table 'error_event_detail_fact'
alter table [management].[error_event_detail_fact]
add constraint [fk_table_dimerror_event_detail_fact]
    foreign key ([table_dim_table_key])
    references [management].[table_dim]
        ([table_key])
    on delete no action on update no action;
go

-- creating foreign key on [package_key] in table 'error_event_detail_fact'
alter table [management].[error_event_detail_fact]
add constraint [fk_package_dimerror_event_detail_fact]
    foreign key ([package_key])
    references [management].[package_dim]
        ([package_key])
    on delete no action on update no action;
go


