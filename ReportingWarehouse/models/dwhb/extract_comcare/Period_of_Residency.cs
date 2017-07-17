//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ReportingWarehouse.models.dwhb.extract_comcare
{
    using System;
    using System.Collections.Generic;
    
    public partial class Period_of_Residency
    {
        public decimal Residency_ID { get; set; }
        public int Address_Purpose_ID { get; set; }
        public Nullable<int> Person_ID { get; set; }
        public Nullable<decimal> Address_ID { get; set; }
        public Nullable<decimal> Organisation_ID { get; set; }
        public System.DateTime From_Date { get; set; }
        public Nullable<System.DateTime> To_Date { get; set; }
        public bool Display_Indicator { get; set; }
        public bool Confidential_Indicator { get; set; }
        public System.DateTime Creation_Date { get; set; }
        public string Creator_User_Name { get; set; }
        public Nullable<System.DateTime> Last_Modified_Date { get; set; }
        public string Last_Modified_User_Name { get; set; }
        public Nullable<bool> Override_Org_Address_Ind { get; set; }
    
        public virtual Address Address { get; set; }
        public virtual Person Person { get; set; }
    }
}
