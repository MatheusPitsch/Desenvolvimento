using data.Context;
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
        public virtual List<T> GetAll()
        {
            List<T> list = new List<T>();
            using (WarrenContext wc = new WarrenContext())
            {
                list = wc.Set<T>().ToList();
            }
            return list;
        }

        public virtual string Create(T model)
        {
            using (WarrenContext wc = new WarrenContext())
            {
                wc.Set<T>().Add(model);
                wc.SaveChanges();
            }
            return "Criado";
        }

        public virtual string Delete(int Id)
        {
            
            using (WarrenContext wc = new WarrenContext())
            {
                wc.Entry<T>(this.GetById(Id)).State = Microsoft.EntityFrameworkCore.EntityState.Deleted;
                wc.SaveChanges();
            }            
            return "Deletado";
        }

        public virtual T GetById(int Id)
        {
            T model = null;
            using (WarrenContext wc = new WarrenContext())
            {
                model = wc.Set<T>().Find(Id);
            }
            return model;
        }

        public virtual string Update(T model)
        {
           
            using (WarrenContext wc = new WarrenContext())
            {
                wc.Entry<T>(model).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
                wc.SaveChanges();
            }
            return "Alterado";
        }
    }
}
