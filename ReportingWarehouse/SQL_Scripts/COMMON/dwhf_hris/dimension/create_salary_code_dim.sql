

-- creating table 
create table [hris].[salary_code_dim] (
    [salary_code_key] int not null,
	[salary_code] varchar(10)  null,
	[salary_code_description] varchar(50)  null,
	[pay_rate] decimal(10,2)  null,
	[min_salary] decimal(10,2)  null,
	[max_salary] decimal(10,2)  null,
	[ir_award] varchar(10)  null,
	[increment_type] varchar(10)  null,
	[change_reason_code] varchar(5)  null,
    [change_reason_description] varchar(50)  null,
    [row_effective_date] datetime  null,
    [row_expiration_date] datetime  null,
    [current_row_indicator] varchar(1)  null,
);
go
-- creating primary key
alter table [hris].[salary_code_dim]
add constraint [pk_salary_code_dim]
    primary key clustered ([salary_code_key] asc);
go