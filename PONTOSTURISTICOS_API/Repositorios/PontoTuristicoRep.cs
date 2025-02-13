using Microsoft.EntityFrameworkCore;
using PontosTuristicos.Data;
using PontosTuristicos.Models;
using PontosTuristicos.Repositorios.Interfaces;

namespace PontosTuristicos.Repositorios
{
    public class PontoTuristicoRep : IPontoTuristico
    {
        private readonly PontoTuristicoDBContex _dbContext;

        public PontoTuristicoRep(PontoTuristicoDBContex pontoTuristicoDBContex)
        {
            _dbContext = pontoTuristicoDBContex;
        }
        public async Task<PontoTuristicoModel> BuscarPorId(int id)
        {
            return await _dbContext.PontosTuristicos.FirstOrDefaultAsync(x => x.Id == id);
        }

        public async Task<List<PontoTuristicoModel>> BuscarTodos()
        {
           return await _dbContext.PontosTuristicos.ToListAsync();
        }

        public async Task<PontoTuristicoModel> Adicionar(PontoTuristicoModel pontoTuristico)
        {
            await _dbContext.PontosTuristicos.AddAsync(pontoTuristico);
            await _dbContext.SaveChangesAsync();

            return pontoTuristico;
        }

        public async Task<PontoTuristicoModel> Atualizar(PontoTuristicoModel pontoTuristico, int id)
        {
            PontoTuristicoModel pontoTuristicoPorId = await BuscarPorId(id);

            if ( pontoTuristicoPorId == null)
            {
                throw new Exception($"Ponto turistico para o ID:{id} não foi encontrada no banco de dados");
            }
            pontoTuristicoPorId.Nome = pontoTuristico.Nome;
            pontoTuristicoPorId.Descricao = pontoTuristico.Descricao;
            pontoTuristicoPorId.Localizacao = pontoTuristico.Localizacao;
            pontoTuristicoPorId.DataInclusao = pontoTuristico.DataInclusao;
            pontoTuristicoPorId.IdEstado = pontoTuristico.IdEstado;


            _dbContext.PontosTuristicos.Update(pontoTuristico);
            await _dbContext.SaveChangesAsync();

            return pontoTuristico;
        }

        public async Task<bool> Apagar(int id)
        {
            PontoTuristicoModel pontoTuristicoPorId = await BuscarPorId(id);

            if (pontoTuristicoPorId == null)
            {
                throw new Exception($"Ponto turistico para o ID:{id} não foi encontrado no banco de dados");
            }
            _dbContext.PontosTuristicos.Remove(pontoTuristicoPorId);
            await _dbContext.SaveChangesAsync();
            return true;
        }

    }
}
