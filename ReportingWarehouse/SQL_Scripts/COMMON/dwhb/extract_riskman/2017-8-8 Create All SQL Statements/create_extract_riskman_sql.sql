
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/08/2017 14:56:51
-- Generated from EDMX file: \\anglicare-sa.org.au\files\frank.wang\My Documents\Source\ReportingWarehouse\ReportingWarehouse\models\dwhb\extract_riskman\extract_riskman_conceptual.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DWHB];
GO


-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[extract_riskman].[ANGCARE_IFR]', 'U') IS NOT NULL
    DROP TABLE [extract_riskman].[ANGCARE_IFR];
GO
IF OBJECT_ID(N'[extract_riskman].[BEN_IFR]', 'U') IS NOT NULL
    DROP TABLE [extract_riskman].[BEN_IFR];
GO
IF OBJECT_ID(N'[extract_riskman].[CH_IFR]', 'U') IS NOT NULL
    DROP TABLE [extract_riskman].[CH_IFR];
GO
IF OBJECT_ID(N'[extract_riskman].[FRM_BATCH]', 'U') IS NOT NULL
    DROP TABLE [extract_riskman].[FRM_BATCH];
GO
IF OBJECT_ID(N'[extract_riskman].[FRM_DATA]', 'U') IS NOT NULL
    DROP TABLE [extract_riskman].[FRM_DATA];
GO
IF OBJECT_ID(N'[extract_riskman].[FRM_RECORD]', 'U') IS NOT NULL
    DROP TABLE [extract_riskman].[FRM_RECORD];
GO
IF OBJECT_ID(N'[extract_riskman].[IncidentClassificationsIFR]', 'U') IS NOT NULL
    DROP TABLE [extract_riskman].[IncidentClassificationsIFR];
GO
IF OBJECT_ID(N'[extract_riskman].[IncidentsForReview]', 'U') IS NOT NULL
    DROP TABLE [extract_riskman].[IncidentsForReview];
GO
IF OBJECT_ID(N'[extract_riskman].[IncNotif_IFR]', 'U') IS NOT NULL
    DROP TABLE [extract_riskman].[IncNotif_IFR];
GO
IF OBJECT_ID(N'[extract_riskman].[UserProfile]', 'U') IS NOT NULL
    DROP TABLE [extract_riskman].[UserProfile];
GO
IF OBJECT_ID(N'[extract_riskman].[vwsf_preventativecorrectiveaction]', 'U') IS NOT NULL
    DROP TABLE [extract_riskman].[vwsf_preventativecorrectiveaction];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ANGCARE_IFR'
CREATE TABLE [extract_riskman].[ANGCARE_IFR] (
    [ANGCARE_ID] int  NOT NULL,
    [ANGPolNo] varchar(50)  NULL,
    [PersonRespNotif] varchar(20)  NULL,
    [AHNotif] bit  NULL,
    [AHContactedBy] varchar(100)  NULL,
    [AHContactedDate] datetime  NULL,
    [PHNotif] bit  NULL,
    [PHContactedBy] varchar(100)  NULL,
    [PHContactedDate] datetime  NULL,
    [ACATNotif] bit  NULL,
    [ACATContactedBy] varchar(100)  NULL,
    [ACATContactedDate] datetime  NULL,
    [EntBehalfOfPos] varchar(100)  NULL,
    [ACShiftSupervisor] varchar(100)  NULL,
    [ACWhoReportName] varchar(100)  NULL,
    [ACWhoReportPosition] varchar(100)  NULL,
    [ACReportBehalfPosition] varchar(100)  NULL,
    [OthersInvolvedRECID] varchar(50)  NULL,
    [OthersInvolvedPrevRECID] varchar(50)  NULL,
    [InjuryType] varchar(100)  NULL,
    [ClientMedicalRequired] bit  NULL,
    [MedAttType] varchar(100)  NULL,
    [CorActWhyNot] varchar(200)  NULL,
    [InvInit] bit  NULL,
    [InvDate] datetime  NULL,
    [InvestComp] bit  NULL,
    [InvestCompDate] datetime  NULL,
    [CustomerSite] varchar(200)  NULL,
    [IndigenousState] bit  NULL,
    [IncSeen] bit  NULL,
    [FirstInformedDate] datetime  NULL,
    [FirstInformedTime] datetime  NULL,
    [MedAttName] varchar(100)  NULL,
    [IncStatus] varchar(100)  NULL,
    [InjuryActivity] varchar(100)  NULL,
    [CustService] varchar(100)  NULL,
    [InjuryOth] varchar(100)  NULL,
    [Wing] varchar(100)  NULL
);
GO

