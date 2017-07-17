

-- creating table 'position_dim'
create table [conform].[position_dim] (
    [position_key] int identity(1,1) not null,
    [position_name] varchar(50)  null,
	[position_code] varchar(50)  null,
	[contract_type] varchar(20)  null,
	[condition] varchar(10)  null,
	[grade] varchar(10)  null,
	[level] varchar(10)  null,
	[work_location] varchar(50)  null,
	[change_reason_code] varchar(5)  null,
    [change_reason_description] varchar(50)  null,
    [row_effective_date] datetime  null,
    [row_expiration_date] datetime  null,
    [current_row_indicator] varchar(1)  null,
	[trade_code] varchar(10) null,
	[position_class] varchar(10) null,
	[ts_fmt_name] varchar(10) null
);
go

-- creating primary key on [position_key] in table 'position_dim'
alter table [conform].[position_dim]
add constraint [pk_position_dim]
    primary key clustered ([position_key] asc);
go