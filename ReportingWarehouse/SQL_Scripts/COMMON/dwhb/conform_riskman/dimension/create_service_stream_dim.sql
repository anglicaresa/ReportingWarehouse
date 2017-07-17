

-- creating table 'service_stream_dim'
create table [conform_riskman].[service_stream_dim] (
    [service_stream_key] int identity(1,1) not null,
    [service_stream_name] varchar(50)  null,
	[service_stream_code] varchar(20)  not null,
	[service_stream_region] varchar(50)  not null,
	[change_reason_code] nvarchar(5)  null,
    [change_reason_description] nvarchar(50)  null,
    [row_effective_date] datetime  null,
    [row_expiration_date] datetime  null,
    [current_row_indicator] nvarchar(1)  null,
);
go

-- creating primary key on [service_stream_key] in table 'service_stream_dim'
alter table [conform_riskman].[service_stream_dim]
add constraint [pk_service_stream_dim]
    primary key clustered ([service_stream_key] asc);
go