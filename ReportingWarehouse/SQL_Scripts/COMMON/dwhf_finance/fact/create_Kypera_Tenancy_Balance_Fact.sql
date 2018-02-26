CREATE TABLE [finance].[Kypera_Tenancy_Balance_Fact](
	[Balance_key] [int] NOT NULL,
	[TenancyID] [int] NULL,
	[Status] [varchar](7) NULL,
	[Salutaion] [varchar](100) NULL,
	[Address] [varchar](256) NULL,
	[PropertyID] [varchar](13) NULL,
	[StartDate] [varchar](30) NULL,
	[EndDate] [varchar](30) NULL,
	[HousingOfficer] [varchar](255) NULL,
	[Entity] [varchar](3) NULL,
	[Scheme] [varchar](50) NULL,
	[RentBalance] [money] NULL,
	[OtherChargesBalance] [money] NULL,
	[Balance] [money] NOT NULL,
	[EffectiveRentDaysInArrears] [money] NULL,
	[EffectiveTotalDaysInArrears] [money] NULL,
	[CreditORArrears] [varchar](7) NULL,
	[BK_day_key] [int] NULL
) ON [PRIMARY]

GO


