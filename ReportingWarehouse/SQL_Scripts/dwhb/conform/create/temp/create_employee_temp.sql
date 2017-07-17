CREATE TABLE [conform].[employee_temp] (
    [employee_temp_key] int IDENTITY(1,1) NOT NULL,
	[employee_key] int null,
    [id_number] varchar(20)   NULL,
	[organisation_code] varchar(20) null,
	[organisation_key] int null,
	[portfolio_code] varchar(20) null,
	[portfolio_key] int null,
	[service_stream_code] varchar(20) null,
	[service_stream_key] int null,
	[program_code] varchar(20) null,
	[program_key] int null,
	[position_code] varchar(20)   NULL,
    [position_key] int   NULL,
	[hired_date] date null,
	[probation_end_date] date null,
	[position_start_date] date null,
	[termination_date] date null,
	[primary_position_flag] varchar(10) null,
	[new_position_flag] varchar(10) null
);
GO

ALTER TABLE [conform].[employee_temp]
ADD CONSTRAINT [PK_employee_temp]
    PRIMARY KEY CLUSTERED ([employee_temp_key] ASC);
GO