using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using SeniorProject.Models;

namespace SeniorProject.Controllers
{
    public class CANScalculationsController : Controller
    {
        private CANScalculationsDBContext db = new CANScalculationsDBContext();

        // GET: CANScalculations
        public ActionResult Index()
        {
            return View(db.CANScalculationss.ToList());
        }

        // GET: CANScalculations/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CANScalculations cANScalculations = db.CANScalculationss.Find(id);
            if (cANScalculations == null)
            {
                return HttpNotFound();
            }
            return View(cANScalculations);
        }

        // GET: CANScalculations/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: CANScalculations/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,patientID,Family,LivingSituation,SocialFunctioning,Recreatrional,JobFunctioning,Developmental,Legal,Medical,Physical,ReportNumber,totalNumber,Progress")] CANScalculations cANScalculations)
        {
            if (ModelState.IsValid)
            {
                cANScalculations.totalNumber = cANScalculations.Family + cANScalculations.LivingSituation + cANScalculations.SocialFunctioning + cANScalculations.Recreatrional + cANScalculations.JobFunctioning + cANScalculations.Developmental + cANScalculations.Legal + cANScalculations.Medical + cANScalculations.Physical;

                var query = from a in db.CANScalculationss
                            where a.patientID.Equals(cANScalculations.patientID)
                            select a;
                int fTotalNum = query.FirstOrDefault().totalNumber;

                if (fTotalNum == 0)
                {
                    cANScalculations.Progress = 0;
                }
                else
                {
                    cANScalculations.Progress = ((cANScalculations.totalNumber - fTotalNum)/fTotalNum) * 100;
                }

                db.CANScalculationss.Add(cANScalculations);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(cANScalculations);
        }

        // GET: CANScalculations/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CANScalculations cANScalculations = db.CANScalculationss.Find(id);
            if (cANScalculations == null)
            {
                return HttpNotFound();
            }
            return View(cANScalculations);
        }

        // POST: CANScalculations/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,patientID,Family,LivingSituation,SocialFunctioning,Recreatrional,JobFunctioning,Developmental,Legal,Medical,Physical,ReportNumber,totalNumber,Progress")] CANScalculations cANScalculations)
        {
            if (ModelState.IsValid)
            {

                cANScalculations.totalNumber = cANScalculations.Family + cANScalculations.LivingSituation + cANScalculations.SocialFunctioning + cANScalculations.Recreatrional + cANScalculations.JobFunctioning + cANScalculations.Developmental + cANScalculations.Legal + cANScalculations.Medical + cANScalculations.Physical;

                var query = from a in db.CANScalculationss
                            where a.patientID.Equals(cANScalculations.patientID)
                            select a;
                int fTotalNum = query.FirstOrDefault().totalNumber;

                if (fTotalNum == 0)
                {
                    cANScalculations.Progress = 0;
                }
                else
                {
                    cANScalculations.Progress = ((cANScalculations.totalNumber - fTotalNum) / fTotalNum) * 100;
                }
                db.Entry(cANScalculations).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(cANScalculations);
        }

        // GET: CANScalculations/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CANScalculations cANScalculations = db.CANScalculationss.Find(id);
            if (cANScalculations == null)
            {
                return HttpNotFound();
            }
            return View(cANScalculations);
        }

        // POST: CANScalculations/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            CANScalculations cANScalculations = db.CANScalculationss.Find(id);
            db.CANScalculationss.Remove(cANScalculations);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
