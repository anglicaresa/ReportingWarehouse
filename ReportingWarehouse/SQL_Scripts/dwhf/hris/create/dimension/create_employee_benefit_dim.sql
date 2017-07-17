

-- creating table 'employee_benefit_dim'
create table [hris].[employee_benefit_dim] (
    [employee_benefit_key] int not null,
	[change_reason_code] nvarchar(5)  null,
    [change_reason_description] nvarchar(50)  null,
    [row_effective_date] datetime  null,
    [row_expiration_date] datetime  null,
    [current_row_indicator] nvarchar(1)  null,
);
go

-- creating primary key on [employee_benefit_key] in table 'employee_benefit_dim'
alter table [hris].[employee_benefit_dim]
add constraint [pk_employee_benefit_dim]
    primary key clustered ([employee_benefit_key] asc);
go