﻿

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
	[employee_type] varchar(20) null,
	[employee_class] varchar(20) null,
    [change_reason_code] varchar(5)  null,
    [change_reason_description] varchar(50)  null,
    [row_effective_date] datetime  null,
    [row_expiration_date] datetime  null,
    [current_row_indicator] nvarchar(1)  null,
	[pay_per_period] decimal (12,6) null,
	[units_per_period] decimal (9,6) null,
	[rem_level] varchar(60) null,
	[rem_range] varchar(60) null,
	[car_flag] varchar(3) null,
	[phone_flag] varchar(3) null,
	[salary_continuance] varchar(60) null,
	[street_address_line1] varchar(50) null,
	[street_address_line2] varchar(50) null,
	[street_address_line3] varchar(50) null,
	[street_city] varchar(50) null,
	[street_state] varchar(50) null,
	[street_post_code] varchar(10) null,
	[street_country_code] varchar(10) null,
	[street_telephone1] varchar(20) null,
	[street_telephone2] varchar(20) null,
	[street_telephone3] varchar(20) null,
	[street_mobile1] varchar(20) null,
	[street_mobile2] varchar(20) null,
	[street_email1] varchar(100) null,
	[street_email2] varchar(100) null,
	[postal_address_line1] varchar(50) null,
	[postal_address_line2] varchar(50) null,
	[postal_address_line3] varchar(50) null,
	[postal_city] varchar(50) null,
	[postal_state] varchar(50) null,
	[postal_post_code] varchar(10) null,
	[postal_country_code] varchar(10) null,
	[postal_telephone1] varchar(20) null,
	[postal_telephone2] varchar(20) null,
	[postal_telephone3] varchar(20) null,
	[postal_mobile1] varchar(20) null,
	[postal_mobile2] varchar(20) null,
	[postal_email1] varchar(100) null,
	[postal_email2] varchar(100) null,
	[ethnic_group] varchar(10) null,
	[pay_period_unit] varchar(1) null,
	[visa_type] varchar(64) null,
	[fte] decimal(7,6) null,
	[salary] decimal (18,6) null,
	[contact_family_name] varchar(50) null,
	[contact_given_name] varchar(50) null,
	[contact_dependant_flag] varchar(1) null,
	[contact_type] varchar(20) null,
	[contact_address_line1] varchar(50) null,
	[contact_address_line2] varchar(50) null,
	[contact_address_line3] varchar(50) null,
	[contact_address_city] varchar(50) null,
	[contact_address_state] varchar(50) null,
	[contact_address_post_code] varchar(10) null,
	[contact_address_country_code] varchar(10) null,
	[contact_telephone1] varchar(20) null,
	[contact_telephone2] varchar(20) null,
	[contact_telephone3] varchar(20) null,
	[contact_mobile1] varchar(20) null,
	[contact_mobile2] varchar(20) null,
	[contact_email1] varchar(100) null,
	[contact_email2] varchar(100) null,
	[user_id] varchar(14) null,
	[ad_userid] varchar(100) null,
	[ASA_Email] varchar(100) null

);
go

-- creating primary key on [employee_key] in table 'employee_dim'
alter table [conform].[employee_dim]
add constraint [pk_employee_dim]
    primary key clustered ([employee_key] asc);
go