CREATE TABLE [extract].[GLF_LDG_ACC_TRANS](
	[ldg_name] [varchar](8) NOT NULL,
	[ACCNBRI] [varchar](32) NOT NULL,
	[DOC_DATEI1] [datetime] NULL,
	[doc_type] [varchar](10) NULL,
	[amt1] [numeric](14, 2) NULL,
	[narr1] [varchar](40) NULL,
	[narr2] [varchar](40) NULL,
	[narr3] [varchar](40) NULL,
	[PDATEI] [datetime] NULL,
	[doc_ref1] [varchar](30) NULL,
	[USER_FLD1] [varchar](40) NULL,
	[alloc_amt1] [numeric](14, 2) NULL,
	[DUE_DATEI] [datetime] NULL,
	[period] [smallint] NOT NULL,
	[seqnbr] [int] NOT NULL,
	[LDG_TRANS_RID] [int] NOT NULL,
	[MODIFY_DATEI] [datetime] NULL
) ON [PRIMARY]

GO