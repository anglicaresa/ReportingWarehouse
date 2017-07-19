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

-- creating foreign key on [account_key] in table [DEBTOR_FACT]
alter table [conform_finance].[DEBTOR_FACT]
add constraint [fk_conform_finance_DEBTOR_FACT_account_key]
    foreign key ([account_key])
    references [conform_finance].[account_dim]
        (account_key)
    on delete no action on update no action;
go
-- creating foreign key on [cost_centre_key] in table [DEBTOR_FACT]
alter table [conform_finance].[DEBTOR_FACT]
add constraint [fk_conform_finance_DEBTOR_FACT_cost_centre_key]
    foreign key ([cost_centre_key])
    references [conform_finance].[cost_centre_dim]
        (cost_centre_key)
    on delete no action on update no action;
go
-- creating foreign key on [portfolio_key] in table [DEBTOR_FACT]
alter table [conform_finance].[DEBTOR_FACT]
add constraint [fk_conform_finance_DEBTOR_FACT_portfolio_key]
    foreign key ([portfolio_key])
    references [conform_finance].[portfolio_dim]
        (portfolio_key)
    on delete no action on update no action;
go
-- creating foreign key on [service_stream_key] in table [DEBTOR_FACT]
alter table [conform_finance].[DEBTOR_FACT]
add constraint [fk_conform_finance_DEBTOR_FACT_service_stream_key]
    foreign key ([service_stream_key])
    references [conform_finance].[service_stream_dim]
        (service_stream_key)
    on delete no action on update no action;
go
-- creating foreign key on [program_key] in table [DEBTOR_FACT]
alter table [conform_finance].[DEBTOR_FACT]
add constraint [fk_conform_finance_DEBTOR_FACT_program_key]
    foreign key ([program_key])
    references [conform_finance].[program_dim]
        (program_key)
    on delete no action on update no action;
go
-- creating foreign key on [accounting_period_key] in table [DEBTOR_FACT]
alter table [conform_finance].[DEBTOR_FACT]
add constraint [fk_conform_finance_DEBTOR_FACT_accounting_period_key]
    foreign key ([accounting_period_key])
    references [conform_finance].[accounting_period_dim]
        (accounting_period_key)
    on delete no action on update no action;
go
-- creating foreign key on [date_received_key] in table [DEBTOR_FACT]
alter table [conform_finance].[DEBTOR_FACT]
add constraint [fk_conform_finance_DEBTOR_FACT_date_received_key]
    foreign key ([date_received_key])
    references [conform_finance].[date_dim]
        (date_key)
    on delete no action on update no action;
go
-- creating foreign key on [date_processed_key] in table [DEBTOR_FACT]
alter table [conform_finance].[DEBTOR_FACT]
add constraint [fk_conform_finance_DEBTOR_FACT_date_processed_key]
    foreign key ([date_processed_key])
    references [conform_finance].[date_dim]
        (date_key)
    on delete no action on update no action;
go
-- creating foreign key on [ledger_key] in table [DEBTOR_FACT]
alter table [conform_finance].[DEBTOR_FACT]
add constraint [fk_conform_finance_DEBTOR_FACT_ledger_key]
    foreign key ([ledger_key])
    references [conform_finance].[ledger_dim]
        (ledger_key)
    on delete no action on update no action;
go