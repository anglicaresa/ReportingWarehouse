
create table [conform_riskman].[incident_type_dim] (
	[incident_type_key] int identity(1,1) not null,
	[super_group] varchar(50),
	[incident_class] varchar(50),
	[definitions] varchar(50),
	[change_reason_code] varchar(5)  null,
    [change_reason_description] varchar(50)  null,
    [row_effective_date] datetime  null,
    [row_expiration_date] datetime  null,
    [current_row_indicator] varchar(1)  null
	);
go
-- PK
alter table [conform_riskman].[incident_type_dim]
add constraint [pk_incident_type_dim]
    primary key clustered ([incident_type_key] asc);
go
