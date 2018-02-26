﻿CREATE TABLE [extract_kypera].[Occupancies_Occupancy](
	[Company] [int] NOT NULL,
	[id] [int] NOT NULL,
	[Unit] [varchar](13) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[Type] [int] NOT NULL,
	[SubType] [int] NULL,
	[OccupancySubType] [int] NOT NULL,
	[OccupancySubTypeTenants] [int] NOT NULL,
	[PropertyStatus] [int] NOT NULL,
	[Salutation] [varchar](100) NULL,
	[Details] [text] NULL,
	[Warning] [int] NULL,
	[BillTo] [int] NULL,
	[BillingFrequency] [tinyint] NULL,
	[DecantTo] [varchar](13) NULL,
	[CreditLimit] [money] NULL,
	[PaymentTerms] [smallint] NULL,
	[SearchRef] [varchar](20) NULL,
	[SalutationLetter] [varchar](50) NULL,
	[AllPayRef] [varchar](50) NULL,
	[SalesLedgerAccount] [varchar](50) NULL,
	[NominalCostCentre] [varchar](50) NULL,
	[FinalBalance] [money] NULL,
	[TechnicalArrears] [money] NULL,
	[TenantArrears] [money] NULL,
	[Version] [varchar](100) NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[LastUpdateBy] [int] NULL,
	[LastUpdateOn] [datetime] NULL,
	[FloatAmount] [money] NULL,
	[FloatDate] [datetime] NULL,
	[Pets] [varchar](50) NULL,
	[PetsDatePermissionAppliedFor] [datetime] NULL,
	[DefaultContact] [int] NULL,
	[BfwdTechnicalArrears] [money] NULL,
	[IsSTLNotApplyChargeForDebitRun] [bit] NULL,
	[HasAssociationInsurance] [bit] NULL,
	[PayrollNumber] [varchar](50) NULL,
	[ChargeGroup] [int] NULL,
	[PeriodSequence] [int] NULL,
	[CurrentOccupancy] [bit] NULL,
	[IsLinkedAccount] [bit] NULL,
	[LinkedToOccupancy] [int] NULL,
	[LinkedAccountType] [int] NULL,
	[AccessDetails] [varchar](500) NULL,
	[ExternalFilesFolder] [varchar](200) NULL,
	[EthnicityOfOccupancy] [int] NULL,
	[AnyPeopleDisabled] [int] NULL,
	[SupportContractHours] [numeric](10, 2) NULL,
	[SupportContractHourlyRate] [money] NULL,
	[EndOfTenancyReason] [int] NULL,
	[ArrearsPolicy] [int] NULL,
	[RTBAppliedFor] [bit] NULL,
	[RTBRights] [int] NULL,
	[RTBStage] [int] NULL,
	[RTBStageDate] [datetime] NULL,
	[AdditionalPostingReference] [varchar](100) NULL,
	[MinDoubleBedrooms] [int] NULL,
	[MinSingleBedrooms] [int] NULL,
	[Overcrowding] [int] NULL,
	[ReceivesDirectCredit] [bit] NULL,
	[LastDirectCreditPaymentDate] [datetime] NULL,
	[DirectCreditPaymentFrequency] [int] NULL,
	[NextDirectCreditPaymentDate] [datetime] NULL,
	[TransferredFromOccupancy] [int] NULL,
	[DefaultServiceChargePaymentMethod] [int] NULL,
	[NoticeToVacantDate] [datetime] NULL,
	[BondAmountPaid] [money] NULL,
	[BondAmountClaimed] [money] NULL,
	[BondNotes] [text] NULL,
	[BondReference] [varchar](100) NULL,
	[NoFamilyGroups] [int] NULL,
	[FamilyType1] [int] NULL,
	[FamilyType2] [int] NULL,
	[FamilyType3] [int] NULL,
	[FamilyType4] [int] NULL,
	[FamilyType5] [int] NULL,
	[PaymentInstructions] [varchar](1000) NULL,
	[BondTotal] [money] NULL,
	[BondAmountRefunded] [money] NULL,
	[BondLoanReference] [varchar](100) NULL,
	[HASICode] [int] NULL,
	[SignedSupport] [int] NULL,
	[MainLanguageSpokenAtHome] [varchar](50) NULL,
	[FinancialEndDate] [datetime] NULL,
	[WaitingListCategory] [int] NULL,
	[UsualPaymentMethod] [int] NULL,
	[RentPaidTo] [datetime] NULL,
	[Remainder] [money] NULL,
	[GreatestNeed] [int] NULL,
	[PrimaryNotEnglish] [int] NULL,
	[PrimaryLanguage] [int] NULL,
	[HASI] [varchar](10) NULL,
	[IsSupported] [int] NULL,
	[RentSetting] [int] NULL,
	[PaidToDateCalculationBaseDate] [datetime] NULL,
	[RegisteredForSupport] [bit] NULL,
	[CAPMH_TTR] [int] NULL,
	[CAPMH_WNH] [int] NULL,
	[InternalTransfer] [int] NULL,
	[EquityPercentage] [money] NULL,
	[LastRentReview] [datetime] NULL,
	[NextRentReview] [datetime] NULL,
	[LastRentReviewType] [int] NULL,
	[CaseManagementAgency] [int] NULL,
	[RentCapped] [bit] NULL,
	[RentAllowance] [money] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
