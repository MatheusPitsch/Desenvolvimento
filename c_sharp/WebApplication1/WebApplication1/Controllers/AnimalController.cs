using Microsoft.AspNetCore.Mvc;
using data.Model;
using data.Repositorio;

namespace WebApplication1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AnimalController : ControllerBase
    {
            [HttpGet]   
        public Animal Get()
        {
             Animal a1 = new Animal { Id = 1, Especie = "Catchoro", Nome = "Chimbinha", Peso = 3.8f };
            return a1;
        }
        [HttpPost]
        public string Post(Animal model)
        {
            AnimalRepository repo = new AnimalRepository();
            return repo.Create(model);

        }
    }
}
