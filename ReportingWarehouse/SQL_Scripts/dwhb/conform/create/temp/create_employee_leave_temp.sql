CREATE TABLE [conform].[employee_leave_temp] (
    [employee_leave_temp_key] int IDENTITY(1,1) NOT NULL,
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
	[leave_date] date null,
	[leave_accrued_amount] int null,
	[leave_booked_amount] int null,
	[leave_accrued_taken] int null,
	[leave_type] varchar (20) null
	
);
GO

ALTER TABLE [conform].[employee_leave_temp]
ADD CONSTRAINT [PK_employee_leave_temp]
    PRIMARY KEY CLUSTERED ([employee_leave_temp_key] ASC);
GO