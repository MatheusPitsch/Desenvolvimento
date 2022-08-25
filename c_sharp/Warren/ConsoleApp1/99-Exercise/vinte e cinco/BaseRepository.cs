using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1._99_Exercise.vinte_e_cinco
{
    class BaseRepository<T> : IRepository<T> where T : BaseModel
    {
        List<T> objectValue;

        public string Create(T value)
        {
            this.objectValue.Add(value);
            return "objectValue: " + value.Id + " save sucess";
        }

        public string Delete(int Id)
        {
            return "objectValue: " + Id + " delete sucess";
        }

        public List<T> Read()
        {
            return objectValue;
        }

        public string Update(T value)
        {
            return "objectValue: " + value.Id + " changed sucess";
        }
    }
}
