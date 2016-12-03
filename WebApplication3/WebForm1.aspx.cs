using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication3.Helpers;
using WebProject.Entyties;

namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (UserContext db = new UserContext())
            {
                var elements = db.Routes;
                foreach (Route el in elements)
                {
                    TableRow tRow = new TableRow();
                    TableCell tCell = new TableCell();
                    tCell.Text = el.Id + " " + el.Name;
                    tRow.Cells.Add(tCell);
                    table.Rows.Add(tRow);
                }
            }
        }

        
    }
}