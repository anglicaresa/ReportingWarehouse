﻿
-- creating table 'f1_user_profile'
create table [extract].[f1_user_profile] (
   [USER_ID] [varchar](14) NOT NULL,
	[OVERRIDE_USER_ID] [varchar](255) NULL,
	[ACCOUNT_DISABLED] [varchar](1) NULL,
	[INVALID_ATTEMPTS] [int] NULL,
	[LOGIN_ATMPT_DATEI] [datetime] NULL,
	[LOGIN_ATMPT_TIMEI] [int] NULL,
	[CUR_AP_LEDG] [varchar](8) NULL,
	[CUR_AR_LEDG] [varchar](8) NULL,
	[CUR_GL_LEDG] [varchar](8) NULL,
	[CUR_AP_CHART] [varchar](8) NULL,
	[CUR_AR_CHART] [varchar](8) NULL,
	[CUR_GL_CHART] [varchar](8) NULL,
	[PL_CLOSE_STATE] [smallint] NULL,
	[OS_CLOSE_STATE] [smallint] NULL,
	[ADVANCE_ON_SAVE] [smallint] NULL,
	[MINIMISE] [smallint] NULL,
	[MAXIMISE] [smallint] NULL,
	[LOADSTATE] [smallint] NULL,
	[TOOLBAR] [smallint] NULL,
	[MENUSTYLE] [smallint] NULL,
	[PASSWORD] [varchar](2048) NULL,
	[PASSWD_MIN_LENGTH] [smallint] NULL,
	[LAST_LOGIN] [datetime] NULL,
	[PASSWD_DURATION] [smallint] NULL,
	[START_MENU] [varchar](9) NULL,
	[USER_NAME] [varchar](30) NULL,
	[FST_NAME] [varchar](25) NULL,
	[LST_NAME] [varchar](25) NULL,
	[TITLE] [varchar](5) NULL,
	[NARR1] [varchar](40) NULL,
	[NARR2] [varchar](40) NULL,
	[NARR3] [varchar](40) NULL,
	[DEPT] [varchar](25) NULL,
	[PHONE] [varchar](15) NULL,
	[FAX] [varchar](15) NULL,
	[PASSWD_CHANGED] [datetime] NULL,
	[CASCADE_FORMS] [smallint] NULL,
	[DISPLAYMENUS] [smallint] NULL,
	[DISPLAYPROGRAMS] [smallint] NULL,
	[DB_SYS_USER_ID] [varchar](14) NULL,
	[DB_SYS_PASSWD] [varchar](14) NULL,
	[DB_USER_ID] [varchar](14) NULL,
	[DB_PASSWD] [varchar](14) NULL,
	[COMMONSENSE] [smallint] NULL,
	[POSITION] [smallint] NULL,
	[ORIENTATION] [smallint] NULL,
	[CUR_PLOCN_CODE] [varchar](4) NULL,
	[SECURITY_ACCESS] [varchar](1) NULL,
	[DIRCDVERS] [smallint] NULL,
	[DIRCD] [varchar](9) NULL,
	[SUPERUSER] [varchar](1) NULL,
	[FORMSTATE] [smallint] NULL,
	[RESIZE] [varchar](1) NULL,
	[DBLCLICK] [varchar](1) NULL,
	[SMALL_FONTS] [varchar](1) NULL,
	[FONT_SIZE] [decimal](4, 2) NULL,
	[CHK_ALLOW_BUILD] [varchar](1) NULL,
	[CHK_EXT_CRIT_SMALL] [varchar](1) NULL,
	[CHK_EXT_CRIT_LARGE] [varchar](1) NULL,
	[VIEW_BTNBAR_IND] [varchar](1) NULL,
	[VIEW_OBJBAR_IND] [varchar](1) NULL,
	[CACHE_EXES] [varchar](1) NULL,
	[CACHE_MENUS] [varchar](1) NULL,
	[EMAIL_ADDR_NAME] [varchar](255) NULL,
	[WEB_MENU] [varchar](9) NULL,
	[TECHONE_FLD1] [varchar](40) NULL,
	[TECHONE_FLD2] [varchar](40) NULL,
	[TECHONE_FLD3] [varchar](20) NULL,
	[TECHONE_FLD4] [varchar](20) NULL,
	[TECHONE_FLD5] [varchar](20) NULL,
	[TECHONE_FLD6] [varchar](20) NULL,
	[USER_FLD1] [varchar](20) NULL,
	[USER_FLD2] [varchar](20) NULL,
	[USER_FLD3] [varchar](20) NULL,
	[USER_FLD4] [varchar](20) NULL,
	[USER_FLD5] [varchar](20) NULL,
	[CS_ACCESS_CTRL] [varchar](1) NULL,
	[EBUS_ACCESS_CTRL] [varchar](1) NULL,
	[EBUS_PRIMARY_ROLE] [varchar](30) NULL,
	[WRKGRP_NAME] [varchar](15) NULL,
	[SUPERVISOR_USER_ID] [varchar](14) NULL,
	[HR_INTEGRATION_IND] [varchar](1) NULL,
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
	[ACCESS_METHOD_CODE] [varchar](2) NULL,
	[CURR_PROFILE_NAME] [varchar](50) NULL,
	[COMMENCEMENT_DATEI] [datetime] NULL,
	[TERMINATION_DATEI] [datetime] NULL,
	[TERMINATION_REASON] [varchar](10) NULL,
	[REPORTS_TO_PROFILE] [varchar](50) NULL,
	[USER_TYPE] [varchar](20) NULL,
	[USER_STATUS] [varchar](2) NULL,
	[SYNC_KEY] [varchar](50) NULL,
	[USER_ACCESS_CODE] [varchar](2) NULL,
	[CLAIMED_ID] [varchar](255) NULL,
	[FEDERATED_EMAIL_ADDR] [varchar](255) NULL,
	[PERSONAL_EMAIL_ADDR] [varchar](255) NULL,
	[PREF_NAME] [varchar](80) NULL,
	[STATUS_COMMENT] [varchar](80) NULL,
	[JOB_TITLE] [varchar](80) NULL,
	[MOBILE_PHONE] [varchar](15) NULL,
	[SELF_REG_VERIFIED] [varchar](1) NULL,
	[POSITION_SEC_IND] [varchar](1) NULL,
	[PW_SALT] [varchar](2048) NULL,
	[FORCE_PW_RESET] [varchar](1) NULL,
	[WRKSHT_NBR] [int] NULL,
	[T1_IDENTITY_ID] [varchar](50) NULL,
	[GHOST_IND] [varchar](1) NULL,
 CONSTRAINT [F1USEP_IDX1] PRIMARY KEY CLUSTERED 
(
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO