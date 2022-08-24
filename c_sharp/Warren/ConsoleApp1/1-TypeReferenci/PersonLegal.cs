using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1._1_TypeReferenci
{
    class PersonLegal : Person
    {
        public string CNPJ { get; set; }

        public PersonLegal(string name, string lastName, string cnpj) : base(name, lastName)
        {
            this.CNPJ = cnpj;               
        }

        public override string Saudation()
        {
            return base.Saudation() + " - " + this.CNPJ;
        }


    }
}
