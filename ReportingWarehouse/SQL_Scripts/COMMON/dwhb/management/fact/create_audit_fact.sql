create table [management].[audit_fact] (
    [audit_key] int identity(1,1) not null,
	[database] varchar(80),
	[schema] varchar(80),
	[table_name] varchar(80),
	[column_name] varchar(80),
	[dwh_key] int,
	[source_system_key] varchar(20),
	[check_description] varchar(255),
	[check_type] varchar(10),
	[message] varchar(255),
	[audit_date] date,
	[quality_check_key] int not null
);

alter table [management].[audit_fact]
add constraint [pk_audit_fact]
    primary key clustered ([audit_key] asc);
go

-- FK table_dim
alter table [management].[audit_fact]
add constraint [fk_audit_fact_quality_check_key]
    foreign key ([quality_check_key])
    references [management].[quality_check_fact]
        ([quality_check_key])
    on delete no action on update no action;
