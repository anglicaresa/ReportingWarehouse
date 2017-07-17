

-- creating table 'organisation_dim'
create table [conform].[organisation_dim] (
    [organisation_key] int identity(1,1) not null,
    [organisation_name] nvarchar(max)  not null,
	[organisation_code] varchar(20)  not null,
	[change_reason_code] nvarchar(5)  null,
    [change_reason_description] nvarchar(50)  null,
    [row_effective_date] datetime  null,
    [row_expiration_date] datetime  null,
    [current_row_indicator] nvarchar(1)  null,
);
go

-- creating primary key on [organisation_key] in table 'organisation_dim'
alter table [conform].[organisation_dim]
add constraint [pk_organisation_dim]
    primary key clustered ([organisation_key] asc);
go