USE [dwhf_finance];
GO
IF OBJECT_ID(N'[finance].[COST_CENTRE_DIM]', 'U') IS NOT NULL
    DROP TABLE [finance].[COST_CENTRE_DIM];
GO

create table [finance].[cost_centre_dim] (
	[cost_centre_key] int	not null,

	[LDG_NAME] [varchar] (8) NULL,
	[ACCNBRI] [varchar] (32) NULL,
	[EDACCNBR] [varchar] (32) NULL,
	[SDESCR] [varchar] (15) NULL,
	[DESCR] [varchar] (192) NULL,
	[ACC_COMP1] [varchar] (32) NULL,
	[ACC_COMP1_SCESCR] [varchar] (15) NULL,
	[ACC_COMP2] [varchar] (32) NULL,
	[ACC_COMP2_SCESCR] [varchar] (15) NULL,
	[ACC_COMP3] [varchar] (32) NULL,
	[ACC_COMP3_SCESCR] [varchar] (15) NULL,
	[ACC_COMP4] [varchar] (32) NULL,
	[ACC_COMP4_SCESCR] [varchar] (15) NULL,
	[ACC_COMP11] [varchar] (32) NULL,
	[ACC_COMP11_SCESCR] [varchar] (15) NULL,

	[change_reason_code]		varchar	(5),
	[change_reason_description]		varchar	(50),
	[row_effective_date]		datetime	,
	[row_expiration_date]		datetime	,
	[current_row_indicator]		varchar	(1)
);


-- PK
alter table [finance].[cost_centre_dim]
add constraint [pk_cost_centre_dim]
    primary key clustered ([cost_centre_key] asc);
go