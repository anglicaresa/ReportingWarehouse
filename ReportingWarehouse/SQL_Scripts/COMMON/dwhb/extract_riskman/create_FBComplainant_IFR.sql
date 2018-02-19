CREATE TABLE [extract_riskman].[FBComplainant_IFR](
	[FBComplainant_ID] [int] NOT NULL,
	[FBCompMRN] [varchar](100) NULL,
	[FBCompTitle] [varchar](100) NULL,
	[FBCompFirstName] [varchar](100) NULL,
	[FBCompSurname] [varchar](100) NULL,
	[FBCompDateOfBirth] [datetime] NULL,
	[FBCompAgeRange] [varchar](50) NULL,
	[FBCompGender] [varchar](100) NULL,
	[FBCompAddress1] [varchar](200) NULL,
	[FBCompAddress2] [varchar](200) NULL,
	[FBCompSuburb] [varchar](200) NULL,
	[FBCompPostcode] [varchar](10) NULL,
	[FBCompState] [varchar](50) NULL,
	[FBCompWPhone] [varchar](20) NULL,
	[FBCompHPhone] [varchar](20) NULL,
	[FBCompMPhone] [varchar](20) NULL,
	[FBCompFax] [varchar](20) NULL,
	[FBCompEmail] [varchar](200) NULL,
	[FBCompPrimaryLanguage] [varchar](200) NULL,
	[FBCompInterpreter] [varchar](200) NULL,
	[FBCompCountry] [varchar](200) NULL,
	[FBCompAboriginalType] [varchar](100) NULL,
	[FBCompStatus] [varchar](50) NULL,
	[FBCompOrganisation] [varchar](100) NULL,
	[FBCompRelationship] [varchar](50) NULL,
	[FBCompPermComplain] [varchar](50) NULL,
	[FBCompPermComplainDate] [datetime] NULL,
	[FBCompPermComplainMode] [varchar](255) NULL,
	[FBCompPermMedicalInfo] [varchar](50) NULL,
	[FBCompPermMedicalInfoDate] [datetime] NULL,
	[FBCompPermMedicalInfoMode] [varchar](255) NULL,
	[FBCompAnon] [bit] NULL,
	[FBCompContactMode] [varchar](100) NULL,
	[FBCompStatusOther] [varchar](200) NULL,
	[FBCompDescribeRShip] [varchar](100) NULL,
	[FBCompIndigenous] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[FBComplainant_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
