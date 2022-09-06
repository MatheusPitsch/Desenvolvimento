using data.Model;
using data.Repositorio;
using Microsoft.AspNetCore.Mvc;
using WebApplication1.DTO;

namespace WebApplication1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AcessController : Controller
    {
        [HttpPost("Logon")]
        public User Logon(UsuarioDto usuarioDto)
        {
            UserRepository repository = new UserRepository();
            User model = repository.Logon(usuarioDto.email, usuarioDto.password);
            return model;
        }
    }
}
