-------------------------------
-- [employee_recruitment_fact]
-------------------------------
IF OBJECT_ID(N'hris.[fk_date_dimemployee_recruitment_fact]', 'U') IS NOT NULL
	alter table [hris].[employee_recruitment_fact] drop constraint [fk_date_dimemployee_recruitment_fact];
IF OBJECT_ID(N'hris.[fk_position_dimemployee_recruitment_fact]', 'U') IS NOT NULL
	alter table [hris].[employee_recruitment_fact] drop constraint fk_position_dimemployee_recruitment_fact;
IF OBJECT_ID(N'hris.[fk_organisation_dimemployee_recruitment_fact]', 'U') IS NOT NULL
	alter table [hris].[employee_recruitment_fact] drop constraint fk_organisation_dimemployee_recruitment_fact;
IF OBJECT_ID(N'hris.[fk_portfolio_dimemployee_recruitment_fact]', 'U') IS NOT NULL
	alter table [hris].[employee_recruitment_fact] drop constraint fk_portfolio_dimemployee_recruitment_fact;
IF OBJECT_ID(N'hris.[fk_service_stream_dimemployee_recruitment_fact]', 'U') IS NOT NULL
	alter table [hris].[employee_recruitment_fact] drop constraint fk_service_stream_dimemployee_recruitment_fact;
IF OBJECT_ID(N'hris.[fk_program_dimemployee_recruitment_fact]', 'U') IS NOT NULL
	alter table [hris].[employee_recruitment_fact] drop constraint fk_program_dimemployee_recruitment_fact;
IF OBJECT_ID(N'hris.[employee_recruitment_fact]', 'U') IS NOT NULL
	drop table [hris].[employee_recruitment_fact]