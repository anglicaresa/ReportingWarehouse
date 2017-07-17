create table [conform_riskman].[program_mapping] (
	[program_mapping_key] int identity(1,1) not null,
	[system] varchar(30),
	[table1] varchar(100),
	[name1] varchar(100),
	[value1] varchar(100),
	[table2] varchar(100),
	[name2] varchar(100),
	[value2] varchar(100),
	[table3] varchar(100),
	[name3] varchar(100),
	[value3] varchar(100),
	[table4] varchar(100),
	[name4] varchar(100),
	[value4] varchar(100),
	[table5] varchar(100),
	[name5] varchar(100),
	[value5] varchar(100),
	[mapping_type] varchar(20),
	[program_name] varchar(50),
	[program_key] int
);
go

-- PK
alter table [conform_riskman].[program_mapping]
add constraint [pk_program_mapping]
    primary key clustered ([program_mapping_key] asc);
go