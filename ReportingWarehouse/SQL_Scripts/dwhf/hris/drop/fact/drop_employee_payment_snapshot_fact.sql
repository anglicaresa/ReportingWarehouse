IF OBJECT_ID(N'hris.[fk_employee_payment_dimemployee_payment_snapshot_fact]', 'U') IS NOT NULL
	alter table [hris].[employee_payment_snapshot_fact] drop constraint [fk_employee_payment_dimemployee_payment_snapshot_fact];
IF OBJECT_ID(N'hris.[fk_employee_dimemployee_payment_snapshot_fact]', 'U') IS NOT NULL
	alter table [hris].[employee_payment_snapshot_fact] drop constraint [fk_employee_dimemployee_payment_snapshot_fact];
IF OBJECT_ID(N'hris.[fk_month_dimemployee_payment_snapshot_fact]', 'U') IS NOT NULL
	alter table [hris].[employee_payment_snapshot_fact] drop constraint [fk_month_dimemployee_payment_snapshot_fact];
IF OBJECT_ID(N'hris.[fk_organisation_dimemployee_payment_snapshot_fact]', 'U') IS NOT NULL
	alter table [hris].[employee_payment_snapshot_fact] drop constraint [fk_organisation_dimemployee_payment_snapshot_fact];
IF OBJECT_ID(N'hris.[fk_portfolio_dimemployee_payment_snapshot_fact]', 'U') IS NOT NULL
	alter table [hris].[employee_payment_snapshot_fact] drop constraint [fk_portfolio_dimemployee_payment_snapshot_fact];
IF OBJECT_ID(N'hris.[fk_service_stream_dimemployee_payment_snapshot_fact]', 'U') IS NOT NULL
	alter table [hris].[employee_payment_snapshot_fact] drop constraint [fk_service_stream_dimemployee_payment_snapshot_fact];
IF OBJECT_ID(N'hris.[fk_program_dimemployee_payment_snapshot_fact]', 'U') IS NOT NULL
	alter table [hris].[employee_payment_snapshot_fact] drop constraint [fk_program_dimemployee_payment_snapshot_fact];
IF OBJECT_ID(N'hris.[fk_position_dimemployee_payment_snapshot_fact]', 'U') IS NOT NULL
	alter table [hris].[employee_payment_snapshot_fact] drop constraint [fk_position_dimemployee_payment_snapshot_fact];


IF OBJECT_ID(N'hris.[employee_payment_snapshot_fact]', 'U') IS NOT NULL
	drop table [hris].[employee_payment_snapshot_fact]