using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using PontosTuristicos.Models;

namespace PontosTuristicos.Data.Map
{
    public class EstadoMap : IEntityTypeConfiguration<EstadoModel>
    {
        public void Configure(EntityTypeBuilder<EstadoModel> builder)
        {
            builder.HasKey(x => x.Id);
            builder.Property(x => x.Sigla).IsRequired().HasMaxLength(255);
            builder.Property(x => x.Descricao).IsRequired().HasMaxLength(255);

        }
    }
}
