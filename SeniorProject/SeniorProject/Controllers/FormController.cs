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
    public class FormController : Controller
    {
        private DanielsCANSEntities db = new DanielsCANSEntities();

        // GET: Form
        public ActionResult Index()
        {
            var aSSESSMENTS = db.ASSESSMENTS.Include(a => a.AspNetUser).Include(a => a.PATIENT);
            return View(aSSESSMENTS.ToList());
        }

        // GET: Form/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ASSESSMENT aSSESSMENT = db.ASSESSMENTS.Find(id);
            if (aSSESSMENT == null)
            {
                return HttpNotFound();
            }
            return View(aSSESSMENT);
        }

        // GET: Form/Create
        public ActionResult Create()
        {
            ViewBag.UserID = new SelectList(db.AspNetUsers, "Id", "Email");
            ViewBag.PatientID = new SelectList(db.PATIENTS, "PatientID", "UserID");
            return View();
        }

        // POST: Form/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "AssessmentID,PatientID,UserID,AssessmentDate,Number")] ASSESSMENT aSSESSMENT)
        {
            if (ModelState.IsValid)
            {
                db.ASSESSMENTS.Add(aSSESSMENT);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.UserID = new SelectList(db.AspNetUsers, "Id", "Email", aSSESSMENT.UserID);
            ViewBag.PatientID = new SelectList(db.PATIENTS, "PatientID", "UserID", aSSESSMENT.PatientID);
            return View(aSSESSMENT);
        }

        // GET: Form/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ASSESSMENT aSSESSMENT = db.ASSESSMENTS.Find(id);
            if (aSSESSMENT == null)
            {
                return HttpNotFound();
            }
            ViewBag.UserID = new SelectList(db.AspNetUsers, "Id", "Email", aSSESSMENT.UserID);
            ViewBag.PatientID = new SelectList(db.PATIENTS, "PatientID", "UserID", aSSESSMENT.PatientID);
            return View(aSSESSMENT);
        }

        // POST: Form/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "AssessmentID,PatientID,UserID,AssessmentDate,Number")] ASSESSMENT aSSESSMENT)
        {
            if (ModelState.IsValid)
            {
                db.Entry(aSSESSMENT).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.UserID = new SelectList(db.AspNetUsers, "Id", "Email", aSSESSMENT.UserID);
            ViewBag.PatientID = new SelectList(db.PATIENTS, "PatientID", "UserID", aSSESSMENT.PatientID);
            return View(aSSESSMENT);
        }

        // GET: Form/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ASSESSMENT aSSESSMENT = db.ASSESSMENTS.Find(id);
            if (aSSESSMENT == null)
            {
                return HttpNotFound();
            }
            return View(aSSESSMENT);
        }

        // POST: Form/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ASSESSMENT aSSESSMENT = db.ASSESSMENTS.Find(id);
            db.ASSESSMENTS.Remove(aSSESSMENT);
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
