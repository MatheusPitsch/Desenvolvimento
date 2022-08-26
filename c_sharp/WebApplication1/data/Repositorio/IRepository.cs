using data.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace data.Repositorio
{
    public interface IRepository<T> where T : BaseModel
    {
        string Create(T model);
        string Update(T model);
        string Delete(int Id);
        List<T> GetAll(T model);

        T GetById(int Id);
    }
}
