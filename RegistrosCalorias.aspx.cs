using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace Parcial_1_Registro_calorias_pascual_silvestri
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        TxtController txt = new TxtController();
        protected void Page_Load(object sender, EventArgs e)
        {
            // Supongamos que esta es tu lista de datos
            List<List<string>> Lists = txt.ObtenerDatos();
            int count = 0;
            foreach (List<string> list in Lists)
            {
                count++;
                Panel panel = new Panel();
                panel.CssClass = "row_data";
                panel.ID = count.ToString();

                Label nuevoLabel = new Label();
                nuevoLabel.Text = "Comida: " + list[0] + "<br />" + "Tipo comida: " + list[1] + "<br />" + "Fecha: " + list[2] + "<br />" + "Calorias: " + list[3];
                panel.Controls.Add(nuevoLabel);

                Panel1.Controls.Add(panel);
            }

        }
    }
}