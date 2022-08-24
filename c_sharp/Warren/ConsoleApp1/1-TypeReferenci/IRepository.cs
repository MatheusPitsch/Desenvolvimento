using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1._1_TypeReferenci
{
    internal interface IRepository
    {        
        string Create(Person p);

        List<Person> Read();

        string Update(Person p);
        string Delet(int Id);
        
    }
}
