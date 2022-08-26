using data.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace data.Repositorio
{
    public class BaseRepository<T> : IRepository<T> where T : BaseModel
    {
        public string Create(T model)
        {
            return "Criado";
        }

        public string Delete(int Id)
        {
            return "Deletado";
        }

        public List<T> GetAll(T model)
        {
            List<T> list = new List<T>();
            return list;
        }

        public T GetById(int Id)
        {
            T model = null;
            return model;
        }

        public string Update(T model)
        {
            return "Alterado";
        }
    }
}
