using System.ComponentModel.DataAnnotations.Schema;
namespace WebProject.Entyties.Routes
{
    [Table("64")]
    public class Route64
    {
        public int Id { get; set; }
        public int BusStationID { get; set; }
    }
}
