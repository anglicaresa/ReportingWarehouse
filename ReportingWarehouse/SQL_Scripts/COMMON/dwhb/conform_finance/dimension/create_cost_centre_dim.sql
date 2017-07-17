create table [conform_finance].[cost_centre_dim] (
	[cost_centre_key] int	identity(1,1) not null,
	[name]		varchar	(50),
	[change_reason_code]		varchar	(5),
	[change_reason_description]		varchar	(50),
	[row_effective_date]		datetime	,
	[row_expiration_date]		datetime	,
	[current_row_indicator]		varchar	(1)
);


-- PK
alter table [conform_finance].[cost_centre_dim]
add constraint [pk_cost_centre_dim]
    primary key clustered ([cost_centre_key] asc);
go