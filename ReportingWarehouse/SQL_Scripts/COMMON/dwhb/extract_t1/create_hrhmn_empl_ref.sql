﻿-- creating table 'hrhmn_empl_ref'
create table extract.[hrhmn_empl_ref] (
	[ID_NUMBER] [int] NOT NULL,
	[FAMILY_NAME] [varchar](50) NULL,
	[GIVEN_NAME] [varchar](50) NULL,
	[OTHER_GIVEN_NAME] [varchar](50) NULL,
	[DATE_OF_BIRTH] [datetime] NULL,
	[ALIAS_NAME] [varchar](50) NULL,
	[MARITAL_STATUS_CDE] [varchar](10) NULL,
	[GENDER_CODE] [varchar](10) NULL,
	[ADDRSS_POSTAL_CODE] [int] NULL,
	[ADDRSS_STREET_CODE] [int] NULL,
	[ID_CLASS] [varchar](10) NULL,
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
	[REHIRE_IND] [varchar](1) NULL,
	[ACTIVE_IND] [varchar](1) NULL,
	[EMPL_NATIONALITY] [varchar](10) NULL,
	[ETHNIC_GROUP] [varchar](10) NULL,
	[MAIN_LANGUAGE] [varchar](10) NULL,
	[EMPL_DISABILITY] [varchar](10) NULL,
	[EMPL_ID_CODE] [varchar](14) NULL,
	[USER_ID] [varchar](14) NULL,
	[ENT_TECH_KEY] [int] NULL,
	[REEMPL_CODE] [varchar](20) NULL,
	[LAST_TERM_DATEI] [datetime] NULL,
	[SALUTATION] [varchar](20) NULL,
	[PREVIOUS_NAME] [varchar](50) NULL,
	[RESIDENT_STATUS] [varchar](20) NULL,
	[VISA_TYPE] [varchar](20) NULL,
	[PREVIOUS_GIVEN_NAME] [varchar](50) NULL,
	[PREVIOUS_OTHER_GIVEN_NAME] [varchar](50) NULL,
	[NEXT_EMPLPLAN_START_DATE] [datetime] NULL,
	[LAST_EMPLAPPRS_ID] [int] NULL,
	[LAST_EMPLAPPRS_START_DATE] [datetime] NULL,
	[LAST_EMPLAPPRS_END_DATE] [datetime] NULL,
	[TLT_MGT_SYSTEM_CODE] [varchar](10) NULL,
	[RATING_PROFILE_CODE] [varchar](10) NULL,
	[LAST_RATING_CODE] [varchar](10) NULL,
	[LAST_RATING_CALC_SCORE] [decimal](10, 6) NULL,
	[UPDATE_APPOINT_DTLS_IND] [varchar](1) NULL,
	[ADDRSS_WORK_CODE] [int] NULL,
	[PASSPORT_NUMBER] [varchar](50) NULL,
 CONSTRAINT [HRFHER_IDX1] PRIMARY KEY CLUSTERED 
(
	[ID_NUMBER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO