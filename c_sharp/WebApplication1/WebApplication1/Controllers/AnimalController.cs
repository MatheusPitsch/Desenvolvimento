using Microsoft.AspNetCore.Mvc;
using data.Model;
using data.Repositorio;

namespace WebApplication1.Controllers
{
    
    public class AnimalController : GenericController<Animal,AnimalRepository>
    {
        public AnimalController() : base(new AnimalRepository())
        {
        }
    }
}
