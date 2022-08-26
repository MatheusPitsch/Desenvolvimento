using Microsoft.AspNetCore.Mvc;
using data.Model;
using data.Repositorio;

namespace WebApplication1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AnimalController : ControllerBase
    {
        private AnimalRepository repo;

        public AnimalController()
        {
            this.repo = new AnimalRepository();
        }

            [HttpGet]   
        public List<Animal> Get()
        {
            AnimalRepository repo = new AnimalRepository();
            return repo.GetAll();
        }
        [HttpPost]
        public string Post(Animal model)
        {
            AnimalRepository repo = new AnimalRepository();
            return repo.Create(model);

        }
    }
}
