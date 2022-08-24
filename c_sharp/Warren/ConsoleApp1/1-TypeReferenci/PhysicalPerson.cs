using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1._1_TypeReferenci
{
    class PhysicalPerson : Person
    {
        public string CPF { get; set; }

        public PhysicalPerson(string name, string lastName,string cpf) : base(name, lastName)
        {
            this.CPF = cpf;
        }

        override
        public string Saudation()
        {
            return base.Saudation() + " - " + this.CPF;
        }
    }
}
