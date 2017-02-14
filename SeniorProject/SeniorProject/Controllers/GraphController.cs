using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SeniorProject.Models;

namespace SeniorProject.Controllers
{
    public class GraphController : Controller
    {

        // GET: Graphs
        public ActionResult Graphs()
        {
            return View();
        }

        // GET: TherapistGraph
        public ActionResult TherapistGraph()
        {
            return View();
        }

        // GET: PatientGraph
        public ActionResult PatientGraph()
        {
            return View();
        }

        // GET: PerTherapist
        public ActionResult PerTherapist()
        {
            return View();
        }

        // GET: PerPatient
        public ActionResult PerPatient()
        {
            return View();
        }

        // GET: SearchPatients
        public ActionResult SearchPatients()
        {
            return View();
        }

        [HttpPost]
        public ActionResult SearchPatients(GraphSession data)
        {
            Session["PatientID"] = data.PatientID;
            return RedirectToAction("PerPatient");
        }

        // GET: SearchTherapists
        public ActionResult SearchTherapists()
        {
            return View();
        }

        [HttpPost]
        public ActionResult SearchTherapists(GraphSession data)
        {
            Session["UserID"] = data.UserEmail;
            return RedirectToAction("PerTherapist");
        }
    }
}