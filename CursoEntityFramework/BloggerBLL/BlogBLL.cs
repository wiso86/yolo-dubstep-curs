using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntityFrameworkBlogger;

namespace BloggerBLL
{
    public class BlogBLL
    {
        private bloggerEntities bloggerEntities;

        public BlogBLL() : this(new bloggerEntities()){}

        public BlogBLL(bloggerEntities bloggerEntities)
        {
            this.bloggerEntities = bloggerEntities;
        }

        public List<Blog> ListarTodos()
        {
            return bloggerEntities.Blog.ToList();
        }

        public Blog Obtener(int ID)
        {
            return bloggerEntities.Blog.SingleOrDefault(b => b.ID == ID);
        }
    }
}
