-------------------------------
-- [probation_monitoring_fact]
-------------------------------
IF OBJECT_ID(N'hris.[fk_employee_dimprobation_monitoring_fact]', 'U') IS NOT NULL
	alter table [hris].[probation_monitoring_fact] drop constraint [fk_employee_dimprobation_monitoring_fact];
IF OBJECT_ID(N'hris.[fk_date_dimprobation_monitoring_fact]', 'U') IS NOT NULL
	alter table [hris].[probation_monitoring_fact] drop constraint [fk_date_dimprobation_monitoring_fact];
IF OBJECT_ID(N'hris.[fk_organisation_dimprobation_monitoring_fact]', 'U') IS NOT NULL
	alter table [hris].[probation_monitoring_fact] drop constraint [fk_organisation_dimprobation_monitoring_fact];
IF OBJECT_ID(N'hris.[fk_portfolio_dimprobation_monitoring_fact]', 'U') IS NOT NULL
	alter table [hris].[probation_monitoring_fact] drop constraint [fk_portfolio_dimprobation_monitoring_fact];
IF OBJECT_ID(N'hris.[fk_service_stream_dimprobation_monitoring_fact]', 'U') IS NOT NULL
	alter table [hris].[probation_monitoring_fact] drop constraint [fk_service_stream_dimprobation_monitoring_fact];
IF OBJECT_ID(N'hris.[fk_program_dimprobation_monitoring_fact]', 'U') IS NOT NULL
	alter table [hris].[probation_monitoring_fact] drop constraint [fk_program_dimprobation_monitoring_fact];
IF OBJECT_ID(N'hris.[probation_monitoring_fact]', 'U') IS NOT NULL
	drop table [hris].[probation_monitoring_fact]