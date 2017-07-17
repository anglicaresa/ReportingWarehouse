CREATE TABLE [extract_riskman].[vwsf_preventativecorrectiveaction](
	[keydata] [varchar](200) NOT NULL,
	[RecordID] [int] NOT NULL,
	[PCAPrevCorAct] [nvarchar](max) NULL,
	[PCAPrevCorActOth] [nvarchar](max) NULL,
	[PCAImpRespPer_name] [nvarchar](max) NULL,
	[PCAImpRespPer] [nvarchar](max) NULL,
	[PCAImpRespMgr_name] [nvarchar](max) NULL,
	[PCAImpRespMgr] [nvarchar](max) NULL,
	[PCANotif] [datetime] NULL,
	[PCAOverdueFollowUp] [datetime] NULL,
	[PCAActImpDate] [datetime] NULL,
	[PCAPrevCorActCompleted] [nvarchar](max) NULL,
	[PCAPrevCorActNotCompleted] [nvarchar](max) NULL,
	[PCAActComDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO