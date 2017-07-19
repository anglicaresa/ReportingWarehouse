create table [conform_finance].[account_dim] (
	[account_key] int identity(1,1) not null	,
	[account_name] VARCHAR	(60),
	[account_number] VARCHAR	(32),
	[entity] VARCHAR	(32),
	[debtor] VARCHAR	(32),
	[costing] VARCHAR	(32),
	[activity_account]		VARCHAR	(32),
	[natural_account]		VARCHAR	(32),
	[chart_name]		VARCHAR	(8),
	[short_description]		VARCHAR	(15),
	[post_name]		VARCHAR	(120),
	[pay_name]		VARCHAR	(120),
	[address_line_1]		VARCHAR	(50),
	[address_line_2]		VARCHAR	(50),
	[address_line_3]		VARCHAR	(50),
	[city]		VARCHAR	(50),
	[state]		VARCHAR	(50),
	[postcode]		VARCHAR	(15),
	[telephone]		VARCHAR	(20),
	[abn]		VARCHAR	(20),
	[contact_name]		VARCHAR	(60),
	[contact_details]		VARCHAR	(40),
	[bank_name]		VARCHAR	(40),
	[bsb_code]		VARCHAR	(20),
	[bank_account]		VARCHAR	(50),
	[credit_limit]		DECIMAL	(14,2),
	[payment_term_days]		int	,
	[change_reason_code]		VARCHAR	(5),
	[change_reason_description]		VARCHAR	(50),
	[row_effective_date]		datetime	,
	[row_expiration_date]		datetime	,
	[current_row_indicator]		VARCHAR(1)
);

-- PK
alter table [conform_finance].[account_dim]
add constraint [pk_account_dim]
    primary key clustered ([account_key] asc);
go