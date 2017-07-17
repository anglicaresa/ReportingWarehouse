use dwhb;

DROP TABLE [conform].[labour_turnover_report_fact];

-- creating table 'labour_turnover_report_fact'
create table [conform].[labour_turnover_report_fact] (
    [labour_turnover_report__key] int identity(1,1) not null,
	[month_date_key] int not null,
	[total] int null,
	[lost] int null,

	[monthly] decimal(10,4) null,
	[last_year_monthly] decimal(10,4) null,
	[yearly] decimal(10,4) null
);
go

-- creating primary key 
alter table [conform].[labour_turnover_report_fact]
add constraint [pk_labour_turnover_report_fact]
    primary key clustered ([labour_turnover_report__key] asc);
go



-- creating foreign key on [month_date_key]
alter table [conform].[labour_turnover_report_fact]
add constraint [fk_labour_turnover_report_fact_date_key]
    foreign key (month_date_key)
    references [conform].[month_dim]
        (month_key)
    on delete no action on update no action;
go