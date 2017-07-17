IF OBJECT_ID(N'conform.[fk_employee_payment_dimemployee_payment_snapshot_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_payment_snapshot_fact] drop constraint [fk_employee_payment_dimemployee_payment_snapshot_fact];
IF OBJECT_ID(N'conform.[fk_employee_dimemployee_payment_snapshot_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_payment_snapshot_fact] drop constraint [fk_employee_dimemployee_payment_snapshot_fact];
IF OBJECT_ID(N'conform.[fk_month_dimemployee_payment_snapshot_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_payment_snapshot_fact] drop constraint [fk_month_dimemployee_payment_snapshot_fact];
IF OBJECT_ID(N'conform.[fk_organisation_dimemployee_payment_snapshot_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_payment_snapshot_fact] drop constraint [fk_organisation_dimemployee_payment_snapshot_fact];
IF OBJECT_ID(N'conform.[fk_portfolio_dimemployee_payment_snapshot_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_payment_snapshot_fact] drop constraint [fk_portfolio_dimemployee_payment_snapshot_fact];
IF OBJECT_ID(N'conform.[fk_service_stream_dimemployee_payment_snapshot_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_payment_snapshot_fact] drop constraint [fk_service_stream_dimemployee_payment_snapshot_fact];
IF OBJECT_ID(N'conform.[fk_program_dimemployee_payment_snapshot_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_payment_snapshot_fact] drop constraint [fk_program_dimemployee_payment_snapshot_fact];
IF OBJECT_ID(N'conform.[fk_position_dimemployee_payment_snapshot_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_payment_snapshot_fact] drop constraint [fk_position_dimemployee_payment_snapshot_fact];


IF OBJECT_ID(N'conform.[employee_payment_snapshot_fact]', 'U') IS NOT NULL
	drop table [conform].[employee_payment_snapshot_fact]