-- creating table 'account_dim'
create table [conform].[account_dim] (
    [account_key] int identity(1,1) not null,
	[ledger_name] varchar(8) null,
	[account_number_raw] varchar(32) null,
	[account_number] varchar(32) null,
	[short_description] varchar(15) null,
	[description] varchar(192) null,
	[entity] varchar(32) null,
	[cost_centre] varchar(32) null,
	[activity_account] varchar(32) null,
	[natural_account] varchar(32) null,
	[account_type] varchar(32) null,
	[status] varchar(1) null,
	[entity_description] varchar(15) null,
	[cost_centre_description] varchar(15) null,
	[activity_account_description] varchar(15) null,
	[natural_account_description] varchar(15) null,
	[account_type_description] varchar(15) null,
	[change_reason_code] varchar(5)  null,
    [change_reason_description] varchar(50)  null,
    [row_effective_date] datetime  null,
    [row_expiration_date] datetime  null,
    [current_row_indicator] varchar(1)  null,
);
go
-- creating primary key on [accreditation_key] in table 'accreditation_dim'
alter table [conform].[account_dim]
add constraint [pk_account_dim]
    primary key clustered ([account_key] asc);
go