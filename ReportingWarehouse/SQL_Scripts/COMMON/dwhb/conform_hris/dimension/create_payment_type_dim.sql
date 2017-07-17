-- creating table 'payment_type_dim'
create table [conform].[payment_type_dim] (
    [payment_type_key] int identity(1,1) not null,
	[pay_component_def] int null,
	[pay_component_ref] decimal(15,6) null,
	[pay_component_description] varchar(50),
	[change_reason_code] varchar(5)  null,
    [change_reason_description] varchar(50)  null,
    [row_effective_date] datetime  null,
    [row_expiration_date] datetime  null,
    [current_row_indicator] varchar(1)  null
);
go
-- creating primary key on [accreditation_key] in table 'accreditation_dim'
alter table [conform].[payment_type_dim]
add constraint [pk_payment_type_dim]
    primary key clustered ([payment_type_key] asc);
go