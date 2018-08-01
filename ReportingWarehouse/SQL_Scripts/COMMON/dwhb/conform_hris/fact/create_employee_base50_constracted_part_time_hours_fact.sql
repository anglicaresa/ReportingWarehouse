use dwhb_new;
-- creating table 'employee_base50_constracted_part_time_hours_fact'
create table [conform].[employee_base50_constracted_part_time_hours_fact] (
    [employee_base50_constracted_part_time_hours_fact_key] int identity(1,1) not null,
    [portfolio_key] int  not null,
    [service_stream_key] int  not null,
    [program_key] int  not null,
    [position_key] int  not null,
    [employee_key] int  not null,
    [effective_date_key] int null,
    [units_per_period] decimal(10,4) null    
);
go

-- creating primary key on [employee_base50_constracted_part_time_hours_fact_key] in table 'employee_base50_constracted_part_time_hours_fact'
alter table [conform].[employee_base50_constracted_part_time_hours_fact]
add constraint [pk_employee_base50_constracted_part_time_hours_fact]
    primary key clustered ([employee_base50_constracted_part_time_hours_fact_key] asc);
go

-- creating foreign key on [portfolio_key] in table 'employee_base50_constracted_part_time_hours_fact'
alter table [conform].[employee_base50_constracted_part_time_hours_fact]
add constraint [fk_employee_base50_constracted_part_time_hours_fact_portfolio_key]
    foreign key (portfolio_key)
    references [conform].[portfolio_dim]
        (portfolio_key)
    on delete no action on update no action;
go

-- creating foreign key on [service_stream_key] in table 'employee_base50_constracted_part_time_hours_fact'
alter table [conform].[employee_base50_constracted_part_time_hours_fact]
add constraint [fk_employee_base50_constracted_part_time_hours_fact_service_stream_key]
    foreign key (service_stream_key)
    references [conform].[service_stream_dim]
        (service_stream_key)
    on delete no action on update no action;
go

-- creating foreign key on [program_key] in table 'employee_base50_constracted_part_time_hours_fact'
alter table [conform].[employee_base50_constracted_part_time_hours_fact]
add constraint [fk_employee_base50_constracted_part_time_hours_fact_program_key]
    foreign key (program_key)
    references [conform].[program_dim]
        (program_key)
    on delete no action on update no action;
go

-- creating foreign key on [[position_key]] in table 'employee_base50_constracted_part_time_hours_fact'
alter table [conform].[employee_base50_constracted_part_time_hours_fact]
add constraint [fk_employee_base50_constracted_part_time_hours_fact_position_key]
    foreign key (position_key)
    references [conform].[position_dim]
        (position_key)
    on delete no action on update no action;
go

-- creating foreign key on [[program_key]] in table 'employee_base50_constracted_part_time_hours_fact'
alter table [conform].[employee_base50_constracted_part_time_hours_fact]
add constraint [fk_employee_base50_constracted_part_time_hours_fact_employee_key]
    foreign key (employee_key)
    references [conform].[employee_dim]
        (employee_key)
    on delete no action on update no action;
go
-- FK for pay_period_date_key
alter table [conform].[employee_base50_constracted_part_time_hours_fact]
add constraint [fk_employee_base50_constracted_part_time_hours_fact_pay_period_date_key]
    foreign key (pay_period_date_key)
    references [conform].[date_dim]
        (date_key)
    on delete no action on update no action;
go



--DWHF-----

use DWHF;
-- creating table 'employee_base50_constracted_part_time_hours_fact'
create table [hris].[employee_base50_constracted_part_time_hours_fact] (
    [employee_base50_constracted_part_time_hours_fact_key] int not null,
    [portfolio_key] int  not null,
    [service_stream_key] int  not null,
    [program_key] int  not null,
    [position_key] int  not null,
    [employee_key] int  not null,
    [effective_date_key] int null,
    [units_per_period] decimal(10,4) null    
);


-- creating primary key on [employee_base50_constracted_part_time_hours_fact_key] in table 'employee_base50_constracted_part_time_hours_fact'
alter table [hris].[employee_base50_constracted_part_time_hours_fact]
add constraint [pk_employee_base50_constracted_part_time_hours_fact]
    primary key clustered ([employee_base50_constracted_part_time_hours_fact_key] asc);


-- creating foreign key on [portfolio_key] in table 'employee_base50_constracted_part_time_hours_fact'
alter table [hris].[employee_base50_constracted_part_time_hours_fact]
add constraint [fk_employee_base50_constracted_part_time_hours_fact_portfolio_key]
    foreign key (portfolio_key)
    references [hris].[portfolio_dim]
        (portfolio_key)
    on delete no action on update no action;


-- creating foreign key on [service_stream_key] in table 'employee_base50_constracted_part_time_hours_fact'
alter table [hris].[employee_base50_constracted_part_time_hours_fact]
add constraint [fk_employee_base50_constracted_part_time_hours_fact_service_stream_key]
    foreign key (service_stream_key)
    references [hris].[service_stream_dim]
        (service_stream_key)
    on delete no action on update no action;


-- creating foreign key on [program_key] in table 'employee_base50_constracted_part_time_hours_fact'
alter table [hris].[employee_base50_constracted_part_time_hours_fact]
add constraint [fk_employee_base50_constracted_part_time_hours_fact_program_key]
    foreign key (program_key)
    references [hris].[program_dim]
        (program_key)
    on delete no action on update no action;


-- creating foreign key on [[position_key]] in table 'employee_base50_constracted_part_time_hours_fact'
alter table [hris].[employee_base50_constracted_part_time_hours_fact]
add constraint [fk_employee_base50_constracted_part_time_hours_fact_position_key]
    foreign key (position_key)
    references [hris].[position_dim]
        (position_key)
    on delete no action on update no action;


-- creating foreign key on [[program_key]] in table 'employee_base50_constracted_part_time_hours_fact'
alter table [hris].[employee_base50_constracted_part_time_hours_fact]
add constraint [fk_employee_base50_constracted_part_time_hours_fact_employee_key]
    foreign key (employee_key)
    references [hris].[employee_dim]
        (employee_key)
    on delete no action on update no action;

-- FK for pay_period_date_key
alter table [hris].[employee_base50_constracted_part_time_hours_fact]
add constraint [fk_employee_base50_constracted_part_time_hours_fact_pay_period_date_key]
    foreign key (pay_period_date_key)
    references [hris].[date_dim]
        (date_key)
    on delete no action on update no action;
