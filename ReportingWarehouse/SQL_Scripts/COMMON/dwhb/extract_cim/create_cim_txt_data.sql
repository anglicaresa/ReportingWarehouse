create table [extract_cim].[cim_txn_data] (
 	[cim_txn_data_key] int identity(1,1) not null,
	[id_number] int,
	[surname] varchar(30),
	[preferred_name] varchar(30),
	[program_code] varchar(10),
	[client_no] int,
	[cdc_subsidy_balance] decimal(12,2),
	[client_fee_balance] decimal(12,2),
	[cdc_client_fee_balance_1] decimal(12,2),
	[cdc_client_fee_balance_2] decimal(12,2),
	[cdc_client_fee_balance_3] decimal(12,2),
	[cdc_client_fee_balance_4] decimal(12,2),
	[cdc_client_fee_balance_5] decimal(12,2),
	[description] varchar(50),
	[transaction_date] date,
	[narration] varchar(50),
	[from_module] varchar(20),
	[from_batch_type] varchar(1),
	[total_amount] decimal(12,2),
	[invoice_no] int,
	[debtor_type] varchar(1),
	[cdc_type] varchar(1),
	[charge_code] varchar(20),
	[amount] decimal(12,2),
	[portion] varchar(20),
	[commonwealth_value] decimal(12,2),
	[client_value] decimal(12,2),
	[client_identifier] varchar(30)
	);
	go

	-- PK
alter table [extract_cim].[cim_txn_data]
add constraint [pk_cim_txn_data]
    primary key clustered ([cim_txn_data_key] asc);
go
