//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ChessDatabase
{
    using System;
    using System.Collections.Generic;
    
    public partial class Square
    {
        public int PositionId { get; set; }
        public byte Rank { get; set; }
        public byte File { get; set; }
        public byte Captures { get; set; }
        public byte Piece { get; set; }
        public bool White { get; set; }
    
        public virtual Position Position { get; set; }
    }
}
