CREATE TABLE [extract_riskman].[CH_IFR](
	[CH_ID] [int] NOT NULL,
	[PCARECID] [varchar](50) NULL,
	[PCAPrevRECID] [varchar](50) NULL,
	[CHReportBehalf] [bit] NULL,
	[CHReportWho] [varchar](100) NULL,
	[CHExpYrs] [varchar](50) NULL,
	[CHWhereEventOccur] [varchar](100) NULL,
	[CHStaffTraining] [bit] NULL,
	[CHPrevActReq] [bit] NULL,
	[OHSAltDuty] [bit] NULL,
	[HasHSRNot] [bit] NULL,
	[CHLocalGovtMethod] [varchar](50) NULL,
	[CHLocalGovtContact] [varchar](50) NULL,
	[CHDHSMethod] [varchar](50) NULL,
	[CHDHSContact] [varchar](50) NULL,
	[CHDoHAMethod] [varchar](50) NULL,
	[CHDoHAContact] [varchar](50) NULL,
	[CHPhysLocOther] [varchar](100) NULL,
	[CHWorkStartTime] [datetime] NULL,
	[CreatComp] [varchar](200) NULL,
	[SiteAdd] [varchar](200) NULL,
	[OthService] [varchar](100) NULL,
	[OthCustSite] [varchar](100) NULL,
	[OthSite] [varchar](100) NULL,
	[IncRelChild] [bit] NULL,
	[ComplaintID] [int] NULL,
	[ContFactOth] [varchar](100) NULL,
	[RiskCatFactOth] [varchar](100) NULL,
	[SafeWorkOth] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[CH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO