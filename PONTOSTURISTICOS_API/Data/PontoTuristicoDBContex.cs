using Microsoft.EntityFrameworkCore;
using PontosTuristicos.Data.Map;
using PontosTuristicos.Models;

namespace PontosTuristicos.Data
{
    public class PontoTuristicoDBContex : DbContext 
    {
        public PontoTuristicoDBContex(DbContextOptions<PontoTuristicoDBContex> options)
            : base(options)
        {
        }

        public DbSet<EstadoModel> Estados { get; set; }
        public DbSet<PontoTuristicoModel> PontosTuristicos { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.ApplyConfiguration(new EstadoMap());
            modelBuilder.ApplyConfiguration(new PontoTuristicoMap());


            base.OnModelCreating(modelBuilder);
        }
    }
}
