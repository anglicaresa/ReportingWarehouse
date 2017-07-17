

-- creating table 'employee_dim'
create table [conform].[employee_dim] (
    [employee_key] int identity(1,1) not null,
    [id_number] int  null,
    [given_name] varchar(50)  null,
    [family_name] varchar(50)  null,
	[preferred_name] varchar(50)  null,
	[gender] varchar(10)  null,
	[date_of_birth] datetime  null,
	[passport_number] varchar(30)  null,
	[visa_number] varchar(30)  null,
	[country_of_origin] varchar(50)  null,
    [email] varchar(100) null,
	[mobile_phone] varchar(20) null,
    [change_reason_code] varchar(5)  null,
    [change_reason_description] varchar(50)  null,
    [row_effective_date] datetime  null,
    [row_expiration_date] datetime  null,
    [current_row_indicator] nvarchar(1)  null,
);
go

-- creating primary key on [employee_key] in table 'employee_dim'
alter table [conform].[employee_dim]
add constraint [pk_employee_dim]
    primary key clustered ([employee_key] asc);
go