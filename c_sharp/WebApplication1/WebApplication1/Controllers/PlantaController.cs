using data.Model;
using data.Repositorio;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace WebApplication1.Controllers
{

    public class PlantaController : GenericController<Planta, PlantaRepository>
    {
        public PlantaController() : base(new PlantaRepository())
        {
        }
    }
}
