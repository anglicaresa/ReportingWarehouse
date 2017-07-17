CREATE TABLE [conform].[employee_pay_temp] (
    [employee_pay_temp_key] int IDENTITY(1,1) NOT NULL,
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
	[pay_period_end_date_key] int null,
	[pay_document_no] varchar(10) null,
	[number_units]  decimal(10,6) null,
	[pay_item_rate] decimal(10,6) null,
	[pay_item_amount] decimal(10,6) null,
	[taxable] varchar(10) null,
	[pay_component_def] int null,
	
);
GO

ALTER TABLE [conform].[employee_pay_temp]
ADD CONSTRAINT [PK_employee_pay_temp]
    PRIMARY KEY CLUSTERED ([employee_pay_temp_key] ASC);
GO