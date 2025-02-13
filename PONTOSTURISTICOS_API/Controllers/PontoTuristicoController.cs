using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using PontosTuristicos.Models;
using PontosTuristicos.Repositorios.Interfaces;

namespace PontosTuristicos.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PontoTuristicoController : ControllerBase
    {
        private readonly IPontoTuristico _pontoTuristico;

        public PontoTuristicoController(IPontoTuristico pontoTuristico)
        {
            _pontoTuristico = pontoTuristico;
        }

        [HttpGet]
        public async Task<ActionResult<List<PontoTuristicoModel>>> BuscarTodos()
        {
            List<PontoTuristicoModel> pontoTuristicos = await _pontoTuristico.BuscarTodos();
            return Ok(pontoTuristicos);
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<List<PontoTuristicoModel>>> BuscarPorId(int id)
        {
            PontoTuristicoModel pontoTuristico = await _pontoTuristico.BuscarPorId(id);
            return Ok(pontoTuristico);
        }

        [HttpPost]
        public async Task<ActionResult<PontoTuristicoModel>> Cadastrar([FromBody] PontoTuristicoModel pontoTuristicoModel)
        {
            PontoTuristicoModel pontoTuristico = await _pontoTuristico.Adicionar(pontoTuristicoModel);

            return (Ok(pontoTuristico));
        }

        [HttpPost("{id}")]
        public async Task<ActionResult<PontoTuristicoModel>> Atualizar([FromBody] PontoTuristicoModel pontoTuristicoModel, int id)
        {
            pontoTuristicoModel.Id = id;
            PontoTuristicoModel pontoTuristico = await _pontoTuristico.Atualizar(pontoTuristicoModel, id);

            return (Ok(pontoTuristico));
        }

        [HttpDelete("{id}")]
        public async Task<ActionResult<PontoTuristicoModel>> Apagar(int id)
        {
            bool apagado = await _pontoTuristico.Apagar(id);
            return Ok(apagado);
        }
    }
}
