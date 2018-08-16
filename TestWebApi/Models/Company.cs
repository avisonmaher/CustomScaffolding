using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TestWebApi.Models
{
    public class Company
    {
        public int ID { get; set; }
        public string Name { get; set; }

        public List<Person> Employees { get; set; }
    }
}
