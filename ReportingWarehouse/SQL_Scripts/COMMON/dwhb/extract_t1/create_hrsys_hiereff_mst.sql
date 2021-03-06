﻿create table [extract].[hrsys_hiereff_mst](
	[COMPANY_CODE] [int] NOT NULL,
	[HIERARCHY_TYPE] [varchar](10) NOT NULL,
	[HIERARCHY_CODE] [varchar](10) NOT NULL,
	[EFFECTIVE_DATEI] [datetime] NOT NULL,
	[SECURITY_ROLE_CODE] [varchar](50) NULL,
	[COMMENTS] [varchar](255) NULL,
	[STATUS] [varchar](10) NULL,
	[END_DATEI] [datetime] NULL,
	[FTES_PER_POSITION] [decimal](18, 6) NULL,
	[DEFAULT_FTE] [decimal](18, 6) NULL,
	[EMPL_TYPE_CODE] [varchar](10) NULL,
	[EMPL_CLASS] [varchar](10) NULL,
	[PAY_LOCATION] [varchar](10) NULL,
	[PAY_BASIS_CODE] [varchar](10) NULL,
	[PAY_PERIOD_TYPE] [varchar](10) NULL,
	[PAY_DOC_TYPE] [varchar](1) NULL,
	[HOLIDAY_CTGY] [varchar](10) NULL,
	[DEPARTMENT_CODE] [varchar](10) NULL,
	[ORG_UNIT_CODE] [varchar](10) NULL,
	[WORK_GROUP] [varchar](10) NULL,
	[WORK_LOCATION] [varchar](10) NULL,
	[TRADE_CODE] [varchar](10) NULL,
	[UNION_CODE] [varchar](10) NULL,
	[SEASON_STATUS] [int] NULL,
	[MST_COMPANY_CODE] [int] NULL,
	[EMPL_COND_AWARD] [varchar](10) NULL,
	[MIN_EMPL_COND_GRADE] [varchar](10) NULL,
	[MAX_EMPL_COND_GRADE] [varchar](10) NULL,
	[TS_SYSTEM_NAME] [varchar](10) NULL,
	[TS_FMT_NAME] [varchar](10) NULL,
	[POSITION_SUPERVSR] [varchar](10) NULL,
	[ASCO_CODE] [varchar](20) NULL,
	[VERS] [int] NULL,
	[TECHONE_FLD1] [varchar](40) NULL,
	[TECHONE_FLD2] [varchar](40) NULL,
	[TECHONE_FLD3] [decimal](18, 6) NULL,
	[TECHONE_FLD4] [decimal](18, 6) NULL,
	[TECHONE_FLD5] [datetime] NULL,
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
	[MIN_EMPL_COND_LEVEL] [varchar](10) NULL,
	[MAX_EMPL_COND_LEVEL] [varchar](10) NULL,
	[DISB_CODE] [varchar](10) NULL,
	[SECURITY_PROFILE_NAME] [varchar](50) NULL,
	[POS_PROFILE_CODE] [varchar](10) NULL,
	[POS_PROFILE_OVR_IND] [varchar](1) NULL,
	[BUS_CRITICAL_IND] [varchar](1) NULL,
	[TLT_MGT_SYSTEM_CODE] [varchar](10) NULL,
	[PERF_APPRS_METH_CODE] [varchar](10) NULL,
	[PERF_GOALS_APPRS_IND] [varchar](1) NULL,
	[PERF_GOALS_WEIGHT] [int] NULL,
	[PERF_GOALS_MIN_NBR] [int] NULL,
	[COMPETENCIES_APPRS_IND] [varchar](1) NULL,
	[COMPETENCIES_WEIGHT] [int] NULL,
	[COMPETENCIES_MIN_NBR] [int] NULL,
	[SKILLS_APPRS_IND] [varchar](1) NULL,
	[SKILLS_WEIGHT] [int] NULL,
	[SKILLS_MIN_NBR] [int] NULL,
	[DUTIES_APPRS_IND] [varchar](1) NULL,
	[DUTIES_WEIGHT] [int] NULL,
	[DUTIES_MIN_NBR] [int] NULL,
	[DEV_GOALS_APPRS_IND] [varchar](1) NULL,
	[DEV_GOALS_WEIGHT] [int] NULL,
	[DEV_GOALS_MIN_NBR] [int] NULL,
	[LAST_PUBLISH_DATE] [datetime] NULL,
	[ORG_SYSTEM_CODE] [varchar](20) NULL,
	[POS_AUTH_LVL] [int] NULL,
	[COMPANY_SUPERVSR] [int] NULL,
	[POSITION_DESCR] [varchar](50) NULL,
	[SUPERVISOR_IND] [varchar](1) NULL,
	[COMPANY_SUPERVSR_1] [int] NULL,
	[POSITION_SUPERVSR_1] [varchar](10) NULL,
	[COMPANY_SUPERVSR_2] [int] NULL,
	[POSITION_SUPERVSR_2] [varchar](10) NULL,
	[SUPERVISOR_IND_1] [varchar](1) NULL,
	[SUPERVISOR_IND_2] [varchar](1) NULL,
	[UPDATE_EMPL_ORG_DTLS_IND] [varchar](1) NULL,
	[REC_SYSTEM_CODE] [varchar](10) NULL,
	[JOB_TEMPLATE_KEY] [int] NULL,
	[JOB_TEMPLATE_OVR_IND] [varchar](1) NULL,
 CONSTRAINT [HRFHEM_IDX1] PRIMARY KEY CLUSTERED 
(
	[COMPANY_CODE] ASC,
	[HIERARCHY_TYPE] ASC,
	[HIERARCHY_CODE] ASC,
	[EFFECTIVE_DATEI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO