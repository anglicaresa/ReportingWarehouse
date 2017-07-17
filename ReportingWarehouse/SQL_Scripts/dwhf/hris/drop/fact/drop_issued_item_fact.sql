IF OBJECT_ID(N'hris.[fk_item_dimissued_item_fact]', 'U') IS NOT NULL
	alter table [hris].[issued_item_fact] drop constraint [fk_item_dimissued_item_fact];
IF OBJECT_ID(N'hris.[fk_date_dimissued_item_fact]', 'U') IS NOT NULL
	alter table [hris].[issued_item_fact] drop constraint [fk_date_dimissued_item_fact];
IF OBJECT_ID(N'hris.[fk_employee_dimissued_item_fact]', 'U') IS NOT NULL
	alter table [hris].[issued_item_fact] drop constraint [fk_employee_dimissued_item_fact];
IF OBJECT_ID(N'hris.[fk_date_dimissued_item_fact1]', 'U') IS NOT NULL
	alter table [hris].[issued_item_fact] drop constraint [fk_date_dimissued_item_fact1];
IF OBJECT_ID(N'hris.[fk_organisation_dimissued_item_fact]', 'U') IS NOT NULL
	alter table [hris].[issued_item_fact] drop constraint [fk_organisation_dimissued_item_fact];
IF OBJECT_ID(N'hris.[fk_portfolio_dimissued_item_fact]', 'U') IS NOT NULL
	alter table [hris].[issued_item_fact] drop constraint [fk_portfolio_dimissued_item_fact];
IF OBJECT_ID(N'hris.[fk_service_stream_dimissued_item_fact]', 'U') IS NOT NULL
	alter table [hris].[issued_item_fact] drop constraint [fk_service_stream_dimissued_item_fact];
IF OBJECT_ID(N'hris.[fk_program_dimissued_item_fact]', 'U') IS NOT NULL
	alter table [hris].[issued_item_fact] drop constraint [fk_program_dimissued_item_fact];
IF OBJECT_ID(N'hris.[fk_position_dimissued_item_fact]', 'U') IS NOT NULL
	alter table [hris].[issued_item_fact] drop constraint [fk_position_dimissued_item_fact];

	
	
	
	
	
	
	
	
	

IF OBJECT_ID(N'hris.[issued_item_fact]', 'U') IS NOT NULL
	drop table [hris].[issued_item_fact]