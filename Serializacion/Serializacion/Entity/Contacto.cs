using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Serializacion.Entity
{
    [Serializable]
    public class Contacto
    {
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public long Telefono { get; set; }
    }
}


