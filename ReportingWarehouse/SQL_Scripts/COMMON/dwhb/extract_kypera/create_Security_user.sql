﻿
CREATE TABLE [extract_kypera].[Security_user](
	[User] [int] NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[FullName] [varchar](255) NOT NULL,
	[JobTitle] [varchar](255) NULL,
	[Email] [varchar](100) NULL,
	[DDINumber] [varchar](20) NULL,
	[Password] [varchar](100) NULL,
	[Role] [tinyint] NOT NULL,
	[Locked] [bit] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[LastLoginOn] [datetime] NOT NULL,
	[HousingOfficer] [bit] NOT NULL,
	[TechnicalOfficer] [bit] NOT NULL,
	[RestrictToAreaOffice] [bit] NULL,
	[AreaOffice] [int] NULL,
	[IsReportAuthor] [bit] NULL,
	[CanRunReports] [bit] NULL,
	[AllowToViewAllComplaints] [bit] NOT NULL,
	[OutOfOffice] [bit] NOT NULL,
	[OutOfOfficeDelegatedUser] [int] NULL,
	[AllowToAuthoriseOffers] [bit] NOT NULL,
	[CanRaiseOrdersFromCalls] [bit] NULL,
	[CanManagePropertyTree] [bit] NULL,
	[CanChangeMainVoidStatus] [bit] NULL,
	[CanApproveAllocations] [bit] NULL,
	[CanEditPropertyHistory] [bit] NULL,
	[Version] binary(8) NOT NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[LastUpdateOn] [datetime] NULL,
	[LastUpdateBy] [int] NULL,
	[ShowDashboard] [int] NULL,
	[ShowWarningConfirmation] [bit] NULL,
	[MenuType] [int] NULL,
	[LocalPhoneExtension] [varchar](20) NULL,
	[CanChangeHistoricalCharges] [bit] NULL,
	[UserTheme] [int] NULL,
	[PasswordChangeDate] [datetime] NULL
) ON [PRIMARY]