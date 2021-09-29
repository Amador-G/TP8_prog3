using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Entidades;


namespace Dao
{
    public class DaoSucursal
    {
        AccesoDatos ds = new AccesoDatos();

        public Sucursal getSucursal(Sucursal cat)
        {
            DataTable tabla = ds.ObtenerTabla("Sucursal", "Select * from Sucursal where Id_Sucursal=" + cat.Id_sucu);
            cat.Id_sucu = Convert.ToInt32(tabla.Rows[0][0].ToString());
            cat.Nombre_Sucu = tabla.Rows[0][1].ToString();
            cat.Desc_Sucu = tabla.Rows[0][2].ToString();
            cat.Id_Prov = Convert.ToInt32(tabla.Rows[0][3].ToString());
            cat.Dire_Sucu = tabla.Rows[0][4].ToString();
            return cat;
        }

        public DataTable GetTablaSucID(int ID)
        {
            DataTable tabla = ds.ObtenerTabla("Sucursal", "Select Id_Sucursal,NombreSucursal,DescripcionSucursal,Id_ProvinciaSucursal,DireccionSucursal from Sucursal where Id_Sucursal=" + ID);
            return tabla;
        }

        public Boolean existeSucursal(Sucursal cat)
        {
            string consulta = "Select * from Sucursal where NombreSucursal='" + cat.Nombre_Sucu + "'";
            return ds.existe(consulta);
        }

        public DataTable getTablaSucursal()
        {
            DataTable tabla = ds.ObtenerTabla("Sucursal", "Select Id_Sucursal,NombreSucursal,DescripcionSucursal,Id_ProvinciaSucursal,DireccionSucursal from Sucursal");
            return tabla;
        }

        public DataTable getTablaProvincias()
        {
            DataTable tabla = ds.ObtenerTabla("Provincia", "Select Id_Provincia,DescripcionProvincia from Provincia");
            return tabla;
        }
        public int eliminarSucursal(Sucursal cat)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametroSucursalEliminar(ref comando, cat);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spEliminarSucursal");
        }

        public int agregarSucursal(Sucursal cat)
        {
            cat.Id_sucu = ds.ObtenerMaximo("Select max(idSucursal)from Sucursal") + 1;
            SqlCommand comando = new SqlCommand();
            ArmarParametrosSucursalAgregar(ref comando, cat);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spAgregarSucursal");
        }

        private void ArmarParametroSucursalEliminar(ref SqlCommand comando, Sucursal cat)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = comando.Parameters.Add("@IDSUCURSAL", SqlDbType.Int);
            SqlParametros.Value = cat.Id_sucu;
        }

        private void ArmarParametrosSucursalAgregar(ref SqlCommand comando, Sucursal cat)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = comando.Parameters.Add("@IDSUCURSAL", SqlDbType.Int);
            SqlParametros.Value = cat.Id_sucu;
            SqlParametros = comando.Parameters.Add("@NOMBRESUCU", SqlDbType.NVarChar);
            SqlParametros.Value = cat.Nombre_Sucu;
            SqlParametros = comando.Parameters.Add("@DESCRIPCION", SqlDbType.NVarChar);
            SqlParametros.Value = cat.Desc_Sucu;
            SqlParametros = comando.Parameters.Add("@IDPROVSUCURSAL", SqlDbType.Int);
            SqlParametros.Value = cat.Id_Prov;
            SqlParametros = comando.Parameters.Add("@DIRECCIONSUCU", SqlDbType.NVarChar);
            SqlParametros.Value = cat.Dire_Sucu;
        }
    }
}
