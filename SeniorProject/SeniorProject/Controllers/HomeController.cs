using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SeniorProject.Controllers
{
    public class HomeController : ApplicationBaseController
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Here is your generated graph:";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Daniel Kids";

            return View();
        }
    }
}