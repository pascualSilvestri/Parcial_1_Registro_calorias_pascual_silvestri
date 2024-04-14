using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial_1_Registro_calorias_pascual_silvestri
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        TxtController txt = new TxtController();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String nombreComida = NombreComida.Text;
            String tipoComida = TipoComida.Text;
            DateTime fechaComida = FechaComida.SelectedDate;
            String calorias = Calorias.Text;
                
            txt.GuardarDatos(nombreComida, tipoComida, fechaComida,calorias);

            Label5.Text = "se Registro correctamente los datos" + " " + nombreComida + " " + tipoComida + " " + fechaComida + " " + calorias;

            NombreComida.Text = "";
            TipoComida.Text = "";
            Calorias.Text = "";
            FechaComida = null;

            Response.Redirect("~/RegistrosCalorias.aspx");


        }
    }
}