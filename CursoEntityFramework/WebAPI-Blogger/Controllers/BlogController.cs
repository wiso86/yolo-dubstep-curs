using EntityFrameworkBlogger;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebAPI_Blogger.Controllers
{
    public class BlogController : ApiController
    {
        BloggerBLL.BlogBLL blogBLL;
        public BlogController() : this(new BloggerBLL.BlogBLL()){}

        public BlogController(BloggerBLL.BlogBLL blogBLL)
        {
            // TODO: Complete member initialization
            this.blogBLL = blogBLL;
        }

        // GET api/<controller>
        public IEnumerable<Blog> Get()
        {
            return blogBLL.ListarTodos();
        }

        // GET api/<controller>/5
        public Blog Get(int id)
        {
            return blogBLL.Obtener(id);
        }

        // POST api/<controller>
        public void Post([FromBody]string value)
        {
        }

        // PUT api/<controller>/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/<controller>/5
        public void Delete(int id)
        {
        }
    }
}