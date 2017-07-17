
-- creating table 'month_dim'
create table [conform].[month_dim] (
    [month_key] int identity(1,1) not null,
    [month_name] nvarchar(max)  not null,
    [month_number] nvarchar(max)  not null,
    [quarter_number] nvarchar(max)  not null,
    [quarter_name] nvarchar(max)  not null,
	[year] nvarchar(max)  not null
);
go

-- creating primary key on [month_key] in table 'month_dim'
alter table [conform].[month_dim]
add constraint [pk_month_dim]
    primary key clustered ([month_key] asc);
go