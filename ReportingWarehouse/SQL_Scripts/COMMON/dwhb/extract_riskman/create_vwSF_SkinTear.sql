

CREATE TABLE [extract_riskman].[vwSF_SkinTear](
	[keydata] [varchar](200) NOT NULL,
	[RecordID] [int] NOT NULL,
	[STBodyLocation] [nvarchar](max) NULL,
	[STOtherDetail] [nvarchar](max) NULL,
	[STCategory] [nvarchar](max) NULL,
	[STCareSetting] [nvarchar](max) NULL,
	[STCareSettingOther] [nvarchar](max) NULL,
	[STCareSettingOtherSite] [nvarchar](max) NULL,
	[STHowDeveloped] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO