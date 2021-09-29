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

        public int IdSucursal1 { get => IdSucursal; set => IdSucursal = value; }
        public string NombreSucursal1 { get => NombreSucursal; set => NombreSucursal = value; }
        public string Descripcion1 { get => Descripcion; set => Descripcion = value; }
        public int IdProvincia1 { get => IdProvincia; set => IdProvincia = value; }
        public string Direccion1 { get => Direccion; set => Direccion = value; }
    }

    
}
