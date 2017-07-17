-------------------------------
-- [probation_monitoring_fact]
-------------------------------
IF OBJECT_ID(N'conform.[fk_employee_dimprobation_monitoring_fact]', 'U') IS NOT NULL
	alter table [conform].[probation_monitoring_fact] drop constraint [fk_employee_dimprobation_monitoring_fact];
IF OBJECT_ID(N'conform.[fk_date_dimprobation_monitoring_fact]', 'U') IS NOT NULL
	alter table [conform].[probation_monitoring_fact] drop constraint [fk_date_dimprobation_monitoring_fact];
IF OBJECT_ID(N'conform.[fk_organisation_dimprobation_monitoring_fact]', 'U') IS NOT NULL
	alter table [conform].[probation_monitoring_fact] drop constraint [fk_organisation_dimprobation_monitoring_fact];
IF OBJECT_ID(N'conform.[fk_portfolio_dimprobation_monitoring_fact]', 'U') IS NOT NULL
	alter table [conform].[probation_monitoring_fact] drop constraint [fk_portfolio_dimprobation_monitoring_fact];
IF OBJECT_ID(N'conform.[fk_service_stream_dimprobation_monitoring_fact]', 'U') IS NOT NULL
	alter table [conform].[probation_monitoring_fact] drop constraint [fk_service_stream_dimprobation_monitoring_fact];
IF OBJECT_ID(N'conform.[fk_program_dimprobation_monitoring_fact]', 'U') IS NOT NULL
	alter table [conform].[probation_monitoring_fact] drop constraint [fk_program_dimprobation_monitoring_fact];
IF OBJECT_ID(N'conform.[probation_monitoring_fact]', 'U') IS NOT NULL
	drop table [conform].[probation_monitoring_fact]