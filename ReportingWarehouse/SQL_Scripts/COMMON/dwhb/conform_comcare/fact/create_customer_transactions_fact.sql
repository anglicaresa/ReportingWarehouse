create table [conform_comcare].[customer_transactions_fact] (
	[customer_transaction_key] int identity(1,1) not null,
	[customer_key] int not null,
	[date_key] int not null,
	[transaction_type_key] int not null,
	[program_key] int not null,
	[responsible_party_key] int not null,
	[amount] decimal(28,5),
	[balance] decimal(28,5),
	[transaction_source] varchar(255),
	[description] varchar(255),
	[comments] varchar(255),
	[source_system] varchar(20)
);

go

-- PK
alter table [conform_comcare].[customer_transactions_fact]
add constraint [pk_customer_transactions_fact]
    primary key clustered ([customer_transaction_key] asc);
go

-- FK customer_dim
alter table [conform_comcare].[customer_transactions_fact]
add constraint [fk_customer_transactions_customer_key]
    foreign key ([customer_key])
    references [conform_comcare].[customer_dim]
        ([customer_key])
    on delete no action on update no action;
go


-- FK date_dim
alter table [conform_comcare].[customer_transactions_fact]
add constraint [fk_customer_transactions_date_key]
    foreign key ([date_key])
    references [conform_comcare].[date_dim]
        ([date_key])
    on delete no action on update no action;
go


-- FK transaction_type_dim
alter table [conform_comcare].[customer_transactions_fact]
add constraint [fk_customer_transactions_transaction_type_key]
    foreign key ([transaction_type_key])
    references [conform_comcare].[transaction_type_dim]
        ([transaction_type_key])
    on delete no action on update no action;
go

-- FK program_dim
alter table [conform_comcare].[customer_transactions_fact]
add constraint [fk_customer_transactions_program_key]
    foreign key ([program_key])
    references [conform_comcare].[program_dim]
        ([program_key])
    on delete no action on update no action;
go

-- FK responsible_party_dim
alter table [conform_comcare].[customer_transactions_fact]
add constraint [fk_customer_transactions_responsible_party_key]
    foreign key ([responsible_party_key])
    references [conform_comcare].[responsible_party_dim]
        ([responsible_party_key])
    on delete no action on update no action;
go

