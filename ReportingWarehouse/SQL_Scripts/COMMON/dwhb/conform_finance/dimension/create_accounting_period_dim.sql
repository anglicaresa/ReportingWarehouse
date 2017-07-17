create table [conform_finance].[accounting_period_dim] (
	[accounting_period_key]		int	identity(1,1) not null,
	[period_no]		int	,
	[quarter]		int	,
	[description]		varchar	(50),
	[fiscal_year]		int			,
	[change_reason_code]		varchar (5),
	[change_reason_description]		varchar	(50),
	[row_effective_date]		datetime	,
	[row_expiration_date]		datetime	,
	[current_row_indicator]		varchar(1)
);

-- PK
alter table [conform_finance].[accounting_period_dim]
add constraint [pk_accounting_period_dim]
    primary key clustered ([accounting_period_key] asc);
go
