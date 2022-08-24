using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1._1_TypeReferenci
{
    class CrudPerson
    {
        //CRUD - Create,Read,Update,Delet 

        private List<PhysicalPerson> personList;

        public CrudPerson()
        {
            this.personList = new List<PhysicalPerson>();
        }

        public string Create(PhysicalPerson person)
        {
            this.personList.Add(person);
            return "Person: " + person.Name + " save sucess.";
        }

        public List<PhysicalPerson> Read()
        {        
            return personList;
        }

        public string Update(PhysicalPerson person)
        {
            return "Person: " + person.Name + " changed sucess.";
        }
        
        public string Delet(PhysicalPerson id)
        {
            return "Person: " + id.Name + " delet sucess.";
        }

    }
}
