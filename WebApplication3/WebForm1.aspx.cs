using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication3.Helpers;
using WebProject.Entyties;
using System.Json;
using Newtonsoft.Json;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI.HtmlControls;

namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        [WebMethod]
        public static string GetBusStation()
        {
            UserContext db = new UserContext();
            var BusStations = db.BusStations.ToList();
            JavaScriptSerializer TheSerializer = new JavaScriptSerializer();
            var TheJson = TheSerializer.Serialize(BusStations);
            return TheJson;
        }

        [WebMethod]
        public static string GetGeneralTable(string name)
        {
            JavaScriptSerializer TheDeSerializer = new JavaScriptSerializer();
            name = TheDeSerializer.Deserialize<string>(name);
            UserContext db = new UserContext();
            var GeneralTables1 = db.GeneralTables;
            var BusStationID1 = db.BusStations.Where(elem => (elem.Name == name)).FirstOrDefault();
            var preresult = GeneralTables1.Where(elem => (elem.BusStationId == BusStationID1.Id)).ToList();
            List<string> result = new List<string>();
            foreach(var el in preresult)
            {
                result.Add(db.Routes.Find(el.RouteID).Name + " " + el.Time);
            }
            JavaScriptSerializer TheSerializer = new JavaScriptSerializer();
            var TheJson = TheSerializer.Serialize(result);
            return TheJson;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            using (UserContext db = new UserContext())
            {
                    TableRow tRow = new TableRow();
                    TableCell tCell = new TableCell();
                    var h1 = new HtmlGenericControl("h1");
                    h1.InnerHtml = "Вітаємо вас на сайті. Оберіть свою зупинку на мапі праворуч.";
                    tCell.Controls.Add(h1);
                    tRow.Cells.Add(tCell);
                    table.Rows.Add(tRow);
            }
        }

        
    }
}