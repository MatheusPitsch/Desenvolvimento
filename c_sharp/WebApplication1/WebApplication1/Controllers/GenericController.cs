using data.Model;
using data.Repositorio;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace WebApplication1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class GenericController<T,R> : ControllerBase where T : BaseModel where R : BaseRepository<T>
    {
        private R repo;

        public GenericController(R repo)
        {
            this.repo = repo;
        }

        [HttpGet]
        public List<T> Get()
        {            
            return repo.GetAll();
        }
        [HttpPost]
        public string Post(T model)
        {           
            return repo.Create(model);

        }
        [HttpDelete]
        public string Delete(int Id)
        {            
            return repo.Delete(Id);

        }
        [HttpPut]
        public string Put(T model)
        {            
            return repo.Update(model);

        }
    }
}
