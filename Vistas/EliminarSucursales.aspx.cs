using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Sucursales;

namespace Vistas
{
    public partial class EliminarSucursales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            GestionSucursales Eliminar = new GestionSucursales();
            Boolean Eliminado = Eliminar.eliminarSucursal(Convert.ToInt32(txtEliminarSucursal.Text));

            if (Eliminado)
            {
                lblMensajeEliminado.Text = "Sucursal eliminada con exito";
            }
            else
            {
                lblMensajeEliminado.Text = "No se ha podido eliminar la sucursal";
            }

        }
    }
}