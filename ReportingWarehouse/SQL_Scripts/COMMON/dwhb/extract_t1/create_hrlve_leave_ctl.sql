-- creating table 'hrlve_leave_ctl'
create table [extract].[hrlve_leave_ctl] (
    [LEAVE_ID] [int] NOT NULL,
	[EMPLOYEE_ID] [int] NULL,
	[REQUEST_TYPE] [varchar](10) NULL,
	[PAY_COMPONENT_REF] [decimal](10, 4) NULL,
	[STATUS] [varchar](1) NULL,
	[START_DATE] [datetime] NULL,
	[HISTORICAL_IND] [varchar](1) NULL,
	[END_DATE] [datetime] NULL,
	[PART_DAY_IND] [varchar](1) NULL,
	[PART_DAY_UNITS] [decimal](18, 6) NULL,
	[COMMENTS] [varchar](1000) NULL,
	[POSITION_CODE] [varchar](10) NULL,
	[PAY_IN_ADVANCE_IND] [varchar](1) NULL,
	[EXTERNAL_REFERENCE] [varchar](40) NULL,
	[WORK_DAYS] [decimal](18, 6) NULL,
	[PUBLIC_HOLIDAYS] [decimal](18, 6) NULL,
	[PARENT_LEAVE_ID] [int] NULL,
	[ORIGINAL_LEAVE_ID] [int] NULL,
	[WRKFLW_SYSTEM] [varchar](10) NULL,
	[WRKFLW_NAME] [varchar](15) NULL,
	[APPROVAL_DATE] [datetime] NULL,
	[APPROVAL_USER_ID] [varchar](14) NULL,
	[VERS] [int] NULL,
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
	[BREAKDOWN_OVERRIDDEN_IND] [varchar](1) NULL,
	[LEAVE_POLICY_CODE] [varchar](20) NULL,
	[FIRST_BLOCK_LEAVE_ID] [int] NULL,
	[FINAL_BLOCK_IND] [varchar](1) NULL,
	[FINALISED_IND] [varchar](1) NULL,
	[COMPANY_CODE] [int] NULL,
 CONSTRAINT [HRLVE_LEAVE_CTL_IDX1] PRIMARY KEY CLUSTERED 
(
	[LEAVE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO