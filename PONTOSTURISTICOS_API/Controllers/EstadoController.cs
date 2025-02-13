using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using PontosTuristicos.Models;
using PontosTuristicos.Repositorios.Interfaces;

namespace PontosTuristicos.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EstadoController : ControllerBase
    {
        private readonly IEstado _estado;

        public EstadoController(IEstado estado)
        {
            _estado = estado;
        }

        [HttpGet]
        public async Task<ActionResult<List<EstadoModel>>> BuscarTodos()
        {
            List<EstadoModel> estados = await _estado.BuscarTodos();
            return Ok(estados);
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<List<EstadoModel>>> BuscarPorId(int id)
        {
            EstadoModel estado = await _estado.BuscarPorId(id);
            return Ok(estado);
        }

        [HttpPost]
        public async Task<ActionResult<EstadoModel>> Cadastrar([FromBody] EstadoModel estadoModel)
        {
            EstadoModel estado = await _estado.Adicionar(estadoModel);

            return (Ok(estado));
        }

        [HttpPost("{id}")]
        public async Task<ActionResult<EstadoModel>> Atualizar([FromBody] EstadoModel estadoModel, int id)
        {
            estadoModel.Id = id;
            EstadoModel usuario = await _estado.Atualizar(estadoModel, id);

            return (Ok(usuario));
        }

        [HttpDelete("{id}")]
        public async Task<ActionResult<EstadoModel>> Apagar(int id)
        {
            bool apagado = await _estado.Apagar(id);
            return Ok(apagado);
        }


    }
}
