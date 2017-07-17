-- creating table 'error_event_fact'
create table [management].[error_event_fact] (
    [error_event_key] int identity(1,1) not null,
    [batch_key] int  not null,
    [date_key] int  not null,
    [error_date_time] nvarchar(max)  not null,
    [error_severity] nvarchar(max)  not null,
    [package_key] int  not null
);
go


-- creating primary key on [error_event_key] in table 'error_event_fact'
alter table [management].[error_event_fact]
add constraint [pk_error_event_fact]
    primary key clustered ([error_event_key] asc);
go

-- creating foreign key on [batch_key] in table 'error_event_fact'
alter table [management].[error_event_fact]
add constraint [fk_error_event_factbatch_dim]
    foreign key ([batch_key])
    references [management].[batch_dim]
        ([batch_key])
    on delete no action on update no action;
go

-- creating foreign key on [date_key] in table 'error_event_fact'
alter table [management].[error_event_fact]
add constraint [fk_date_dimerror_event_fact]
    foreign key ([date_key])
    references [management].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- creating foreign key on [package_key] in table 'error_event_fact'
alter table [management].[error_event_fact]
add constraint [fk_package_dimerror_event_fact]
    foreign key ([package_key])
    references [management].[package_dim]
        ([package_key])
    on delete no action on update no action;
go


