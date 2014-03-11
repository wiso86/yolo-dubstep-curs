using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntityFrameworkBlogger;
using System.Data.Entity;

namespace BloggerBLL
{
    public class PostBLL
    {
        private bloggerEntities bloggerEntities;

        public PostBLL() : this(new bloggerEntities()) { }

        public PostBLL(bloggerEntities bloggerEntities)
        {
            this.bloggerEntities = bloggerEntities;
        }

        public List<Post> Listar(int IDBlog)
        {
            return bloggerEntities.Post.Where(p => p.IDBlog == IDBlog)
                .OrderByDescending(b => b.FechaCreado).ToList();
        }

        public List<Post> ListarPorUsuario(String usuario)
        {
            return bloggerEntities.Usuario.Single(u => u.User == usuario).Post
                .OrderByDescending(b => b.FechaCreado).ToList();
        }

        public Post Obtener(int ID)
        {
            return bloggerEntities.Post.Include(p => p.Comentarios)
                .SingleOrDefault(p => p.ID == ID);
        }
    }
}
