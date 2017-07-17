
-- creating table 'employee_payment_dim'
create table [hris].[employee_payment_dim] (
    [employee_payment_key] int not null,
	[change_reason_code] nvarchar(5)  null,
    [change_reason_description] nvarchar(50)  null,
    [row_effective_date] datetime  null,
    [row_expiration_date] datetime  null,
    [current_row_indicator] nvarchar(1)  null,
);
go

-- creating primary key on [employee_payment_key] in table 'employee_payment_dim'
alter table [hris].[employee_payment_dim]
add constraint [pk_employee_payment_dim]
    primary key clustered ([employee_payment_key] asc);
go