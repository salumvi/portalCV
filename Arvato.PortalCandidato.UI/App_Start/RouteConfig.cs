﻿using System.Web.Mvc;
using System.Web.Routing;

namespace Arvato.PortalCandidato.UI
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Candidate", action = "Create", id = UrlParameter.Optional }
            );
        }
    }
}