-- Creating table 'BEN_IFR'
CREATE TABLE [extract_riskman].[BEN_IFR] (
    [BEN_ID] int  NOT NULL,
    [CoName] varchar(100)  NULL,
    [TreatReq] bit  NULL,
    [CLScase] bit  NULL,
    [Chambersenquiry] bit  NULL,
    [Inquest] bit  NULL,
    [EHOcontactby] varchar(200)  NULL,
    [EHOdate] datetime  NULL,
    [Vicdhs] bit  NULL,
    [Vicdhscontact] varchar(200)  NULL,
    [Vicdhsdate] datetime  NULL,
    [DoHACIS] bit  NULL,
    [DoHACIScontact] varchar(200)  NULL,
    [DoHACISdate] datetime  NULL,
    [BENPolice] bit  NULL,
    [policecontact] varchar(200)  NULL,
    [BENPolicedate] datetime  NULL,
    [NOKNotifDate] datetime  NULL,
    [Transferred] bit  NULL,
    [StaffBodyPart] varchar(1000)  NULL,
    [SerDelivery] bit  NULL,
    [ManualRx] bit  NULL,
    [Area] varchar(100)  NULL,
    [WorksafeDate] datetime  NULL,
    [BenetasOutcome] varchar(1000)  NULL,
    [ClientBodyPart] varchar(1000)  NULL,
    [DeathDate] datetime  NULL,
    [CorInititateDate] datetime  NULL,
    [CorFindingDate] datetime  NULL,
    [CorCloseDate] datetime  NULL,
    [CorCaseID] varchar(20)  NULL,
    [CorType] varchar(50)  NULL,
    [TransferOutcome] varchar(50)  NULL,
    [IncidentOutcome] varchar(500)  NULL,
    [SpecificTransDesc] varchar(100)  NULL,
    [SuggPrevRec] varchar(1000)  NULL,
    [VisPhone] varchar(20)  NULL,
    [IncSourceBaseID] varchar(100)  NULL,
    [IncSouceSubmodule] varchar(100)  NULL
);
GO

-- Creating table 'CH_IFR'
CREATE TABLE [extract_riskman].[CH_IFR] (
    [CH_ID] int  NOT NULL,
    [PCARECID] varchar(50)  NULL,
    [PCAPrevRECID] varchar(50)  NULL,
    [CHReportBehalf] bit  NULL,
    [CHReportWho] varchar(100)  NULL,
    [CHExpYrs] varchar(50)  NULL,
    [CHWhereEventOccur] varchar(100)  NULL,
    [CHStaffTraining] bit  NULL,
    [CHPrevActReq] bit  NULL,
    [OHSAltDuty] bit  NULL,
    [HasHSRNot] bit  NULL,
    [CHLocalGovtMethod] varchar(50)  NULL,
    [CHLocalGovtContact] varchar(50)  NULL,
    [CHDHSMethod] varchar(50)  NULL,
    [CHDHSContact] varchar(50)  NULL,
    [CHDoHAMethod] varchar(50)  NULL,
    [CHDoHAContact] varchar(50)  NULL,
    [CHPhysLocOther] varchar(100)  NULL,
    [CHWorkStartTime] datetime  NULL,
    [CreatComp] varchar(200)  NULL,
    [SiteAdd] varchar(200)  NULL,
    [OthService] varchar(100)  NULL,
    [OthCustSite] varchar(100)  NULL,
    [OthSite] varchar(100)  NULL,
    [IncRelChild] bit  NULL,
    [ComplaintID] int  NULL,
    [ContFactOth] varchar(100)  NULL,
    [RiskCatFactOth] varchar(100)  NULL,
    [SafeWorkOth] varchar(100)  NULL
);
GO

-- Creating table 'FRM_BATCH'
CREATE TABLE [extract_riskman].[FRM_BATCH] (
    [BatchID] int  NOT NULL,
    [RecordID] int  NOT NULL,
    [DateCreated] datetime  NOT NULL,
    [SavedBy] varchar(50)  NOT NULL
);
GO

-- Creating table 'FRM_DATA'
CREATE TABLE [extract_riskman].[FRM_DATA] (
    [DataID] int  NOT NULL,
    [BatchID] int  NOT NULL,
    [FieldName] varchar(50)  NOT NULL,
    [ValueString] nvarchar(max)  NULL,
    [ValueDate] datetime  NULL,
    [ValueNumber] float  NULL,
    [ValueBit] bit  NULL,
    [Active] bit  NOT NULL
);
GO

-- Creating table 'FRM_RECORD'
CREATE TABLE [extract_riskman].[FRM_RECORD] (
    [RecordID] int  NOT NULL,
    [KeyData] varchar(200)  NOT NULL,
    [KeySequence] int  NOT NULL,
    [FormName] varchar(50)  NOT NULL,
    [Deleted] bit  NOT NULL
);
GO

