-- dimensions
IF OBJECT_ID(N'conform.[salary_code_dim]', 'U') IS NOT NULL
	drop table [conform].[salary_code_dim]
IF OBJECT_ID(N'conform.[date_dim]', 'U') IS NOT NULL
	drop table [conform].[date_dim]

IF OBJECT_ID(N'conform.[accreditation_dim]', 'U') IS NOT NULL
	drop table [conform].[accreditation_dim]

IF OBJECT_ID(N'conform.[employee_benefit_dim]', 'U') IS NOT NULL
	drop table [conform].[employee_benefit_dim]

IF OBJECT_ID(N'conform.[employee_dim]', 'U') IS NOT NULL
	drop table [conform].[employee_dim]

IF OBJECT_ID(N'conform.[employee_payment_dim]', 'U') IS NOT NULL
	drop table [conform].[employee_payment_dim]

IF OBJECT_ID(N'conform.[item_dim]', 'U') IS NOT NULL
	drop table [conform].[item_dim]

IF OBJECT_ID(N'conform.[leave_type_dim]', 'U') IS NOT NULL
	drop table [conform].[leave_type_dim]

IF OBJECT_ID(N'conform.[month_dim]', 'U') IS NOT NULL
	drop table [conform].[month_dim]

IF OBJECT_ID(N'conform.[organisation_dim]', 'U') IS NOT NULL
	drop table [conform].[organisation_dim]

IF OBJECT_ID(N'conform.[portfolio_dim]', 'U') IS NOT NULL
	drop table [conform].[portfolio_dim]

IF OBJECT_ID(N'conform.[position_dim]', 'U') IS NOT NULL
	drop table [conform].[position_dim]

IF OBJECT_ID(N'conform.[program_dim]', 'U') IS NOT NULL
	drop table [conform].[program_dim]

IF OBJECT_ID(N'conform.[service_stream_dim]', 'U') IS NOT NULL
	drop table [conform].[service_stream_dim]