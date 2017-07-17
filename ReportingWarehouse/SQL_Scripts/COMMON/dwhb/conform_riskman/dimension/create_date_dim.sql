create table [conform_riskman].[date_dim](
	[date_key] int not null,
	[full_date] datetime null,
	[display_date] varchar(10) null,
	[year] int null,
	[quarter] int null,
	[quarter_name] varchar(9) null,
	[month_no] int null,
	[month_name] varchar(9) null,
	[day_of_month] int null,
	[day_of_week] int null,
	[day_name] varchar(9) null,
	[is_public_holiday] varchar(3) null,
	[public_holiday_name] varchar(50) null,
	[financial_year] varchar(11) null,
	[fbt_range] varchar(11) null,
	[pay_period_end] varchar(3) null,
	[financial_month_no] int null,
	[max_temperature] decimal(5,2) null,
	[min_temperature] decimal(5,2) null,
	[rainfall] decimal(5,2) null,
	[max_wind_speed] decimal(5,2) null
);

alter table [conform_riskman].[date_dim]
add constraint [pk_date_dim]
    primary key clustered ([date_key] asc);
go
