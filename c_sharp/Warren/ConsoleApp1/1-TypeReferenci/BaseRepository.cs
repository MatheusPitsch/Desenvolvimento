using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1._1_TypeReferenci
{
    class BaseRepository<T> : IRepository<T> where T : BaseModel
    {
        List<T> person;

        public BaseRepository()
        {
            this.person = new List<T>();
        }

        public string Create(T person)
        {
            this.person.Add(person);
            return "Person: " + person.Id + " save sucess.";
        }

        public string Delet(int Id)
        {
            return "Person the id: " + Id + " delet sucess";
        }

        public List<T> Read()
        {
            return person;
        }

        public string Update(T person)
        {
            return "Person: " + person.Id + " changed sucess";
        }
    }
}
