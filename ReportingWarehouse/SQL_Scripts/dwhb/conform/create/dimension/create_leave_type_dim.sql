

-- creating table 'leave_type_dim'
create table [conform].[leave_type_dim] (
    [leave_type_key] int identity(1,1) not null,
    [leave_name] nvarchar(max) null,
	[leave_code] varchar(20) null,
	[change_reason_code] nvarchar(5)  null,
    [change_reason_description] nvarchar(50)  null,
    [row_effective_date] datetime  null,
    [row_expiration_date] datetime  null,
    [current_row_indicator] nvarchar(1)  null
);
go

-- creating primary key on [leave_type_key] in table 'leave_type_dim'
alter table [conform].[leave_type_dim]
add constraint [pk_leave_type_dim]
    primary key clustered ([leave_type_key] asc);
go