-- Creating table 'IncidentClassificationsIFR'
CREATE TABLE [extract_riskman].[IncidentClassificationsIFR] (
    [ID] int  NULL,
    [Supergroup] nvarchar(150)  NULL,
    [IncidentClass] nvarchar(500)  NULL,
    [Definitions] nvarchar(500)  NULL,
    [SortSeq] smallint  NULL,
    [ClassID] int  NULL,
    [DefinitionID] int  NULL,
    [autonum] int  NOT NULL
);
GO

-- Creating table 'IncidentsForReview'
CREATE TABLE [extract_riskman].[IncidentsForReview] (
    [ID] int  NOT NULL,
    [NHSHospNum] varchar(50)  NOT NULL,
    [Claim] float  NULL,
    [Status] varchar(50)  NULL,
    [Site] varchar(100)  NULL,
    [Incident_Location] varchar(50)  NULL,
    [ResponsibleSite] varchar(100)  NULL,
    [ResponsibleLocation] varchar(50)  NULL,
    [Program] varchar(255)  NULL,
    [Contact_Phone] varchar(20)  NULL,
    [ClinicalArea] varchar(255)  NULL,
    [NatureEmp] varchar(50)  NULL,
    [Patient_Status] varchar(255)  NULL,
    [Staff] varchar(50)  NULL,
    [Sequence] float  NULL,
    [FYear] smallint  NULL,
    [FileName] varchar(50)  NULL,
    [DateOpened] datetime  NULL,
    [DateFirstOpened] datetime  NULL,
    [DateClosed] datetime  NULL,
    [DelaytoNotification] float  NULL,
    [LastVisitedBy] varchar(255)  NULL,
    [LastVisitedOn] datetime  NULL,
    [Title] varchar(50)  NULL,
    [Surname] varchar(255)  NULL,
    [Initials] varchar(255)  NULL,
    [FirstName] varchar(255)  NULL,
    [DateOfBirth] datetime  NULL,
    [Street] varchar(150)  NULL,
    [Suburb] varchar(100)  NULL,
    [Postcode] varchar(6)  NULL,
    [Country] varchar(50)  NULL,
    [IncidentInvolved] varchar(255)  NULL,
    [MedicalRecordNo] varchar(255)  NULL,
    [AdmissionDiagnosis] varchar(500)  NULL,
    [Deceased] bit  NULL,
    [CoronerNotified] bit  NULL,
    [Autopsy] bit  NULL,
    [NextOfKinNotified] bit  NULL,
    [IncidentDate] datetime  NULL,
    [Description] varchar(8000)  NULL,
    [NotificationDate] datetime  NULL,
    [NotificationName] varchar(100)  NULL,
    [NotificationPosition] varchar(255)  NULL,
    [NotificationReason] varchar(255)  NULL,
    [IncidentTime] datetime  NULL,
    [InsurerNotificationDate] datetime  NULL,
    [AdmissionStatus] varchar(50)  NULL,
    [Comment] varchar(8000)  NULL,
    [Summary] varchar(255)  NULL,
    [InsurerNotificationMode] varchar(255)  NULL,
    [DRG] varchar(255)  NULL,
    [Age] int  NULL,
    [Sex] varchar(50)  NULL,
    [Cost] decimal(19,4)  NULL,
    [Patients_Solicitors] varchar(50)  NULL,
    [PersonnelName1] varchar(50)  NULL,
    [PersonnelName2] varchar(50)  NULL,
    [DoctorsCode1] varchar(50)  NULL,
    [DoctorsCode2] varchar(50)  NULL,
    [PersonnelPosition1] varchar(255)  NULL,
    [PersonnelPosition2] varchar(255)  NULL,
    [Specialty] varchar(255)  NULL,
    [Outcome] varchar(255)  NULL,
    [Treatment] varchar(8000)  NULL,
    [SeenBy] varchar(255)  NULL,
    [SeenByName] varchar(50)  NULL,
    [AdditionalRef] varchar(8000)  NULL,
    [SentinelEvent] bit  NULL,
    [ResponseRequired] bit  NULL,
    [ResponseType] varchar(10)  NULL,
    [ResponseAddress] varchar(60)  NULL,
    [ResponseNotes] varchar(8000)  NULL,
    [ResponseSent] bit  NULL,
    [ResponseSentDate] datetime  NULL,
    [StaffMbrID] varchar(20)  NULL,
    [PreviousIncident] int  NULL,
    [SubsequentIncident] int  NULL,
    [SentinelID] smallint  NULL,
    [RiskStrat] varchar(50)  NULL,
    [RiskStratRow] varchar(50)  NULL,
    [RiskStratCol] varchar(50)  NULL,
    [RiskStratPotential] varchar(50)  NULL,
    [RiskStratPotentialRow] varchar(50)  NULL,
    [RiskStratPotentialCol] varchar(50)  NULL,
    [ClaimsAuditID] int  NULL,
    [ClaimId] int  NULL,
    [UserName] varchar(50)  NULL,
    [isEdited] bit  NULL,
    [DateDeleted] datetime  NULL,
    [StepsTakenBy] varchar(200)  NULL,
    [StepsTaken] varchar(8000)  NULL,
    [StaffInjury] bit  NULL,
    [StaffWorkcoveNotif] bit  NULL,
    [StaffLostTime] bit  NULL,
    [StaffLostTimeHours] float  NULL,
    [StaffLostTimeDays] float  NULL,
    [StaffLostTimeGroup] varchar(50)  NULL,
    [StaffWorkersCompClaim] bit  NULL,
    [StaffMedicalExpenses] bit  NULL,
    [StaffMedicalExpensesCost] decimal(19,4)  NULL,
    [StaffReturnToWorkPlan] varchar(50)  NULL,
    [ThreadPrevious] int  NULL,
    [ThreadNext] int  NULL,
    [BaseID] int  NULL,
    [SequenceNo] int  NULL,
    [DateEntered] datetime  NULL,
    [LitigationRisk] bit  NULL,
    [FormStatus] varchar(50)  NULL,
    [HealthAuthorityNotification] bit  NULL,
    [BodyPartAffected] varchar(50)  NULL,
    [TransferRequired] varchar(50)  NULL,
    [PreventabilityScale] varchar(50)  NULL,
    [ControlHierarchy] varchar(50)  NULL,
    [RCA] varchar(50)  NULL,
    [IncidentCampus] varchar(100)  NULL,
    [HomeCampus] varchar(100)  NULL,
    [LocalArea] varchar(100)  NULL,
    [InvestigationsFinding] varchar(5000)  NULL,
    [InvestigatedBy] varchar(50)  NULL,
    [ControlsImplemented] varchar(5000)  NULL,
    [AdmissionDate] datetime  NULL,
    [LengthOfStay] int  NULL,
    [EmployeeSite] varchar(100)  NULL,
    [EmployeeLocation] varchar(100)  NULL,
    [NatureOfInjury] varchar(200)  NULL,
    [AgencyOfInjury] varchar(200)  NULL,
    [MechanismOfInjury] varchar(200)  NULL,
    [JobTitle] varchar(100)  NULL,
    [PreferredLanguage] varchar(50)  NULL,
    [TypeOfEmployment] varchar(50)  NULL,
    [TypeOfEmployee] varchar(50)  NULL,
    [ExperienceYears] int  NULL,
    [ExperienceMonths] int  NULL,
    [SubModule] varchar(100)  NULL,
    [DisplayID] int  NULL,
    [Detail] nvarchar(max)  NULL
);
GO

