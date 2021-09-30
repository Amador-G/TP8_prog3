using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Entidades;
using Dao;


namespace Sucursales
{
    public class GestionSucursales
    {
        public DataTable getProvincias()
        {
            DaoSucursal dao = new DaoSucursal();
            return dao.getTablaProvincias();
        }
        public DataTable getTabla()
        {
            DaoSucursal dao = new DaoSucursal();
            return dao.getTablaSucursal();
        }

        public DataTable getSucursalID(int ID)
        {
            DaoSucursal dao = new DaoSucursal();

            DataTable h = dao.GetTablaSucID(ID);

            return h;
        }

        public Sucursal get(int id)
        {
            DaoSucursal dao = new DaoSucursal();
            Sucursal cat = new Sucursal();
            cat.Id_sucu = id;
            return dao.getSucursal(cat);
        }

        public bool eliminarSucursal(int id)
        {
            DaoSucursal dao = new DaoSucursal();
            Sucursal cat = new Sucursal();
            cat.Id_sucu = id;
            int op = dao.eliminarSucursal(cat);
            if (op == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool agregarSucursal(string nombre, string descripcion, int idProvincia, string direcccion)
        {
            int cantFilas = 0;

            Sucursal cat = new Sucursal();
            cat.Nombre_Sucu = nombre;
            cat.Desc_Sucu = descripcion;
            cat.Dire_Sucu = direcccion;
            cat.Id_Prov = idProvincia;



            DaoSucursal dao = new DaoSucursal();



            if (dao.existeSucursal(cat) == false)
            {
                cantFilas = dao.agregarSucursal(cat);
            }
            if (cantFilas == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

    }
}
