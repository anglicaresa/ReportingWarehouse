﻿CREATE TABLE [extract_kypera].[PropertyStructure_District](
	[Company] [int] NOT NULL,
	[Code] [varchar](3) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[StructureLevel] [varchar](25) NOT NULL,
	[NominalCostCentre] [varchar](50) NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[LastUpdateBy] [int] NULL,
	[LastUpdateOn] [datetime] NULL,
	[Version] [varchar](100) NULL,
	[TechnicalOfficerCode] [int] NULL,
	[Active] [bit] NULL,
	[Number] [varchar](25) NULL,
	[Street] [varchar](100) NULL,
	[Town] [varchar](40) NULL,
	[County] [varchar](40) NULL,
	[Postcode] [varchar](10) NULL,
	[NominalDepartment] [varchar](50) NULL,
	[AlternateReference] [varchar](50) NULL
) ON [PRIMARY]

GO
