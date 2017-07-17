create table [management].[status_dim] (
    [status_key] int identity(1,1) not null,
    [status_name] nvarchar(max)  not null
);

alter table [management].[status_dim]
add constraint [pk_status_dim]
    primary key clustered ([status_key] asc);