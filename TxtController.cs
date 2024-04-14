using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace Parcial_1_Registro_calorias_pascual_silvestri
{
    public class TxtController
    {
        private readonly string filePath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "db.txt");

        public TxtController() { }

        public void GuardarDatos(string nombreComida, string tipoComida, DateTime fechaComida, string calorias)
        {
            string datos = $"{nombreComida},{tipoComida},{fechaComida},{calorias}";
            using (StreamWriter sw = File.AppendText(filePath))
            {
                sw.WriteLine(datos);
            }
        }

        public List<List<string>> ObtenerDatos()
        {
            var datos = new List<List<string>>();
            var lineas = File.ReadAllLines(filePath);

            foreach (var linea in lineas)
            {
                var fila = linea.Split(',').ToList();
                datos.Add(fila);
            }

            return datos;
        }


    }
}