-------------------------------------
-- [employee_position_snapshot_fact]
-------------------------------------
IF OBJECT_ID(N'conform.[fk_employee_dimemployee_position_snapshot_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_position_snapshot_fact] drop constraint [fk_employee_dimemployee_position_snapshot_fact];
IF OBJECT_ID(N'conform.[fk_month_dimemployee_position_snapshot_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_position_snapshot_fact] drop constraint [fk_month_dimemployee_position_snapshot_fact];
IF OBJECT_ID(N'conform.[fk_organisation_dimemployee_position_snapshot_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_position_snapshot_fact] drop constraint [fk_organisation_dimemployee_position_snapshot_fact];
IF OBJECT_ID(N'conform.[fk_portfolio_dimemployee_position_snapshot_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_position_snapshot_fact] drop constraint [fk_portfolio_dimemployee_position_snapshot_fact];
IF OBJECT_ID(N'conform.[fk_service_stream_dimemployee_position_snapshot_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_position_snapshot_fact] drop constraint [fk_service_stream_dimemployee_position_snapshot_fact];
IF OBJECT_ID(N'conform.[fk_program_dimemployee_position_snapshot_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_position_snapshot_fact] drop constraint [fk_program_dimemployee_position_snapshot_fact];
IF OBJECT_ID(N'conform.[employee_position_snapshot_fact]', 'U') IS NOT NULL
	drop table [conform].[employee_position_snapshot_fact]