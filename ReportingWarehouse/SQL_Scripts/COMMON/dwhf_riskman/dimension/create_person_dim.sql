-- creating table 'account_dim'
create table [riskman].[person_dim] (
    [person_key] int not null,
	[given_name] varchar(50),
	[family_name] varchar(50),
	[date_of_birth] date,
	[gender] varchar(10),
	[contact_phone] varchar(20),
	[change_reason_code] varchar(5)  null,
    [change_reason_description] varchar(50)  null,
    [row_effective_date] datetime  null,
    [row_expiration_date] datetime  null,
    [current_row_indicator] varchar(1)  null
	);
go
-- PK
alter table [riskman].[person_dim]
add constraint [pk_person_dim]
    primary key clustered ([person_key] asc);
go
