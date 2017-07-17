

-- creating table 'portfolio_dim'
create table [conform_riskman].[portfolio_dim] (
    [portfolio_key] int identity(1,1) not null,
    [portfolio_name] varchar(50)  null,
	[portfolio_code] varchar(20)  not null,
	[change_reason_code] nvarchar(5)  null,
    [change_reason_description] nvarchar(50)  null,
    [row_effective_date] datetime  null,
    [row_expiration_date] datetime  null,
    [current_row_indicator] nvarchar(1)  null,
);
go

-- creating primary key on [portfolio_key] in table 'portfolio_dim'
alter table [conform_riskman].[portfolio_dim]
add constraint [pk_portfolio_dim]
    primary key clustered ([portfolio_key] asc);
go