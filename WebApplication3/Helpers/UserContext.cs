using System.Data.Entity;
using WebProject.Entyties;

namespace WebApplication3.Helpers
{
    public class UserContext : DbContext
    {
        public UserContext()
            : base("DbConnection")
        { }

        public DbSet<User> Users { get; set; }
        public DbSet<Route> Routes { get; set; }
    }
}