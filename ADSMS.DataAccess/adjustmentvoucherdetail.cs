//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ADSMS.DataAccess
{
    using System;
    using System.Collections.Generic;
    
    public partial class adjustmentvoucherdetail
    {
        public int ADVID { get; set; }
        public int ADVItemID { get; set; }
        public int ADVQuantAdj { get; set; }
        public string ADVReason { get; set; }
        public int ADVItemUnitCost { get; set; }
        public int ADVQuantBefore { get; set; }
        public int ADVQuantAfter { get; set; }
        public double ADVAdjustedCost { get; set; }
    
        public virtual adjustmentvoucher adjustmentvoucher { get; set; }
        public virtual item item { get; set; }
    }
}
