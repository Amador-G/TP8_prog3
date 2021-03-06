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
                DataTable TablaSucu = neg.getTabla();
                gvSucursales.DataSource = TablaSucu;
                gvSucursales.DataBind();
            }
        }

        protected void FiltrarSucursal(object sender, EventArgs e)
        {
            if(txtIDsucursal.Text == "")
            {
                GestionSucursales sucu = new GestionSucursales();
                gvSucursales.DataSource = sucu.getTabla();
                gvSucursales.DataBind();
            }
            else            
            {
                GestionSucursales sucu = new GestionSucursales();
                gvSucursales.DataSource = sucu.getSucursalID(Convert.ToInt32(txtIDsucursal.Text));
                gvSucursales.DataBind();
                txtIDsucursal.Text = "";
            }
        }

        protected void MostarTodo(object sender, EventArgs e)
        {
            GestionSucursales sucu = new GestionSucursales();
            gvSucursales.DataSource = sucu.getTabla();
            gvSucursales.DataBind();
        }
    }
}