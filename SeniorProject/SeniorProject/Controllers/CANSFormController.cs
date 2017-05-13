using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SeniorProject.Controllers
{
    public class CANSFormController : ApplicationBaseController
    {
        // GET: CANSForm
        public ActionResult CANSForm()
        {
            return View();
        }

        [Authorize]
        public ActionResult Index()
        {
            return View();
        }
    }
}