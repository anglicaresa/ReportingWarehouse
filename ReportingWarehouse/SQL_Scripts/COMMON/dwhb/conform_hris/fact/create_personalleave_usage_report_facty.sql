DROP TABLE [conform].[personalleave_usage_report_fact];

-- creating table 'personalleave_usage_report_fact'
create table [conform].[personalleave_usage_report_fact] (
    [personalleave_usage_report_key] int identity(1,1) not null,
	[month_date_key] int not null,
	[part_time_emp_all] int null,
	[full_time_emp_all] int null,
	[part_time_emp_take] int null,
	[full_time_emp_take ] int null,
	[part_time_hours] decimal(10,4) null,
	[full_time_hours] decimal(10,4) null,
	[year_avg_days] decimal(10,4) null,
	[month_days] decimal(10,4) null,
	[last_year_month_days] decimal(10,4) null
);
go

-- creating primary key 
alter table [conform].[personalleave_usage_report_fact]
add constraint [pk_personalleave_usage_report_fact]
    primary key clustered ([personalleave_usage_report_key] asc);
go



-- creating foreign key on [month_date_key]
alter table [conform].[personalleave_usage_report_fact]
add constraint [fk_personalleave_usage_report_fact_date_key]
    foreign key (month_date_key)
    references [conform].[month_dim]
        (month_key)
    on delete no action on update no action;
go