-- Creating table 'IncNotif_IFR'
CREATE TABLE [extract_riskman].[IncNotif_IFR] (
    [IncNotif_ID] int  NOT NULL,
    [FireNotif] bit  NULL,
    [FireComm] varchar(200)  NULL,
    [AmbNotif] bit  NULL,
    [AmbComm] varchar(200)  NULL,
    [PoliceNotif] bit  NULL,
    [PoliceComm] varchar(200)  NULL,
    [NOKComm] varchar(200)  NULL,
    [CarerNotif] bit  NULL,
    [ChildAbuseNotif] bit  NULL,
    [CorrOffNotif] bit  NULL,
    [DECDCareNotif] bit  NULL,
    [DCSINotif] bit  NULL,
    [FaCHSIANotif] bit  NULL,
    [EmergContNotif] bit  NULL,
    [OPANotif] bit  NULL,
    [OtherNotif] bit  NULL,
    [GuardNotif] bit  NULL,
    [AGNotif] bit  NULL,
    [UCWNotif] bit  NULL,
    [CarerComm] varchar(200)  NULL,
    [ChildAbuseComm] varchar(200)  NULL,
    [CorrOffComm] varchar(200)  NULL,
    [FaCHSIAComm] varchar(200)  NULL,
    [DECDComm] varchar(200)  NULL,
    [DCSIComm] varchar(200)  NULL,
    [EmergContComm] varchar(200)  NULL,
    [OPAComm] varchar(200)  NULL,
    [OtherComm] varchar(200)  NULL,
    [GuardComm] varchar(200)  NULL,
    [AGComm] varchar(200)  NULL,
    [UCWComm] varchar(200)  NULL,
    [DECDCareComm] varchar(200)  NULL,
    [DECDNotif] bit  NULL,
    [HouseReg] bit  NULL,
    [HouseRegComm] varchar(200)  NULL,
    [Funder] bit  NULL,
    [FunderComm] varchar(200)  NULL
);
GO

