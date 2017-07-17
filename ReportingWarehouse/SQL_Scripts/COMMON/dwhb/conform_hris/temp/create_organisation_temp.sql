CREATE TABLE [conform].[organisation_temp] (
    [organisation_temp_key] int IDENTITY(1,1) NOT NULL,
	[organisation_key] int null,
    [organisation_code] varchar(20)   NULL,

);
GO

ALTER TABLE [conform].[organisation_temp]
ADD CONSTRAINT [PK_organisation_temp]
    PRIMARY KEY CLUSTERED ([organisation_temp_key] ASC);
GO