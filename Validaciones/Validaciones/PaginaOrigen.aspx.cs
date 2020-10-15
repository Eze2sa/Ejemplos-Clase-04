using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Validaciones.Entity;

namespace Validaciones
{
    public partial class MiPagina : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Establecimiento> establecimientos = new List<Establecimiento>();

                establecimientos.Add(new Establecimiento
                {
                    Nombre = "La casa del Café",
                    Direccion = "Constitución 231"
                });

                establecimientos.Add(new Establecimiento
                {
                    Nombre = "Polirubro Martinez",
                    Direccion = "Rivadavia 1023"
                });

                Application["Establecimientos"] = establecimientos;
            }
        }

        protected void GuardarEstablecimiento(Object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Establecimiento nuevoEstablecimiento = new Establecimiento()
                {
                    Nombre = txtNombre.Text,
                    Direccion = txtDireccion.Text
                };

                List<Establecimiento> lista = (List<Establecimiento>)Application["Establecimientos"];

                lista.Add(nuevoEstablecimiento);

                Application["Establecimientos"] = lista;

                txtNombre.Text = "";
                txtDireccion.Text = "";
                txtSegundoNombre.Text = "";
                txtSegundaDireccion.Text = "";
            }
        }

        public void ValidarLongitudDireccion(object source, ServerValidateEventArgs Direccion)
        {
            Direccion.IsValid = Direccion.Value.Length > 5;// ? true : false;
        }
    }
}