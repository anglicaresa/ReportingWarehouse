//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ReportingWarehouse.models.riskman
{
    using System;
    using System.Collections.Generic;
    
    public partial class IncidentsForReview
    {
        public int ID { get; set; }
        public string NHSHospNum { get; set; }
        public Nullable<double> Claim { get; set; }
        public string Status { get; set; }
        public string Site { get; set; }
        public string Incident_Location { get; set; }
        public string ResponsibleSite { get; set; }
        public string ResponsibleLocation { get; set; }
        public string Program { get; set; }
        public string Contact_Phone { get; set; }
        public string ClinicalArea { get; set; }
        public string NatureEmp { get; set; }
        public string Patient_Status { get; set; }
        public string Staff { get; set; }
        public Nullable<double> Sequence { get; set; }
        public Nullable<short> FYear { get; set; }
        public string FileName { get; set; }
        public Nullable<System.DateTime> DateOpened { get; set; }
        public Nullable<System.DateTime> DateFirstOpened { get; set; }
        public Nullable<System.DateTime> DateClosed { get; set; }
        public Nullable<double> DelaytoNotification { get; set; }
        public string LastVisitedBy { get; set; }
        public Nullable<System.DateTime> LastVisitedOn { get; set; }
        public string Title { get; set; }
        public string Surname { get; set; }
        public string Initials { get; set; }
        public string FirstName { get; set; }
        public Nullable<System.DateTime> DateOfBirth { get; set; }
        public string Street { get; set; }
        public string Suburb { get; set; }
        public string Postcode { get; set; }
        public string Country { get; set; }
        public string IncidentInvolved { get; set; }
        public string MedicalRecordNo { get; set; }
        public string AdmissionDiagnosis { get; set; }
        public Nullable<bool> Deceased { get; set; }
        public Nullable<bool> CoronerNotified { get; set; }
        public Nullable<bool> Autopsy { get; set; }
        public Nullable<bool> NextOfKinNotified { get; set; }
        public Nullable<System.DateTime> IncidentDate { get; set; }
        public string Description { get; set; }
        public Nullable<System.DateTime> NotificationDate { get; set; }
        public string NotificationName { get; set; }
        public string NotificationPosition { get; set; }
        public string NotificationReason { get; set; }
        public Nullable<System.DateTime> IncidentTime { get; set; }
        public Nullable<System.DateTime> InsurerNotificationDate { get; set; }
        public string AdmissionStatus { get; set; }
        public string Comment { get; set; }
        public string Summary { get; set; }
        public string InsurerNotificationMode { get; set; }
        public string DRG { get; set; }
        public Nullable<int> Age { get; set; }
        public string Sex { get; set; }
        public Nullable<decimal> Cost { get; set; }
        public string Patients_Solicitors { get; set; }
        public string PersonnelName1 { get; set; }
        public string PersonnelName2 { get; set; }
        public string DoctorsCode1 { get; set; }
        public string DoctorsCode2 { get; set; }
        public string PersonnelPosition1 { get; set; }
        public string PersonnelPosition2 { get; set; }
        public string Specialty { get; set; }
        public string Outcome { get; set; }
        public string Treatment { get; set; }
        public string SeenBy { get; set; }
        public string SeenByName { get; set; }
        public string AdditionalRef { get; set; }
        public Nullable<bool> SentinelEvent { get; set; }
        public Nullable<bool> ResponseRequired { get; set; }
        public string ResponseType { get; set; }
        public string ResponseAddress { get; set; }
        public string ResponseNotes { get; set; }
        public Nullable<bool> ResponseSent { get; set; }
        public Nullable<System.DateTime> ResponseSentDate { get; set; }
        public string StaffMbrID { get; set; }
        public Nullable<int> PreviousIncident { get; set; }
        public Nullable<int> SubsequentIncident { get; set; }
        public Nullable<short> SentinelID { get; set; }
        public string RiskStrat { get; set; }
        public string RiskStratRow { get; set; }
        public string RiskStratCol { get; set; }
        public string RiskStratPotential { get; set; }
        public string RiskStratPotentialRow { get; set; }
        public string RiskStratPotentialCol { get; set; }
        public Nullable<int> ClaimsAuditID { get; set; }
        public Nullable<int> ClaimId { get; set; }
        public string UserName { get; set; }
        public Nullable<bool> isEdited { get; set; }
        public Nullable<System.DateTime> DateDeleted { get; set; }
        public string StepsTakenBy { get; set; }
        public string StepsTaken { get; set; }
        public Nullable<bool> StaffInjury { get; set; }
        public Nullable<bool> StaffWorkcoveNotif { get; set; }
        public Nullable<bool> StaffLostTime { get; set; }
        public Nullable<double> StaffLostTimeHours { get; set; }
        public Nullable<double> StaffLostTimeDays { get; set; }
        public string StaffLostTimeGroup { get; set; }
        public Nullable<bool> StaffWorkersCompClaim { get; set; }
        public Nullable<bool> StaffMedicalExpenses { get; set; }
        public Nullable<decimal> StaffMedicalExpensesCost { get; set; }
        public string StaffReturnToWorkPlan { get; set; }
        public Nullable<int> ThreadPrevious { get; set; }
        public Nullable<int> ThreadNext { get; set; }
        public Nullable<int> BaseID { get; set; }
        public Nullable<int> SequenceNo { get; set; }
        public Nullable<System.DateTime> DateEntered { get; set; }
        public Nullable<bool> LitigationRisk { get; set; }
        public string FormStatus { get; set; }
        public Nullable<bool> HealthAuthorityNotification { get; set; }
        public string BodyPartAffected { get; set; }
        public string TransferRequired { get; set; }
        public string PreventabilityScale { get; set; }
        public string ControlHierarchy { get; set; }
        public string RCA { get; set; }
        public string IncidentCampus { get; set; }
        public string HomeCampus { get; set; }
        public string LocalArea { get; set; }
        public string InvestigationsFinding { get; set; }
        public string InvestigatedBy { get; set; }
        public string ControlsImplemented { get; set; }
        public Nullable<System.DateTime> AdmissionDate { get; set; }
        public Nullable<int> LengthOfStay { get; set; }
        public string EmployeeSite { get; set; }
        public string EmployeeLocation { get; set; }
        public string NatureOfInjury { get; set; }
        public string AgencyOfInjury { get; set; }
        public string MechanismOfInjury { get; set; }
        public string JobTitle { get; set; }
        public string PreferredLanguage { get; set; }
        public string TypeOfEmployment { get; set; }
        public string TypeOfEmployee { get; set; }
        public Nullable<int> ExperienceYears { get; set; }
        public Nullable<int> ExperienceMonths { get; set; }
        public string SubModule { get; set; }
        public Nullable<int> DisplayID { get; set; }
        public string Detail { get; set; }
    }
}
