using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1._1_TypeReferenci
{
    class CrudPersonLegal
    {
        //CRUD - Create,Read,Update,Delet 

        private List<PersonLegal> personLegalList;

        public CrudPersonLegal()
        {
            this.personLegalList = new List<PersonLegal>();
        }

        public string Create(PersonLegal personLegal)
        {
            this.personLegalList.Add(personLegal);
            return "Person Legal: " + personLegal.Name + " save sucess.";
        }

        public List<PersonLegal> Read()
        {        
            return personLegalList;
        }

        public string Update(PersonLegal personLegal)
        {
            return "Person Legal: " + personLegal.Name + " changed sucess.";
        }
        
        public string Delet(PersonLegal id)
        {
            return "Person Legal: " + id.Name + " delet sucess.";
        }

    }
}
