using PontosTuristicos.Models;

namespace PontosTuristicos.Repositorios.Interfaces
{
    public interface IEstado
    {
        Task<List<EstadoModel>> BuscarTodos();

        Task<EstadoModel> BuscarPorId(int id);

        Task<EstadoModel> Adicionar(EstadoModel estado);

        Task<EstadoModel> Atualizar(EstadoModel estado, int id);

        Task<bool> Apagar(int id);
    }
}
