USE [dwhb];
GO



--back up all employees' sql
	insert into [conform].[all_employees_report_fact_bak] (	[all_employees_report_key],
	[portfolio_key],
	[service_stream_key],
	[program_key],
	[position_key],
	[employee_key],
	[employee_type],
	[employee_class],
	[manager_key],
	[manager_position_key],
	[commencement_date_key],
	[terminate_date_key],
	[effective_date_key],
	[expire_date_key],
	[count])
	select [all_employees_report_key],[portfolio_key],
	[service_stream_key],
	[program_key],
	[position_key],
	[employee_key],
	[employee_type],
	[employee_class],
	[manager_key],
	[manager_position_key],
	[commencement_date_key],
	[terminate_date_key],
	[effective_date_key],
	[expire_date_key],
	[count] from [conform].[all_employees_report_fact]
GO
