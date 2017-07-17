CREATE TABLE [conform].[portfolio_temp] (
    [portfolio_temp_key] int IDENTITY(1,1) NOT NULL,
	[portfolio_key] int null,
    [portfolio_code] varchar(20)   NULL,
	[organisation_code] varchar(20) null
);
GO

ALTER TABLE [conform].[portfolio_temp]
ADD CONSTRAINT [PK_portfolio_temp]
    PRIMARY KEY CLUSTERED ([portfolio_temp_key] ASC);
GO