using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using PontosTuristicos.Models;

namespace PontosTuristicos.Data.Map
{
    public class PontoTuristicoMap : IEntityTypeConfiguration<PontoTuristicoModel>
    {
        public void Configure(EntityTypeBuilder<PontoTuristicoModel> builder)
        {
            builder.HasKey(x => x.Id);
            builder.Property(x => x.Nome).IsRequired().HasMaxLength(255);
            builder.Property(x => x.Descricao).IsRequired().HasMaxLength(255);
            builder.Property(x => x.Localizacao).IsRequired().HasMaxLength(255);
            builder.Property(x => x.Cidade).IsRequired().HasMaxLength(255);
            builder.Property(x => x.DataInclusao).IsRequired().HasMaxLength(255);
            builder.Property(x => x.IdEstado).IsRequired().HasMaxLength(255);


        }
    }
}
