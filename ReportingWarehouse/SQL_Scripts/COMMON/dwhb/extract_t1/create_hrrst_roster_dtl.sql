﻿CREATE TABLE [extract].[HRRST_ROSTER_DTL](
	[COMPANY_CODE] [int] NOT NULL,
	[ROSTER_CODE] [varchar](10) NOT NULL,
	[DAY_NUMBER] [int] NOT NULL,
	[SHIFT_CODE] [varchar](10) NULL,
	[CLOCK_IN_TIME] [datetime] NULL,
	[CLOCK_OUT_TIME] [datetime] NULL,
	[ROW_STATUS] [int] NULL,
	[CLOSED_USER] [varchar](14) NULL,
	[CLOSED_DATE] [datetime] NULL,
	[CLOSED_TIME] [int] NULL,
	[CLOSED_TERM] [varchar](10) NULL,
	[CLOSED_WINDOW] [varchar](8) NULL,
	[CRUSER] [varchar](14) NULL,
	[CRDATEI] [datetime] NULL,
	[CRTIMEI] [int] NULL,
	[CRTERM] [varchar](10) NULL,
	[CRWINDOW] [varchar](8) NULL,
	[LAST_MOD_USER] [varchar](14) NULL,
	[LAST_MOD_DATEI] [datetime] NULL,
	[LAST_MOD_TIMEI] [int] NULL,
	[LAST_MOD_TERM] [varchar](10) NULL,
	[LAST_MOD_WINDOW] [varchar](8) NULL,
	[VERS] [int] NULL,
 CONSTRAINT [HRFRRD_IDX1] PRIMARY KEY CLUSTERED 
(
	[COMPANY_CODE] ASC,
	[ROSTER_CODE] ASC,
	[DAY_NUMBER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO