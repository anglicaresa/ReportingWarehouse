create table [conform_comcare].[transaction_type_dim] (
	[transaction_type_key] int identity(1,1) not null,
	[transaction_type_natural_key] int,
	[transaction_type_description] varchar(50),
	[transaction_source] varchar(50),
	[effective_from_date] date,
	[effective_to_date] date,
	[category_code] varchar(6),
	[change_reason_code] varchar(5) null,
	[change_reason_description] varchar(50) null,
	[row_effective_date] datetime null,
	[row_expiration_date] datetime null,
	[current_row_indicator] varchar(1) null

);

go

-- PK
alter table [conform_comcare].[transaction_type_dim]
add constraint [pk_transaction_type_dim]
    primary key clustered ([transaction_type_key] asc);
go