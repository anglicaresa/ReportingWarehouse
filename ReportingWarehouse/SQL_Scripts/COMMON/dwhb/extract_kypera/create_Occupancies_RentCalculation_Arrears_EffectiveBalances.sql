CREATE TABLE [extract_kypera].[Occupancies_RentCalculation_Arrears_EffectiveBalances](
	[Company] [int] NOT NULL,
	[Occupancy] [int] NOT NULL,
	[ActualRentBalance] [money] NULL,
	[ActualNonRentBalance] [money] NULL,
	[ActualTotalBalance] [money] NULL,
	[EffectiveRentBalance] [money] NULL,
	[EffectiveRentDaysInArrears] [money] NULL,
	[EffectiveNonRentBalance] [money] NULL,
	[EffectiveNonRentDaysInArrears] [money] NULL,
	[EffectiveTotalBalance] [money] NULL,
	[EffectiveTotalDaysInArrears] [money] NULL
) ON [PRIMARY]

GO
