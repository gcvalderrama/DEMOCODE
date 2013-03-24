using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading;
using System.Web.Http;

namespace Demo
{
    public class ClientesWAPIController : ApiController
    {
        [HttpGet()]
        public IEnumerable<string> Get()
        {

            Thread.Sleep(5000);

            return  new string[] { "luis", "felipe",  DateTime.Now.ToLongTimeString() };
        }

        // GET api/<controller>/5
        public string Get(int id)
        {
            return "value";
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