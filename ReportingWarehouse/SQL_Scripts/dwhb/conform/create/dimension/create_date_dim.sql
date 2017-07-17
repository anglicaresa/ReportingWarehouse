create table [conform].[date_dim](
	[date_key] [int] not null,
	[full_date] [datetime] null,
	[year] [char](4) null,
	[quarter] [char](1) null,
	[quarter_name] [varchar](9) null,
	[month] [varchar](2) null,
	[month_name] [varchar](9) null,
	[day_of_month] [varchar](2) null,
	[day_of_week] [varchar](1) null,
	[day_name] [varchar](9) null,
	[is_public_holiday] [varchar](1) null,
	[public_holiday_name] [varchar](50) null
);

alter table [conform].[date_dim]
add constraint [pk_date_dim]
    primary key clustered ([date_key] asc);
go
