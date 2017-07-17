create table [conform_comcare].[customer_dim] (
 	[customer_key] int identity(1,1) not null,
	[client_id] int null,
	[title] varchar(6) null,
	[given_name] varchar(50) null,
	[preferred_name] varchar(50) null,
	[family_name] varchar(50) null,
	[date_of_birth] date null,
	[gender] varchar(1) null,
	[residential_address_line1] varchar(50) null,
	[residential_address_line2] varchar(70) null,
	[residential_city] varchar(50) null,
	[residential_state] varchar(50) null,
	[residential_post_code] varchar(10) null,
	[business_address_line1] varchar(50) null,
	[business_address_line2] varchar(70) null,
	[business_city] varchar(50) null,
	[business_state] varchar(50) null,
	[business_post_code] varchar(10) null,
	[mailing_address_line1] varchar(50) null,
	[mailing_address_line2] varchar(70) null,
	[mailing_city] varchar(50) null,
	[mailing_state] varchar(50) null,
	[mailing_post_code] varchar(10) null,
	[billing_address_line1] varchar(50) null,
	[billing_address_line2] varchar(70) null,
	[billing_city] varchar(50) null,
	[billing_state] varchar(50) null,
	[billing_post_code] varchar(10) null,

	[amount_transferred_in] decimal(28,5),
	[amount_transferred_out] decimal(28,5),
	[amount_transferred_in_client] decimal(28,5),
	[amount_transferred_out_client] decimal(28,5),
	[change_reason_code] varchar(5) null,
	[change_reason_description] varchar(50) null,
	[row_effective_date] datetime null,
	[row_expiration_date] datetime null,
	[current_row_indicator] varchar(1) null,
	[cim_id_number] varchar(30)
);

go

-- PK
alter table [conform_comcare].[customer_dim]
add constraint [pk_customer_dim]
    primary key clustered ([customer_key] asc);
go