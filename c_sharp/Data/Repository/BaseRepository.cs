using Data.Context;
using Data.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.Repository
{
    public class BaseRepository<T> : Irepository<T> where T : BaseModel
    {
        public virtual string Create(T model)
        {

            using (ApiLoginContext apiLoginContext = new ApiLoginContext())
            {
                apiLoginContext.Set<T>().Add(model);
                apiLoginContext.SaveChanges();
            }
            return "Criado";
        }

        public virtual string Delete(int Id)
        {
            using (ApiLoginContext apiLoginContext = new ApiLoginContext())
            {
                apiLoginContext.Entry<T>(this.GetById(Id)).State = Microsoft.EntityFrameworkCore.EntityState.Deleted;
            }
            return "Deletado";
        }

        public virtual T GetById(int Id)
        {
            T model = null;
            using (ApiLoginContext apiLoginContext = new ApiLoginContext())
            {
                model = apiLoginContext.Set<T>().Find(Id);
            }
            return model;

        }

        public virtual string Update(T model)
        {
            using (ApiLoginContext apiLoginContext = new ApiLoginContext())
            {
                apiLoginContext.Entry<T>(model).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
            }
            return "Alterado";
        }
    }
}
