create table [management].[table_dim] (
    [table_key] int identity(1,1) not null,
    [table_name] nvarchar(max)  not null,
    [system] nvarchar(max)  not null,
    [schema] nvarchar(max)  not null,
    [database] nvarchar(max)  not null,
    [server] nvarchar(max)  not null
);

alter table [management].[table_dim]
add constraint [pk_table_dim]
    primary key clustered ([table_key] asc);