IF OBJECT_ID(N'conform.[fk_leave_type_dimemployee_leave_booked_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_leave_booked_fact] drop constraint [fk_leave_type_dimemployee_leave_booked_fact];
IF OBJECT_ID(N'conform.[fk_employee_dimemployee_leave_booked_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_leave_booked_fact] drop constraint [fk_employee_dimemployee_leave_booked_fact];
IF OBJECT_ID(N'conform.[fk_leave_booked_fact_booked_date]', 'U') IS NOT NULL
	alter table [conform].[employee_leave_booked_fact] drop constraint [fk_leave_booked_fact_booked_date];
IF OBJECT_ID(N'conform.[fk_leave_booked_fact_leave_start_date]', 'U') IS NOT NULL
	alter table [conform].[employee_leave_booked_fact] drop constraint [fk_leave_booked_fact_leave_start_date];
IF OBJECT_ID(N'conform.[fk_leave_booked_fact_leave_end_date]', 'U') IS NOT NULL
	alter table [conform].[employee_leave_booked_fact] drop constraint [fk_leave_booked_fact_leave_end_date];
IF OBJECT_ID(N'conform.[fk_organisation_dimemployee_leave_booked_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_leave_booked_fact] drop constraint [fk_organisation_dimemployee_leave_booked_fact];
IF OBJECT_ID(N'conform.[fk_portfolio_dimemployee_leave_booked_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_leave_booked_fact] drop constraint [fk_portfolio_dimemployee_leave_booked_fact];
IF OBJECT_ID(N'conform.[fk_service_stream_dimemployee_leave_booked_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_leave_booked_fact] drop constraint [fk_service_stream_dimemployee_leave_booked_fact];
IF OBJECT_ID(N'conform.[fk_program_dimemployee_leave_booked_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_leave_booked_fact] drop constraint [fk_program_dimemployee_leave_booked_fact];
IF OBJECT_ID(N'conform.[fk_position_dimemployee_leave_booked_fact]', 'U') IS NOT NULL
	alter table [conform].[employee_leave_booked_fact] drop constraint [fk_position_dimemployee_leave_booked_fact];



IF OBJECT_ID(N'conform.[employee_leave_booked_fact]', 'U') IS NOT NULL
	drop table [conform].[employee_leave_booked_fact]