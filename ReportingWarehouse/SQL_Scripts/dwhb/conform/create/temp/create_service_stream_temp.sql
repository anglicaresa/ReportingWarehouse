CREATE TABLE [conform].[service_stream_temp] (
    [service_stream_temp_key] int IDENTITY(1,1) NOT NULL,
	[service_stream_key] int null,
    [service_stream_code] varchar(20)   NULL,
	[portfolio_code] varchar(20) null
);
GO

ALTER TABLE [conform].[service_stream_temp]
ADD CONSTRAINT [PK_service_stream_temp]
    PRIMARY KEY CLUSTERED ([service_stream_temp_key] ASC);
GO