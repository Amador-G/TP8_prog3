using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using Entidades;

namespace Dao
{
    class AccesoDatos
    {
        string BDsucursales = 
            "Data Source=LocalHost\\SQLEXPRESS;Initial Catalog=BDSucursales;Integrated Security=True";
        public AccesoDatos()
        {

        }

        private SqlConnection ObtenerConexion()
        {
            SqlConnection cn = new SqlConnection(BDsucursales);
            try
            {
                cn.Open();
                return cn;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        private SqlDataAdapter ObtenerAdaptador(string consultaSql, SqlConnection cn)
        {
            SqlDataAdapter adaptador;
            try
            {
                adaptador = new SqlDataAdapter(consultaSql, cn);
                return adaptador;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public DataTable ObtenerTabla(string NombreTabla, string Sql)
        {
            DataSet ds = new DataSet();
            SqlConnection conexion = ObtenerConexion();
            SqlDataAdapter adq = ObtenerAdaptador(Sql, conexion);
            adq.Fill(ds, NombreTabla);
            conexion.Close();
            return ds.Tables[NombreTabla];
        }

        public int EjecutarProcedimientoAlmacenado(SqlCommand comando, string NombreSP)
        {
            int FilasCambiadas;
            SqlConnection conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand();
            cmd = comando;
            cmd.Connection = conexion;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = NombreSP;
            FilasCambiadas = cmd.ExecuteNonQuery();
            conexion.Close();
            return FilasCambiadas;
        }

        public Boolean existe(string consulta)
        {
            Boolean estado = false;
            SqlConnection conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand(consulta, conexion);
            SqlDataReader datos = cmd.ExecuteReader();
            if (datos.Read())
            {
                estado = false;
            }
            return estado;
        }

        public int ObtenerMaximo(string consulta)
        {
            int max = 0;
            SqlConnection conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand(consulta, conexion);
            SqlDataReader datos = cmd.ExecuteReader();
            if (datos.Read())
            {
                max = Convert.ToInt32(datos[0].ToString());
            }
            return max;
        }
    }
}
