CREATE TABLE [conform].[sub_program_temp] (
    [sub_program_temp_key] int IDENTITY(1,1) NOT NULL,
	[sub_program_key] int null,
    [sub_program_code] varchar(20)   NULL,
	[program_code] varchar(20) null
);
GO

ALTER TABLE [conform].[sub_program_temp]
ADD CONSTRAINT [PK_sub_program_temp]
    PRIMARY KEY CLUSTERED ([sub_program_temp_key] ASC);
GO