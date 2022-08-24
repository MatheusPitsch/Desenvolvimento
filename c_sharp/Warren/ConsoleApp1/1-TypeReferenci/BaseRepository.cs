using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1._1_TypeReferenci
{
    class BaseRepository : IRepository
    {
        List<Person> person;

        public BaseRepository()
        {
            this.person = new List<Person>();
        }

        public string Create(Person person)
        {
            this.person.Add(person);
            return "Person: " + person.Name + " save sucess.";
        }

        public string Delet(int Id)
        {
            throw new NotImplementedException();
        }

        public List<Person> Read()
        {
            throw new NotImplementedException();
        }

        public string Update(Person person)
        {
            throw new NotImplementedException();
        }
    }
}
