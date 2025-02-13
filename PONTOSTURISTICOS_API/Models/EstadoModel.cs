using System.ComponentModel.DataAnnotations;

namespace PontosTuristicos.Models
{
    public class EstadoModel 
    {   
        public int Id { get; set; }
        public string? Sigla { get; set; }
        public string? Descricao { get; set; }

    }
}
