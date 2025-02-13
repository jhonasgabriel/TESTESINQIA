using PontosTuristicos.Models;

namespace PontosTuristicos.Repositorios.Interfaces
{
    public interface IPontoTuristico
    {
            Task<List<PontoTuristicoModel>> BuscarTodos();

            Task<PontoTuristicoModel> BuscarPorId(int id);

            Task<PontoTuristicoModel> Adicionar(PontoTuristicoModel pontoTuristico);

            Task<PontoTuristicoModel> Atualizar(PontoTuristicoModel pontoTuristico, int id);

            Task<bool> Apagar(int id);
        }
    }

