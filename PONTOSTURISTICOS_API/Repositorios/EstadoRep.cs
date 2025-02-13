using Microsoft.EntityFrameworkCore;
using PontosTuristicos.Data;
using PontosTuristicos.Models;
using PontosTuristicos.Repositorios.Interfaces;

namespace PontosTuristicos.Repositorios
{
    public class EstadoRep : IEstado
    {
        private readonly PontoTuristicoDBContex _dbContext;

        public EstadoRep(PontoTuristicoDBContex pontoTuristicoDBContex)
        {
            _dbContext = pontoTuristicoDBContex;
        }
        public async Task<EstadoModel> BuscarPorId(int id)
        {
            return await _dbContext.Estados.FirstOrDefaultAsync(x => x.Id == id);
        }

        public async Task<List<EstadoModel>> BuscarTodos()
        {
            return await _dbContext.Estados.ToListAsync();
        }

        public async Task<EstadoModel> Adicionar(EstadoModel estado)
        { 
            await _dbContext.Estados.AddAsync(estado);
            await _dbContext.SaveChangesAsync();

            return estado;
        }

        public async Task<EstadoModel> Atualizar(EstadoModel estado, int id)
        {
            EstadoModel estadoPorId = await BuscarPorId(id);

            if (estadoPorId == null)
            {
                throw new Exception($"Estado para o ID:{id} não foi encontrada no banco de dados");
            }
            estadoPorId.Sigla = estado.Sigla;
            estadoPorId.Descricao = estado.Descricao;

            _dbContext.Estados.Update(estado);
            await _dbContext.SaveChangesAsync();

            return estado;
        }

        public async Task<bool> Apagar(int id)
        {
            EstadoModel estadoPorId = await BuscarPorId(id);

            if (estadoPorId == null)
            {
                throw new Exception($"Estado para o ID:{id} não foi encontrado no banco de dados");
            }
            _dbContext.Estados.Remove(estadoPorId);
            await _dbContext.SaveChangesAsync();
            return true;
        }
    }
}
