﻿-- creating table 'employee_payment_snapshot_fact'
create table [conform].[employee_payment_snapshot_fact] (
    [employee_payment_snapshot_key] int identity(1,1) not null,
    [payment_amount] nvarchar(max)  not null,
    [payment_key] int  not null,
    [employee_key] int  not null,
    [payment_month_key] int  not null,
    [organisation_key] int  not null,
    [portfolio_key] int  not null,
    [service_stream_key] int  not null,
    [program_key] int  not null,
    [position_key] int  not null
);
go

-- creating primary key on [employee_payment_snapshot_key] in table 'employee_payment_snapshot_fact'
alter table [conform].[employee_payment_snapshot_fact]
add constraint [pk_employee_payment_snapshot_fact]
    primary key clustered ([employee_payment_snapshot_key] asc);
go


-- creating foreign key on [payment_key] in table 'employee_payment_snapshot_fact'
alter table [conform].[employee_payment_snapshot_fact]
add constraint [fk_employee_payment_dimemployee_payment_snapshot_fact]
    foreign key ([payment_key])
    references [conform].[employee_payment_dim]
        ([employee_payment_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_employee_payment_dimemployee_payment_snapshot_fact'
create index [ix_fk_employee_payment_dimemployee_payment_snapshot_fact]
on [conform].[employee_payment_snapshot_fact]
    ([payment_key]);
go

-- creating foreign key on [employee_key] in table 'employee_payment_snapshot_fact'
alter table [conform].[employee_payment_snapshot_fact]
add constraint [fk_employee_dimemployee_payment_snapshot_fact]
    foreign key ([employee_key])
    references [conform].[employee_dim]
        ([employee_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_employee_dimemployee_payment_snapshot_fact'
create index [ix_fk_employee_dimemployee_payment_snapshot_fact]
on [conform].[employee_payment_snapshot_fact]
    ([employee_key]);
go

-- creating foreign key on [payment_month_key] in table 'employee_payment_snapshot_fact'
alter table [conform].[employee_payment_snapshot_fact]
add constraint [fk_month_dimemployee_payment_snapshot_fact]
    foreign key ([payment_month_key])
    references [conform].[month_dim]
        ([month_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_month_dimemployee_payment_snapshot_fact'
create index [ix_fk_month_dimemployee_payment_snapshot_fact]
on [conform].[employee_payment_snapshot_fact]
    ([payment_month_key]);
go

-- creating foreign key on [organisation_key] in table 'employee_payment_snapshot_fact'
alter table [conform].[employee_payment_snapshot_fact]
add constraint [fk_organisation_dimemployee_payment_snapshot_fact]
    foreign key ([organisation_key])
    references [conform].[organisation_dim]
        ([organisation_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_organisation_dimemployee_payment_snapshot_fact'
create index [ix_fk_organisation_dimemployee_payment_snapshot_fact]
on [conform].[employee_payment_snapshot_fact]
    ([organisation_key]);
go

-- creating foreign key on [portfolio_key] in table 'employee_payment_snapshot_fact'
alter table [conform].[employee_payment_snapshot_fact]
add constraint [fk_portfolio_dimemployee_payment_snapshot_fact]
    foreign key ([portfolio_key])
    references [conform].[portfolio_dim]
        ([portfolio_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_portfolio_dimemployee_payment_snapshot_fact'
create index [ix_fk_portfolio_dimemployee_payment_snapshot_fact]
on [conform].[employee_payment_snapshot_fact]
    ([portfolio_key]);
go

-- creating foreign key on [service_stream_key] in table 'employee_payment_snapshot_fact'
alter table [conform].[employee_payment_snapshot_fact]
add constraint [fk_service_stream_dimemployee_payment_snapshot_fact]
    foreign key ([service_stream_key])
    references [conform].[service_stream_dim]
        ([service_stream_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_service_stream_dimemployee_payment_snapshot_fact'
create index [ix_fk_service_stream_dimemployee_payment_snapshot_fact]
on [conform].[employee_payment_snapshot_fact]
    ([service_stream_key]);
go

-- creating foreign key on [program_key] in table 'employee_payment_snapshot_fact'
alter table [conform].[employee_payment_snapshot_fact]
add constraint [fk_program_dimemployee_payment_snapshot_fact]
    foreign key ([program_key])
    references [conform].[program_dim]
        ([program_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_program_dimemployee_payment_snapshot_fact'
create index [ix_fk_program_dimemployee_payment_snapshot_fact]
on [conform].[employee_payment_snapshot_fact]
    ([program_key]);
go

-- creating foreign key on [position_key] in table 'employee_payment_snapshot_fact'
alter table [conform].[employee_payment_snapshot_fact]
add constraint [fk_position_dimemployee_payment_snapshot_fact]
    foreign key ([position_key])
    references [conform].[position_dim]
        ([position_key])
    on delete no action on update no action;
go

-- creating non-clustered index for foreign key 'fk_position_dimemployee_payment_snapshot_fact'
create index [ix_fk_position_dimemployee_payment_snapshot_fact]
on [conform].[employee_payment_snapshot_fact]
    ([position_key]);
go