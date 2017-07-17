--use dwhb;
--drop table [conform].[position_establishment_fact];

-- [position_establishment_fact]
create table [conform].[position_establishment_fact] (
	[position_establishment_key] int identity(1,1) not null,
	[portfolio_key] int  not null,
	[service_stream_key] int  not null,
	[program_key] int  not null,
	[position_key] int  not null,
	[employee_key] int  not null,
	[employee_type] varchar(20) null,
	[employee_class] varchar(20) null,
	[effective_date_key] int not null,
	[vacant_date_key] int not null,
	[manager_key]  int not null,
	[manager_position_key]  int not null,
	[position_emp_type] varchar(20) null,
	[position_emp_class] varchar(20) null,
	[count] int  
);

go

-- PK position_establishment_key
alter table [conform].[position_establishment_fact]
add constraint [pk_position_establishment_fact]
    primary key clustered ([position_establishment_key] asc);
go

-- FK portfolio_key
alter table [conform].[position_establishment_fact]
add constraint [fk_position_establishment_fact_portfolio_key]
    foreign key ([portfolio_key])
    references [conform].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- FK service_stream_key
alter table [conform].[position_establishment_fact]
add constraint [fk_position_establishment_fact_service_stream_key]
    foreign key ([service_stream_key])
    references [conform].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- FK program_key
alter table [conform].[position_establishment_fact]
add constraint [fk_position_establishment_fact_program_key]
    foreign key ([program_key])
    references [conform].[program_dim]
        ([program_key])
    on delete no action on update no action;
go

-- FK position_key
alter table [conform].[position_establishment_fact]
add constraint [fk_position_establishment_fact_position_key]
    foreign key ([position_key])
    references [conform].[position_dim]
        ([position_key])
    on delete no action on update no action;
go

-- FK employee_key
alter table [conform].[position_establishment_fact]
add constraint [fk_position_establishment_fact_employee_key]
    foreign key ([employee_key])
    references [conform].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- FK effective_date_key
alter table [conform].[position_establishment_fact]
add constraint [fk_position_establishment_fact_date_key]
    foreign key ([effective_date_key])
    references [conform].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- FK vacant_date_key
alter table [conform].[position_establishment_fact]
add constraint [fk_position_establishment_fact_vacant_date_key]
    foreign key ([vacant_date_key])
    references [conform].[date_dim]
        ([date_key])
    on delete no action on update no action;
go

-- FK manager_position_key
alter table [conform].[position_establishment_fact]
add constraint [fk_position_establishment_fact_manager_position_key]
    foreign key ([manager_position_key])
    references [conform].[position_dim]
        ([position_key])
    on delete no action on update no action;
go

-- FK manager_key
alter table [conform].[position_establishment_fact]
add constraint [fk_position_establishment_fact_manager_employee_key]
    foreign key ([manager_key])
    references [conform].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go
