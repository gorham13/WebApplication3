using System.Data.Entity;
using WebProject.Entyties;
using WebProject.Entyties.Routes;

namespace WebApplication3.Helpers
{
    public class UserContext : DbContext
    {
        public UserContext()
            : base("DbConnection")
        { }

        public DbSet<User> Users { get; set; }
        public DbSet<Route> Routes { get; set; }
        public DbSet<BusStation> BusStations { get; set; }
        public DbSet<GeneralTable> GeneralTables { get; set; }
        public DbSet<Route45> Route45s { get; set; }
        public DbSet<Route49> Route49s { get; set; }
        public DbSet<Route64> Route64s { get; set; }
    }
}