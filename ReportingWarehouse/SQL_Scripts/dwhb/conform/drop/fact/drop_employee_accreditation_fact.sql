IF OBJECT_ID(N'conform.[fk_employee_dimemployee_accreditation_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_accreditation_fact] drop constraint [fk_employee_dimemployee_accreditation_fact];
IF OBJECT_ID(N'conform.[fk_date_dimemployee_accreditation_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_accreditation_fact] drop constraint [fk_date_dimemployee_accreditation_fact];
IF OBJECT_ID(N'conform.[fk_organisation_dimemployee_accreditation_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_accreditation_fact] drop constraint [fk_organisation_dimemployee_accreditation_fact];
IF OBJECT_ID(N'conform.[fk_portfolio_dimemployee_accreditation_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_accreditation_fact] drop constraint [fk_portfolio_dimemployee_accreditation_fact];
IF OBJECT_ID(N'conform.[fk_service_stream_dimemployee_accreditation_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_accreditation_fact] drop constraint [fk_service_stream_dimemployee_accreditation_fact];
IF OBJECT_ID(N'conform.[fk_program_dimemployee_accreditation_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_accreditation_fact] drop constraint [fk_program_dimemployee_accreditation_fact];
IF OBJECT_ID(N'conform.[fk_employee_accreditation_dimemployee_accreditation_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_accreditation_fact] drop constraint [fk_employee_accreditation_dimemployee_accreditation_fact];
IF OBJECT_ID(N'conform.[fk_date_dimemployee_accreditation_fact1]', 'U') IS NOT NULL
	alter table [conform].[employee_accreditation_fact] drop constraint [fk_date_dimemployee_accreditation_fact1];
IF OBJECT_ID(N'conform.[employee_accreditation_fact]', 'U') IS NOT NULL
	drop table [conform].[employee_accreditation_fact]