//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EntityFrameworkBlogger
{
    using System;
    using System.Collections.Generic;
    
    public partial class Blog
    {
        public Blog()
        {
            this.Post = new HashSet<Post>();
        }
    
        public int ID { get; set; }
        public string Nombre { get; set; }
    
        public virtual ICollection<Post> Post { get; set; }
    }
}
