

-- creating table 'accreditation_dim'
create table [hris].[accreditation_dim] (
    [accreditation_key] int not null,
	[accreditation_type] varchar(20) null,
	[renewal_frequency] varchar(10) null,
	[change_reason_code] varchar(5)  null,
    [change_reason_description] varchar(50)  null,
    [row_effective_date] datetime  null,
    [row_expiration_date] datetime  null,
    [current_row_indicator] varchar(1)  null,
);
go
-- creating primary key on [accreditation_key] in table 'accreditation_dim'
alter table [hris].[accreditation_dim]
add constraint [pk_accreditation_dim]
    primary key clustered ([accreditation_key] asc);
go