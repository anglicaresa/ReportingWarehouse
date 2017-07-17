create table [management].[batch_dim] (
    [batch_key] int identity(1,1) not null,
    [batch_type] nvarchar(max)  not null
);


alter table [management].[batch_dim]
add constraint [pk_batch_dim]
    primary key clustered ([batch_key] asc);