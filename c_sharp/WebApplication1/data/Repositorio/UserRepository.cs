using data.Context;
using data.Model;
using data.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace data.Repositorio
{
    public class UserRepository : BaseRepository<User>
    {
        public override string Create(User model)
        {
            model.Password = Criptografia.Criptografar(model.Password);
            return base.Create(model);
        }

        public User Logon(string email, string password)
        {
            password = Criptografia.Criptografar(password);
            User user = new User();
            using (WarrenContext context = new WarrenContext())
            {
                user = context.User.Where(u=>u.Email == email && u.Password == password).FirstOrDefault();
            }
            return user;
        }

    }
}
