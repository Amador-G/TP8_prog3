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
    public partial class AgregarSucursales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GestionSucursales Provincias = new GestionSucursales();
                ddlProvinciasSuc.DataSource = Provincias.getProvincias();
                ddlProvinciasSuc.DataTextField = "DescripcionProvincia";
                ddlProvinciasSuc.DataValueField = "Id_Provincia";
                ddlProvinciasSuc.DataBind();
            }
        }
    }
}