-- Creating table 'UserProfile'
CREATE TABLE [extract_riskman].[UserProfile] (
    [UserName] varchar(50)  NOT NULL,
    [UserDisplayName] nvarchar(100)  NULL,
    [isTemplate] bit  NULL,
    [UserType] nvarchar(50)  NULL,
    [Password] nvarchar(200)  NULL,
    [PasswordEncrypted] bit  NULL,
    [PreviousPassword] nvarchar(50)  NULL,
    [PasswordLastChanged] datetime  NULL,
    [PasswordDoesntExpire] bit  NULL,
    [PasswordBadAttempts] int  NULL,
    [PasswordBadIP] varchar(50)  NULL,
    [UserPosition] nvarchar(50)  NULL,
    [Email] nvarchar(200)  NULL,
    [Email2] nvarchar(200)  NULL,
    [PhoneNumber] nvarchar(50)  NULL,
    [MobileNumber] nvarchar(50)  NULL,
    [PagerNumber] nvarchar(50)  NULL,
    [LDAP_Username] nvarchar(64)  NULL,
    [LDAP_DN] varchar(500)  NULL,
    [LDAP_Site] nvarchar(200)  NULL,
    [LDAP_Status] int  NULL,
    [LastLoginDate] datetime  NULL,
    [DateEntered] datetime  NULL,
    [DateDeleted] datetime  NULL,
    [ExpiryDate] datetime  NULL,
    [DefaultPage] varchar(500)  NULL,
    [UsersSettings] nvarchar(max)  NULL,
    [PrimarySite] nvarchar(200)  NULL,
    [PrimaryLocation] nvarchar(200)  NULL,
    [USR_Site] nvarchar(max)  NULL,
    [USR_Location] nvarchar(max)  NULL,
    [RP_Site] nvarchar(max)  NULL,
    [RP_Location] nvarchar(max)  NULL,
    [RP_ClinicalArea] nvarchar(max)  NULL,
    [RP_Program] nvarchar(max)  NULL,
    [RP_Specialty] nvarchar(max)  NULL,
    [Permissions] int  NULL,
    [Permissions2] int  NULL,
    [Permissions3] int  NULL,
    [Permissions4] int  NULL,
    [Permissions5] int  NULL,
    [FB_UserType] nvarchar(50)  NULL,
    [FB_JournalRestrictions] nvarchar(max)  NULL,
    [FB_Permissions_Feedback] int  NULL,
    [FB_Permissions_FeedbackTwo] int  NULL,
    [FB_Permissions_Actions] int  NULL,
    [FB_Permissions_Issues] int  NULL,
    [FB_Permissions_Journals] int  NULL,
    [FB_HideComplainant] bit  NULL,
    [FB_HideConsumer] bit  NULL,
    [FB_HideDetails] bit  NULL,
    [FB_HideIssues] bit  NULL,
    [FB_HideActions] bit  NULL,
    [FB_HideJournals] bit  NULL,
    [FB_o_Comp_Surname] smallint  NULL,
    [FB_o_Comp_Firstname] smallint  NULL,
    [FB_o_Comp_Title] smallint  NULL,
    [FB_o_Comp_Address1] smallint  NULL,
    [FB_o_Comp_Address2] smallint  NULL,
    [FB_o_Comp_Suburb] smallint  NULL,
    [FB_o_Comp_State] smallint  NULL,
    [FB_o_Comp_Postcode] smallint  NULL,
    [FB_o_Comp_HPhone] smallint  NULL,
    [FB_o_Comp_WPhone] smallint  NULL,
    [FB_o_Comp_MPhone] smallint  NULL,
    [FB_o_Comp_Fax] smallint  NULL,
    [FB_o_Comp_Email] smallint  NULL,
    [FB_o_Comp_MRN] smallint  NULL,
    [FB_o_Comp_Gender] smallint  NULL,
    [FB_o_Comp_DOB] smallint  NULL,
    [FB_o_Comp_Country] smallint  NULL,
    [FB_o_Comp_AboriginalType] smallint  NULL,
    [FB_o_Comp_PrimaryLanguage] smallint  NULL,
    [FB_o_Comp_Interpreter] smallint  NULL,
    [FB_o_Cons_Surname] smallint  NULL,
    [FB_o_Cons_Firstname] smallint  NULL,
    [FB_o_Cons_Title] smallint  NULL,
    [FB_o_Cons_Address1] smallint  NULL,
    [FB_o_Cons_Address2] smallint  NULL,
    [FB_o_Cons_Suburb] smallint  NULL,
    [FB_o_Cons_State] smallint  NULL,
    [FB_o_Cons_Postcode] smallint  NULL,
    [FB_o_Cons_HPhone] smallint  NULL,
    [FB_o_Cons_WPhone] smallint  NULL,
    [FB_o_Cons_MPhone] smallint  NULL,
    [FB_o_Cons_Fax] smallint  NULL,
    [FB_o_Cons_Email] smallint  NULL,
    [FB_o_Cons_MRN] smallint  NULL,
    [FB_o_Cons_Gender] smallint  NULL,
    [FB_o_Cons_DOB] smallint  NULL,
    [FB_o_Cons_Country] smallint  NULL,
    [FB_o_Cons_AboriginalType] smallint  NULL,
    [FB_o_Cons_PrimaryLanguage] smallint  NULL,
    [FB_o_Cons_Interpreter] smallint  NULL,
    [FB_o_FBC_DocType] smallint  NULL,
    [FB_o_FBC_FormalityLevel] smallint  NULL,
    [FB_o_FBC_ComplainantID] smallint  NULL,
    [FB_o_FBC_Relationship] smallint  NULL,
    [FB_o_FBC_ConsumerID] smallint  NULL,
    [FB_o_FBC_RecDate] smallint  NULL,
    [FB_o_FBC_ModeReceived] smallint  NULL,
    [FB_o_FBC_CreateDate] smallint  NULL,
    [FB_o_FBC_AckDate] smallint  NULL,
    [FB_o_FBC_OpenDate] smallint  NULL,
    [FB_o_FBC_CloseDate] smallint  NULL,
    [FB_o_FBC_FirstFormalDate] smallint  NULL,
    [FB_o_FBC_Summary] smallint  NULL,
    [FB_o_FBC_Details] smallint  NULL,
    [FB_o_FBC_InsurerNotifReq] smallint  NULL,
    [FB_o_FBC_InsurerNotifDate] smallint  NULL,
    [FB_o_FBC_InsurerNotifMode] smallint  NULL,
    [FB_o_FBC_ReportedYN] smallint  NULL,
    [FB_o_FBC_RefpathID] smallint  NULL,
    [FB_o_FBC_AssocInc] smallint  NULL,
    [FB_o_FBC_AssocIncNo] smallint  NULL,
    [FB_o_FBC_SAC] smallint  NULL,
    [FB_o_FBC_SACRowLabel] smallint  NULL,
    [FB_o_FBC_SACColLabel] smallint  NULL,
    [FB_o_FBC_SACScore] smallint  NULL,
    [FB_o_FBC_ReportedTo] smallint  NULL,
    [FB_o_FBC_ReportedToPosition] smallint  NULL,
    [FB_o_FBC_ReferredTo] smallint  NULL,
    [FB_o_FBC_ReferredToPosition] smallint  NULL,
    [FB_o_FBC_ResponsiblePerson1] smallint  NULL,
    [FB_o_FBC_ResponsiblePerson2] smallint  NULL,
    [FB_o_FBC_Site] smallint  NULL,
    [FB_o_FBC_Location] smallint  NULL,
    [FB_o_FBC_ClinicalArea] smallint  NULL,
    [FB_o_FBC_Program] smallint  NULL,
    [FB_o_FBC_Specialty] smallint  NULL,
    [FB_o_FBC_FileName] smallint  NULL,
    [FB_o_FBC_ResultedInQIA] smallint  NULL,
    [FB_o_FBC_ResultedInQIANotes] smallint  NULL,
    [FB_o_FBC_ComplainantStatus] smallint  NULL,
    [FB_o_FBC_ComplainantOrganisation] smallint  NULL,
    [FB_o_FBC_ConsumerStatus] smallint  NULL,
    [FB_o_FBC_ConsumerOrganisation] smallint  NULL,
    [FB_o_FBC_ConsumerType] smallint  NULL,
    [FB_o_FBC_ConsumerAdmissionDate] smallint  NULL,
    [FB_o_FBC_ConsumerDischargeDate] smallint  NULL,
    [FB_o_FBC_ConsumerDeceased] smallint  NULL,
    [FB_o_FBC_CompPermMedicalInfo] smallint  NULL,
    [FB_o_FBC_CompPermMedicalInfoDate] smallint  NULL,
    [FB_o_FBC_CompPermMedicalInfoMode] smallint  NULL,
    [FB_o_FBC_CompPermToComplain] smallint  NULL,
    [FB_o_FBC_CompPermToComplainDate] smallint  NULL,
    [FB_o_FBC_CompPermToComplainMode] smallint  NULL,
    [FB_o_FBC_ActualOutcome] smallint  NULL,
    [FB_o_FBC_Outcome] smallint  NULL,
    [FB_o_FBCA_Issue] smallint  NULL,
    [FB_o_FBCA_ActionBy] smallint  NULL,
    [FB_o_FBCA_ActionComplete] smallint  NULL,
    [FB_o_FBCA_CompletedOn] smallint  NULL,
    [FB_o_FBCA_ActionDesc] smallint  NULL,
    [FB_o_FBCA_AllocatedTo] smallint  NULL,
    [FB_o_FBCA_AllocatedDate] smallint  NULL,
    [FB_o_FBCI_IssueCode] smallint  NULL,
    [FB_o_FBCI_IssueType] smallint  NULL,
    [FB_o_FBCI_IssueGroup] smallint  NULL,
    [FB_o_FBCI_Issue] smallint  NULL,
    [FB_o_FBCI_IssueSub] smallint  NULL,
    [FB_o_FBCI_CreateDate] smallint  NULL,
    [FB_o_FBCI_Service] smallint  NULL,
    [FB_o_FBCI_Site] smallint  NULL,
    [FB_o_FBCI_Location] smallint  NULL,
    [FB_o_FBCI_ClinicalArea] smallint  NULL,
    [FB_o_FBCI_Program] smallint  NULL,
    [FB_o_FBCI_Specialty] smallint  NULL,
    [FB_o_FBCI_FileName] smallint  NULL,
    [FB_o_FBCI_ResultedInQIA] smallint  NULL,
    [FB_o_FBCI_ResultedInQIANotes] smallint  NULL,
    [FB_o_FBCI_Objective] smallint  NULL,
    [FB_o_FBCI_ObjectiveMulti] smallint  NULL,
    [FB_o_FBCI_SAC] smallint  NULL,
    [FB_o_FBCI_SACRowLabel] smallint  NULL,
    [FB_o_FBCI_SACColLabel] smallint  NULL,
    [FB_o_FBCI_SACScore] smallint  NULL,
    [FB_o_FBCI_OpenDate] smallint  NULL,
    [FB_o_FBCI_CloseDate] smallint  NULL,
    [FB_o_FBCI_Outcome] smallint  NULL,
    [FB_o_FBCI_Ease] smallint  NULL,
    [FB_o_FBCI_Satisfy] smallint  NULL,
    [FB_o_FBCI_ReportedTo] smallint  NULL,
    [FB_o_FBCI_ReferredTo] smallint  NULL,
    [FB_o_FBCI_ReferralOutcome] smallint  NULL,
    [FB_o_FBCI_CurrentStatus] smallint  NULL,
    [FB_o_FBCI_IssueNotes] smallint  NULL,
    [FB_o_FBCJ_Date] smallint  NULL,
    [FB_o_FBCJ_Time] smallint  NULL,
    [FB_o_FBCJ_JournalType] smallint  NULL,
    [FB_o_FBCJ_JournalReference] smallint  NULL,
    [FB_o_FBCJ_JournalAmount] smallint  NULL,
    [FB_o_FBCJ_DateSent] smallint  NULL,
    [FB_o_FBCJ_SentTo] smallint  NULL,
    [FB_o_FBCJ_DateReceived] smallint  NULL,
    [FB_o_FBCJ_ReceivedFrom] smallint  NULL,
    [FB_o_FBCJ_FollowUpUser] smallint  NULL,
    [FB_o_FBCJ_JournalFollowUp] smallint  NULL,
    [FB_o_FBCJ_ItemActioned] smallint  NULL,
    [FB_o_FBCJ_TheLink] smallint  NULL,
    [FB_o_FBCJ_JournalDescr] smallint  NULL,
    [FB_o_FBCI_Behave_RoleName] smallint  NULL,
    [FB_o_FBCI_Behave_Qual] smallint  NULL,
    [FB_o_FBCI_Behave_Gender] smallint  NULL,
    [FB_o_FBCI_Behave_AgeRange] smallint  NULL,
    [FB_o_FBCI_IsAnIncident] smallint  NULL,
    [FB_o_FBCI_IsPrimaryIssue] smallint  NULL,
    [FB_o_FBCI_ActivityProcDesc] smallint  NULL,
    [FB_o_FBCI_ServiceProvidedOth] smallint  NULL,
    [FB_o_FBC_GroupID] smallint  NULL,
    [FB_o_FBCI_Substantiation] smallint  NULL,
    [FB_o_FBCI_LitigationStatus] smallint  NULL,
    [FB_o_FBCI_PrevRecID3] smallint  NULL,
    [FB_o_FBCI_UserFld1] smallint  NULL,
    [FB_o_FBCI_UserFld2] smallint  NULL,
    [FB_o_FBCI_UserFld3] smallint  NULL,
    [FB_o_FBCI_UserFld4] smallint  NULL,
    [FB_o_FBCI_UserFld5] smallint  NULL,
    [FB_o_FBCI_UserFld6] smallint  NULL,
    [FB_o_FBCI_UserFld7] smallint  NULL,
    [FB_o_FBCI_UserFld8] smallint  NULL,
    [FB_o_FBCI_UserFld9] smallint  NULL,
    [FB_o_FBCI_UserFld10] smallint  NULL
);
GO

