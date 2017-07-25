
USE [dwhf_finance];
GO
IF OBJECT_ID(N'[finance].[debtor_fact]', 'U') IS NOT NULL
    DROP TABLE [finance].[debtor_fact];
GO

create table [finance].[debtor_fact] (
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
	[amount]		decimal	(15,2),
    [due_datei] datetime,
    [narr1] VARCHAR (40),
    [narr2] VARCHAR (40),
    [narr3] VARCHAR (40)
);


-- PK
alter table [finance].[debtor_fact]
add constraint [pk_debtor_fact]
    primary key clustered ([debtor_key] asc);
go

-- creating foreign key on [account_key] in table [DEBTOR_FACT]
alter table [finance].[DEBTOR_FACT]
add constraint [fk_finance_DEBTOR_FACT_account_key]
    foreign key ([account_key])
    references [finance].[account_dim]
        (account_key)
    on delete no action on update no action;
go
-- creating foreign key on [cost_centre_key] in table [DEBTOR_FACT]
alter table [finance].[DEBTOR_FACT]
add constraint [fk_finance_DEBTOR_FACT_cost_centre_key]
    foreign key ([cost_centre_key])
    references [finance].[cost_centre_dim]
        (cost_centre_key)
    on delete no action on update no action;
go
-- creating foreign key on [portfolio_key] in table [DEBTOR_FACT]
alter table [finance].[DEBTOR_FACT]
add constraint [fk_finance_DEBTOR_FACT_portfolio_key]
    foreign key ([portfolio_key])
    references [finance].[portfolio_dim]
        (portfolio_key)
    on delete no action on update no action;
go
-- creating foreign key on [service_stream_key] in table [DEBTOR_FACT]
alter table [finance].[DEBTOR_FACT]
add constraint [fk_finance_DEBTOR_FACT_service_stream_key]
    foreign key ([service_stream_key])
    references [finance].[service_stream_dim]
        (service_stream_key)
    on delete no action on update no action;
go
-- creating foreign key on [program_key] in table [DEBTOR_FACT]
alter table [finance].[DEBTOR_FACT]
add constraint [fk_finance_DEBTOR_FACT_program_key]
    foreign key ([program_key])
    references [finance].[program_dim]
        (program_key)
    on delete no action on update no action;
go
-- creating foreign key on [accounting_period_key] in table [DEBTOR_FACT]
alter table [finance].[DEBTOR_FACT]
add constraint [fk_finance_DEBTOR_FACT_accounting_period_key]
    foreign key ([accounting_period_key])
    references [finance].[accounting_period_dim]
        (accounting_period_key)
    on delete no action on update no action;
go
-- creating foreign key on [date_received_key] in table [DEBTOR_FACT]
alter table [finance].[DEBTOR_FACT]
add constraint [fk_finance_DEBTOR_FACT_date_received_key]
    foreign key ([date_received_key])
    references [finance].[date_dim]
        (date_key)
    on delete no action on update no action;
go
-- creating foreign key on [date_processed_key] in table [DEBTOR_FACT]
alter table [finance].[DEBTOR_FACT]
add constraint [fk_finance_DEBTOR_FACT_date_processed_key]
    foreign key ([date_processed_key])
    references [finance].[date_dim]
        (date_key)
    on delete no action on update no action;
go
-- creating foreign key on [ledger_key] in table [DEBTOR_FACT]
alter table [finance].[DEBTOR_FACT]
add constraint [fk_finance_DEBTOR_FACT_ledger_key]
    foreign key ([ledger_key])
    references [finance].[ledger_dim]
        (ledger_key)
    on delete no action on update no action;
go