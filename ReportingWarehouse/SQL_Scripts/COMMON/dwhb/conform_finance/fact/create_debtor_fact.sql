create table [conform_finance].[debtor_fact] (
	[debtor_key]	int	identity(1,1) not null,
	[account_key]		int	not null,
	[cost_centre_key] int not null,
	[portfolio_key] int not null,
	[service_stream_key] int not null,
	[program_key] int not null,
	[accounting_period_key] int not null,
	[date_received_key] int not null,
	[date_processed_key] int not null,
	[ledger_key] int not null,
	[reference]		varchar	(30),
	[amount]		decimal	(15,2)
);


-- PK
alter table [conform_finance].[debtor_fact]
add constraint [pk_debtor_fact]
    primary key clustered ([debtor_key] asc);
go