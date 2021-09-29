using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Entidades;
using Sucursales;

namespace Vistas
{
    public partial class ListadoDeSucursales : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GestionSucursales neg = new GestionSucursales();
                DataTable tablaCategoria = neg.getTabla();
                gvSucursales.DataSource = tablaCategoria;
                gvSucursales.DataBind();
            }
        }

        protected void FiltrarSucursal(object sender, EventArgs e)
        {
            GestionSucursales sucu = new GestionSucursales();
            //int id = Convert.ToInt32(txtIDsucursal.Text);
            gvSucursales.DataSource = sucu.getSucursalID(Convert.ToInt32(txtIDsucursal.Text));
            gvSucursales.DataBind();
            txtIDsucursal.Text = "";
        }
    }
}