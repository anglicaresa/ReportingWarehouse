create table hris.[audit_fact] (
    [audit_key] int not null,
	[database] varchar(80),
	[schema] varchar(80),
	[table_name] varchar(80),
	[column_name] varchar(80),
	[dwh_key] int,
	[source_system_key] varchar(20),
	[check_description] varchar(255),
	[check_type] varchar(10),
	[message] varchar(255),
	[audit_date] date
);

alter table hris.[audit_fact]
add constraint [pk_audit_fact]
    primary key clustered ([audit_key] asc);
go
