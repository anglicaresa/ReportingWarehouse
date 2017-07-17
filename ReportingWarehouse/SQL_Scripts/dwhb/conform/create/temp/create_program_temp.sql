CREATE TABLE [conform].[program_temp] (
    [program_temp_key] int IDENTITY(1,1) NOT NULL,
	[program_key] int null,
    [program_code] varchar(20)   NULL,
	[service_stream_code] varchar(20) null
);
GO

ALTER TABLE [conform].[program_temp]
ADD CONSTRAINT [PK_program_temp]
    PRIMARY KEY CLUSTERED ([program_temp_key] ASC);
GO