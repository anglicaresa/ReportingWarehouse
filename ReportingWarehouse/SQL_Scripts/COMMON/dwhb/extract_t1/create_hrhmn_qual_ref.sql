-- creating table 'hrhmn_qual_ref'
create table [extract].[hrhmn_qual_ref] (
    	[QUAL_CODE] [varchar](10) NOT NULL,
	[QUAL_DESC] [varchar](50) NULL,
	[ISSUING_INSTITUTON] [varchar](50) NULL,
	[COUNTRY_CODE] [varchar](10) NULL,
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
	[QUAL_TYPE] [varchar](10) NULL,
	[EXPIRY_TYPE] [varchar](10) NULL,
	[EXPIRY_PERIOD] [decimal](18, 6) NULL,
	[COMMENTS] [varchar](1000) NULL,
	[QUAL_CATEGORY] [varchar](1) NULL,
	[EMPL_EXPIRING_ALERT_DAYS] [int] NULL,
	[MGR_EXPIRING_ALERT_DAYS] [int] NULL,
	[HR_EXPIRING_ALERT_DAYS] [int] NULL,
	[EXPIRED_ALERT_DAYS] [int] NULL,
 CONSTRAINT [HRFHQR_IDX1] PRIMARY KEY CLUSTERED 
(
	[QUAL_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]