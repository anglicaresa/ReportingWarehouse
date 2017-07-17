
IF OBJECT_ID(N'conform.[fk_employee_dimemployee_termination_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_termination_fact] drop constraint [fk_employee_dimemployee_termination_fact];
IF OBJECT_ID(N'conform.[fk_date_dimemployee_termination_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_termination_fact] drop constraint [fk_date_dimemployee_termination_fact];
IF OBJECT_ID(N'conform.[fk_organisation_dimemployee_termination_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_termination_fact] drop constraint [fk_organisation_dimemployee_termination_fact];
IF OBJECT_ID(N'conform.[fk_portfolio_dimemployee_termination_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_termination_fact] drop constraint [fk_portfolio_dimemployee_termination_fact];
IF OBJECT_ID(N'conform.[fk_service_stream_dimemployee_termination_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_termination_fact] drop constraint [fk_service_stream_dimemployee_termination_fact1];
IF OBJECT_ID(N'conform.[fk_program_dimemployee_termination_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_termination_fact] drop constraint [fk_program_dimemployee_termination_fact];
IF OBJECT_ID(N'conform.[fk_position_dimemployee_termination_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_termination_fact] drop constraint [fk_position_dimemployee_termination_fact];
IF OBJECT_ID(N'conform.[employee_termination_fact]', 'U') IS NOT NULL
	drop table [conform].[employee_termination_fact]