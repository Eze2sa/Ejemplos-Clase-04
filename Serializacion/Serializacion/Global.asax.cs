using Newtonsoft.Json;
using Serializacion.Entity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace Serializacion
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            List<Contacto> contactos = new List<Contacto>();

            contactos.Add(new Contacto { Nombre = "Ezequiel", Apellido = "dos Santos", Telefono = 245621895 });
            contactos.Add(new Contacto { Nombre = "Juan", Apellido = "Morra", Telefono = 1265489521 });

            string pathContactos = ConfigurationManager.AppSettings.Get("PathContactos");

            if (File.Exists(pathContactos))
            {
                File.WriteAllText(pathContactos, JsonConvert.SerializeObject(contactos));
            }

            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
    }
}