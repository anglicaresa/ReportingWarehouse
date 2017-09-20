USE [dwhf]
GO
DROP TABLE [hris].[non_primary_positions_fact]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hris].[non_primary_positions_fact](
   [non_primary_position_key] [int]   NOT NULL,
   [portfolio_key] [int] NOT NULL,
   [service_stream_key] [int] NOT NULL,
   [program_key] [int] NOT NULL,
   [position_key] [int] NOT NULL,
   [employee_key] [int] NOT NULL,
   [position_type] [varchar] (100) NULL,
   [position_code] [varchar] (100) NULL,
   [manager_key] [int] NOT NULL,
   [manager_position_key] [int] NOT NULL,
   [contract_expire_date_key] [int]  NULL,
   [position_effective_date_key] [int]  NULL,
   [position_end_date_key] [int]  NULL
)
GO
alter table [hris].[non_primary_positions_fact]
add constraint [pk_non_primary_positions_fact]
    primary key clustered([non_primary_position_key] asc);
GO
-- creating foreign key on [portfolio_key] in table [non_primary_positions_fact]
alter table [hris].[non_primary_positions_fact]
add constraint [fk_conform_non_primary_positions_fact_portfolio_key]
    foreign key ([portfolio_key])
    references [hris].[portfolio_dim]
        (portfolio_key)
    on delete no action on update no action;
go
-- creating foreign key on [program_key] in table [non_primary_positions_fact]
alter table [hris].[non_primary_positions_fact]
add constraint [fk_conform_non_primary_positions_fact_program_key]
    foreign key ([program_key])
    references [hris].[program_dim]
        (program_key)
    on delete no action on update no action;
go

alter table [hris].[non_primary_positions_fact]
add constraint [fk_conform_non_primary_positions_fact_service_stream_key]
    foreign key ([service_stream_key])
    references [hris].[service_stream_dim]
        (service_stream_key)
    on delete no action on update no action;
go

alter table [hris].[non_primary_positions_fact]
add constraint [fk_conform_non_primary_positions_fact_position_key]
    foreign key ([position_key])
    references [hris].[position_dim]
        (position_key)
    on delete no action on update no action;
go

alter table [hris].[non_primary_positions_fact]
add constraint [fk_conform_non_primary_positions_fact_manager_position_key]
    foreign key ([manager_position_key])
    references [hris].[position_dim]
        (position_key)
    on delete no action on update no action;
go


alter table [hris].[non_primary_positions_fact]
add constraint [fk_conform_non_primary_positions_fact_employee_key]
    foreign key ([employee_key])
    references [hris].[employee_dim]
        (employee_key)
    on delete no action on update no action;
go

alter table [hris].[non_primary_positions_fact]
add constraint [fk_conform_non_primary_positions_fact_manager_key]
    foreign key ([manager_key])
    references [hris].[employee_dim]
        (employee_key)
    on delete no action on update no action;
go

alter table [hris].[non_primary_positions_fact]
add constraint [fk_conform_non_primary_positions_fact_contract_expire_date_key]
    foreign key ([contract_expire_date_key])
    references [hris].[date_dim]
        (date_key)
    on delete no action on update no action;
go

alter table [hris].[non_primary_positions_fact]
add constraint [fk_conform_non_primary_positions_fact_position_effective_date_key]
    foreign key ([position_effective_date_key])
    references [hris].[date_dim]
        (date_key)
    on delete no action on update no action;
go

alter table [hris].[non_primary_positions_fact]
add constraint [fk_conform_non_primary_positions_fact_position_end_date_key]
    foreign key ([position_end_date_key])
    references [hris].[date_dim]
        (date_key)
    on delete no action on update no action;
go


GO
