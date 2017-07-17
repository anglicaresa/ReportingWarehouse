

-- creating table 'item_dim'
create table [hris].[item_dim] (
    [item_key] int not null,
	[change_reason_code] nvarchar(5)  null,
    [change_reason_description] nvarchar(50)  null,
    [row_effective_date] datetime  null,
    [row_expiration_date] datetime  null,
    [current_row_indicator] nvarchar(1)  null
);
go

-- creating primary key on [item_key] in table 'item_dim'
alter table [hris].[item_dim]
add constraint [pk_item_dim]
    primary key clustered ([item_key] asc);
go