-- Creating table 'vwsf_preventativecorrectiveaction'
CREATE TABLE [extract_riskman].[vwsf_preventativecorrectiveaction] (
    [keydata] varchar(200)  NOT NULL,
    [RecordID] int  NOT NULL,
    [PCAPrevCorAct] nvarchar(max)  NULL,
    [PCAPrevCorActOth] nvarchar(max)  NULL,
    [PCAImpRespPer_name] nvarchar(max)  NULL,
    [PCAImpRespPer] nvarchar(max)  NULL,
    [PCAImpRespMgr_name] nvarchar(max)  NULL,
    [PCAImpRespMgr] nvarchar(max)  NULL,
    [PCANotif] datetime  NULL,
    [PCAOverdueFollowUp] datetime  NULL,
    [PCAActImpDate] datetime  NULL,
    [PCAPrevCorActCompleted] nvarchar(max)  NULL,
    [PCAPrevCorActNotCompleted] nvarchar(max)  NULL,
    [PCAActComDate] datetime  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ANGCARE_ID] in table 'ANGCARE_IFR'
ALTER TABLE [extract_riskman].[ANGCARE_IFR]
ADD CONSTRAINT [PK_ANGCARE_IFR]
    PRIMARY KEY CLUSTERED ([ANGCARE_ID] ASC);
