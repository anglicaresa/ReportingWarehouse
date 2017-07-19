create table [conform_finance].[ledger_dim] (
	[ledger_key]		int identity(1,1) not null,	
	[name]		varchar	(50),
	[change_reason_code]		varchar	(5),
	[change_reason_description]		varchar	(50),
	[row_effective_date]		datetime	,
	[row_expiration_date]		datetime	,
	[current_row_indicator]		varchar	(1)
);

-- PK
alter table [conform_finance].[ledger_dim]
add constraint [pk_ledger_dim]
    primary key clustered ([ledger_key] asc);
go
