using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Sucursal
    {
        private int IdSucursal;
        private string NombreSucursal;
        private string Descripcion;
        private int IdProvincia;
        private string Direccion;

        public Sucursal()
        {

        }

        public int Id_sucu { get => IdSucursal; set => IdSucursal = value; }
        public string Nombre_Sucu { get => NombreSucursal; set => NombreSucursal = value; }
        public string Desc_Sucu { get => Descripcion; set => Descripcion = value; }
        public int Id_Prov { get => IdProvincia; set => IdProvincia = value; }
        public string Dire_Sucu { get => Direccion; set => Direccion = value; }
    }

    
}
