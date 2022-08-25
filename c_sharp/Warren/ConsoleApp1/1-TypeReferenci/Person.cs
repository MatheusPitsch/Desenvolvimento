using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1._1_TypeReferenci
{
    class Person : BaseModel
    {
   
        public string Name { get; set; }
        public string LastName{ get; set; }

        public Person(string name , string lastName)
        {
            this.Name = name;
            this.LastName = lastName;
        }

        
        public virtual string Saudation()
        {
           return "Ola " + this.Name + " " + this.LastName;
        }
    }
}
