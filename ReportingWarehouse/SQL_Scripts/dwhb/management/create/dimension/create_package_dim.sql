-- creating table 'package_dim'
create table [management].[package_dim] (
    [package_key] int identity(1,1) not null,
    [package_name] nvarchar(max)  not null,
    [sub_system] nvarchar(max)  not null
);

-- creating primary key on [package_key] in table 'package_dim'
alter table [management].[package_dim]
add constraint [pk_package_dim]
    primary key clustered ([package_key] asc);