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
    
    public partial class PT_Program
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PT_Program()
        {
            this.FC_Client_Contract = new HashSet<FC_Client_Contract>();
        }
    
        public decimal Program_ID { get; set; }
        public string Description { get; set; }
        public Nullable<byte> Current_Period { get; set; }
        public Nullable<byte> No_Future_Periods_to_Generate { get; set; }
        public string Creator_User_Name { get; set; }
        public System.DateTime Creation_Date { get; set; }
        public string Last_Modified_User_Name { get; set; }
        public Nullable<System.DateTime> Last_Modified_Date { get; set; }
        public Nullable<short> Current_Year { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<FC_Client_Contract> FC_Client_Contract { get; set; }
    }
}
