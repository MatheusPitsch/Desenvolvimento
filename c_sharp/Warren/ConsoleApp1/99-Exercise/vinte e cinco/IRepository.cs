using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1._99_Exercise.vinte_e_cinco
{
    interface IRepository<T>
    {
        string Create(T value);

        List<T> Read();

        string Update(T value);

        string Delete(int Id);
        

    }
}