GO

-- Creating primary key on [BEN_ID] in table 'BEN_IFR'
ALTER TABLE [extract_riskman].[BEN_IFR]
ADD CONSTRAINT [PK_BEN_IFR]
    PRIMARY KEY CLUSTERED ([BEN_ID] ASC);
GO

-- Creating primary key on [CH_ID] in table 'CH_IFR'
ALTER TABLE [extract_riskman].[CH_IFR]
ADD CONSTRAINT [PK_CH_IFR]
    PRIMARY KEY CLUSTERED ([CH_ID] ASC);
GO

-- Creating primary key on [BatchID] in table 'FRM_BATCH'
ALTER TABLE [extract_riskman].[FRM_BATCH]
ADD CONSTRAINT [PK_FRM_BATCH]
    PRIMARY KEY CLUSTERED ([BatchID] ASC);
GO

-- Creating primary key on [DataID] in table 'FRM_DATA'
ALTER TABLE [extract_riskman].[FRM_DATA]
ADD CONSTRAINT [PK_FRM_DATA]
    PRIMARY KEY CLUSTERED ([DataID] ASC);
GO

-- Creating primary key on [RecordID] in table 'FRM_RECORD'
ALTER TABLE [extract_riskman].[FRM_RECORD]
ADD CONSTRAINT [PK_FRM_RECORD]
    PRIMARY KEY CLUSTERED ([RecordID] ASC);
