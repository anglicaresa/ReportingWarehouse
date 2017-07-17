-- facts

------------------
IF OBJECT_ID(N'[management].[fk_date_dimerror_event_detail_fact]', 'U') IS NOT NULL
	alter table [management].[error_event_detail_fact] drop constraint [fk_date_dimerror_event_detail_fact];
IF OBJECT_ID(N'[management].[fk_batch_dimerror_event_detail_fact]', 'U') IS NOT NULL
	alter table [management].[error_event_detail_fact] drop constraint [fk_batch_dimerror_event_detail_fact];
IF OBJECT_ID(N'[management].[fk_table_dimerror_event_detail_fact]', 'U') IS NOT NULL
	alter table [management].[error_event_detail_fact] drop constraint [fk_table_dimerror_event_detail_fact];
IF OBJECT_ID(N'[management].[fk_package_dimerror_event_detail_fact]', 'U') IS NOT NULL
	alter table [management].[error_event_detail_fact] drop constraint [fk_package_dimerror_event_detail_fact];
IF OBJECT_ID(N'[management].[error_event_detail_fact]', 'U') IS NOT NULL
	drop table [management].[error_event_detail_fact]

------------------
IF OBJECT_ID(N'[management].[fk_error_event_factbatch_dim]', 'U') IS NOT NULL
	alter table [management].[error_event_detail_fact] drop constraint [fk_error_event_factbatch_dim];
IF OBJECT_ID(N'[management].[fk_date_dimerror_event_fact]', 'U') IS NOT NULL
	alter table [management].[error_event_detail_fact] drop constraint [fk_date_dimerror_event_fact];
IF OBJECT_ID(N'[management].[fk_package_dimerror_event_fact]', 'U') IS NOT NULL
	alter table [management].[error_event_detail_fact] drop constraint [fk_package_dimerror_event_fact];
IF OBJECT_ID(N'[management].[error_event_fact]', 'U') IS NOT NULL
	drop table [management].[error_event_fact]

------------------
IF OBJECT_ID(N'[management].[fk_cdc_load_factdate_dim]', 'U') IS NOT NULL
	alter table [management].[etl_process_fact] drop constraint [fk_cdc_load_factdate_dim];
IF OBJECT_ID(N'[management].[fk_cdc_load_factbatch_dim]', 'U') IS NOT NULL
	alter table [management].[etl_process_fact] drop constraint [fk_cdc_load_factbatch_dim];
IF OBJECT_ID(N'[management].[fk_cdc_load_facttable_dim]', 'U') IS NOT NULL
	alter table [management].[etl_process_fact] drop constraint [fk_cdc_load_facttable_dim];
IF OBJECT_ID(N'[management].[fk_cdc_load_factstatus_dim]', 'U') IS NOT NULL
	alter table [management].[etl_process_fact] drop constraint [fk_cdc_load_factstatus_dim];
IF OBJECT_ID(N'[management].[etl_process_fact]', 'U') IS NOT NULL
	drop table [management].[etl_process_fact]

------------------
IF OBJECT_ID(N'[management].[fk_table_dimjob_schedule]', 'U') IS NOT NULL
	alter table [management].[job_control] drop constraint [fk_table_dimjob_schedule];
IF OBJECT_ID(N'[management].[fk_table_dimjob_control]', 'U') IS NOT NULL
	alter table [management].[job_control] drop constraint [fk_table_dimjob_control];
IF OBJECT_ID(N'[management].[fk_package_dimjob_control]', 'U') IS NOT NULL
	alter table [management].[job_control] drop constraint [fk_package_dimjob_control];
IF OBJECT_ID(N'[management].[job_control]', 'U') IS NOT NULL
	drop table [management].[job_control]

-- dimensions
IF OBJECT_ID(N'[management].[batch_dim]', 'U') IS NOT NULL
	drop table [management].[batch_dim]

IF OBJECT_ID(N'[management].[date_dim]', 'U') IS NOT NULL
	drop table [management].[date_dim]



IF OBJECT_ID(N'[management].[package_dim]', 'U') IS NOT NULL
	drop table [management].[package_dim]

IF OBJECT_ID(N'[management].[status_dim]', 'U') IS NOT NULL
	drop table [management].[status_dim]

IF OBJECT_ID(N'[management].[table_dim]', 'U') IS NOT NULL
	drop table [management].[table_dim]

	
