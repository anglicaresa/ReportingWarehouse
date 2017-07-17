
create table [management].[quality_check_fact] (
    [quality_check_key] int identity(1,1) not null,
	[table_key] int not null,
	[business_owner] varchar(100),
	[column_name] varchar(50),
	[description] varchar(255),
	[sql] varchar(4000),
	[check_type] varchar(10),
	[error_message] varchar(255),
	[error_action] varchar(5),
	[on_off_flag] varchar(5)
);

-- PK
alter table [management].[quality_check_fact]
add constraint [pk_quality_check_fact]
    primary key clustered ([quality_check_key] asc);

-- FK table_dim
alter table [management].[quality_check_fact]
add constraint [fk_quality_check_fact_table_dim]
    foreign key ([table_key])
    references [management].[table_dim]
        ([table_key])
    on delete no action on update no action;