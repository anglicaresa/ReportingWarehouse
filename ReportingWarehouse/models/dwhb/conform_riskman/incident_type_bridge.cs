//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ReportingWarehouse.models.dwhb.conform_riskman
{
    using System;
    using System.Collections.Generic;
    
    public partial class incident_type_bridge
    {
        public int incident_type_bridge_key { get; set; }
        public int incident_key { get; set; }
        public int incident_type_key { get; set; }
    
        public virtual incident_fact incident_fact { get; set; }
        public virtual incident_type_dim incident_type_dim { get; set; }
    }
}
