-- dimensions
IF OBJECT_ID(N'hris.[date_dim]', 'U') IS NOT NULL
	drop table [hris].[date_dim]

IF OBJECT_ID(N'hris.[accreditation_dim]', 'U') IS NOT NULL
	drop table [hris].[accreditation_dim]

IF OBJECT_ID(N'hris.[employee_benefit_dim]', 'U') IS NOT NULL
	drop table [hris].[employee_benefit_dim]

IF OBJECT_ID(N'hris.[employee_dim]', 'U') IS NOT NULL
	drop table [hris].[employee_dim]

IF OBJECT_ID(N'hris.[employee_payment_dim]', 'U') IS NOT NULL
	drop table [hris].[employee_payment_dim]

IF OBJECT_ID(N'hris.[item_dim]', 'U') IS NOT NULL
	drop table [hris].[item_dim]

IF OBJECT_ID(N'hris.[leave_type_dim]', 'U') IS NOT NULL
	drop table [hris].[leave_type_dim]

IF OBJECT_ID(N'hris.[month_dim]', 'U') IS NOT NULL
	drop table [hris].[month_dim]

IF OBJECT_ID(N'hris.[organisation_dim]', 'U') IS NOT NULL
	drop table [hris].[organisation_dim]

IF OBJECT_ID(N'hris.[portfolio_dim]', 'U') IS NOT NULL
	drop table [hris].[portfolio_dim]

IF OBJECT_ID(N'hris.[position_dim]', 'U') IS NOT NULL
	drop table [hris].[position_dim]

IF OBJECT_ID(N'hris.[program_dim]', 'U') IS NOT NULL
	drop table [hris].[program_dim]

IF OBJECT_ID(N'hris.[salary_code_dim]', 'U') IS NOT NULL
	drop table [hris].[salary_code_dim]

IF OBJECT_ID(N'hris.[service_stream_dim]', 'U') IS NOT NULL
	drop table [hris].[service_stream_dim]