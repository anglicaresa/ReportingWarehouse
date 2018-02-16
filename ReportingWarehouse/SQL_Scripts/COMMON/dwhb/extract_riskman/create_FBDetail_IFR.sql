CREATE TABLE [dbo].[FBDetail_IFR](
	[FBDetail_ID] [int] NOT NULL,
	[FBFormalityLevel] [varchar](50) NULL,
	[FBModeReceived] [varchar](255) NULL,
	[FBAckDate] [datetime] NULL,
	[FBFirstFormalDate] [datetime] NULL,
	[FBReportedTo] [varchar](100) NULL,
	[FBReportedToPosition] [varchar](100) NULL,
	[FBReferredTo] [varchar](100) NULL,
	[FBReferredToPosition] [varchar](100) NULL,
	[FBAssocInc] [bit] NULL,
	[FBAssocIncNo] [varchar](250) NULL,
	[FBInsurerNotifReq] [bit] NULL,
	[FBSAC] [varchar](25) NULL,
	[FBSACScore] [int] NULL,
	[FBSACRowLabel] [varchar](50) NULL,
	[FBSACColLabel] [varchar](50) NULL,
	[FBRefPath] [varchar](30) NULL,
	[FBResultedInQIA] [bit] NULL,
	[FBModeReceivedOther] [varchar](100) NULL,
	[FBRelateClient] [bit] NULL,
	[FBSpecificService] [bit] NULL,
	[FBRelateStaff] [bit] NULL,
	[FBRelateStaffName] [varchar](100) NULL,
	[FBCreateIncident] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[FBDetail_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO