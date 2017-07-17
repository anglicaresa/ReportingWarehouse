

-- creating table 'program_dim'
create table [comcare].[program_dim] (
    [program_key] int not null,
    [program_name] varchar(50)  null,
	[program_code] varchar(20)  not null,
	[program_street] varchar(50)  not null,
	[program_suburb] varchar(50)  not null,
	[program_postcode] varchar(5)  not null,
	[change_reason_code] varchar(5)  null,
    [change_reason_description] varchar(50)  null,
    [row_effective_date] datetime  null,
    [row_expiration_date] datetime  null,
    [current_row_indicator] varchar(1)  null,
	[program_state] varchar(50) null,
	[telephone] varchar(20) null,
	[fax] varchar (20) null,
	[program_id_cc] int null

);
go

-- creating primary key on [program_key] in table 'program_dim'
alter table [comcare].[program_dim]
add constraint [pk_program_dim]
    primary key clustered ([program_key] asc);
go