GO

-- Creating primary key on [autonum] in table 'IncidentClassificationsIFR'
ALTER TABLE [extract_riskman].[IncidentClassificationsIFR]
ADD CONSTRAINT [PK_IncidentClassificationsIFR]
    PRIMARY KEY CLUSTERED ([autonum] ASC);
GO

-- Creating primary key on [ID], [NHSHospNum] in table 'IncidentsForReview'
ALTER TABLE [extract_riskman].[IncidentsForReview]
ADD CONSTRAINT [PK_IncidentsForReview]
    PRIMARY KEY CLUSTERED ([ID], [NHSHospNum] ASC);
GO

-- Creating primary key on [IncNotif_ID] in table 'IncNotif_IFR'
ALTER TABLE [extract_riskman].[IncNotif_IFR]
ADD CONSTRAINT [PK_IncNotif_IFR]
    PRIMARY KEY CLUSTERED ([IncNotif_ID] ASC);
GO

-- Creating primary key on [UserName] in table 'UserProfile'
ALTER TABLE [extract_riskman].[UserProfile]
ADD CONSTRAINT [PK_UserProfile]
    PRIMARY KEY CLUSTERED ([UserName] ASC);
GO

-- Creating primary key on [keydata], [RecordID] in table 'vwsf_preventativecorrectiveaction'
ALTER TABLE [extract_riskman].[vwsf_preventativecorrectiveaction]
ADD CONSTRAINT [PK_vwsf_preventativecorrectiveaction]
    PRIMARY KEY CLUSTERED ([keydata], [RecordID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------