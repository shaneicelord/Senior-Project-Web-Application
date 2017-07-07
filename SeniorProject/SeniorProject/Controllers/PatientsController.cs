using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using SeniorProject.Models;
using Microsoft.AspNet.Identity;

namespace SeniorProject.Controllers
{
    public class PatientsController : Controller
    {
        private DanielsCANSEntities db = new DanielsCANSEntities();

        // GET: Patients
        [Authorize]
        public ActionResult Index()
        {
            var pATIENTS = db.PATIENTS.Include(p => p.AspNetUser).Include(p => p.DEPARTMENT).Where(p => p.AspNetUser.ToString().Trim() == User.Identity.GetUserId().Trim());

            return View(pATIENTS.ToList());
        }

        // GET: Patients/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PATIENT pATIENT = db.PATIENTS.Find(id);
            if (pATIENT == null)
            {
                return HttpNotFound();
            }
            return View(pATIENT);
        }

        // GET: Patients/Create
        public ActionResult Create()
        {
            ViewBag.UserID = new SelectList(db.AspNetUsers, "Id", "Email");
            ViewBag.DepartmentID = new SelectList(db.DEPARTMENTS, "DepartmentID", "DepartmentName");
            return View();
        }

        // POST: Patients/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "PatientID,UserID,LastName,FirstName,IsActive,Caregiver,Ethnicity,DateOfBirth,Gender,DepartmentID")] PATIENT pATIENT)
        {
            if (ModelState.IsValid)
            {
                db.PATIENTS.Add(pATIENT);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.UserID = new SelectList(db.AspNetUsers, "Id", "Email", pATIENT.UserID);
            ViewBag.DepartmentID = new SelectList(db.DEPARTMENTS, "DepartmentID", "DepartmentName", pATIENT.DepartmentID);
            return View(pATIENT);
        }

        // GET: Patients/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PATIENT pATIENT = db.PATIENTS.Find(id);
            if (pATIENT == null)
            {
                return HttpNotFound();
            }
            ViewBag.UserID = new SelectList(db.AspNetUsers, "Id", "Email", pATIENT.UserID);
            ViewBag.DepartmentID = new SelectList(db.DEPARTMENTS, "DepartmentID", "DepartmentName", pATIENT.DepartmentID);
            return View(pATIENT);
        }

        // POST: Patients/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "PatientID,UserID,LastName,FirstName,IsActive,Caregiver,Ethnicity,DateOfBirth,Gender,DepartmentID")] PATIENT pATIENT)
        {
            if (ModelState.IsValid)
            {
                db.Entry(pATIENT).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.UserID = new SelectList(db.AspNetUsers, "Id", "Email", pATIENT.UserID);
            ViewBag.DepartmentID = new SelectList(db.DEPARTMENTS, "DepartmentID", "DepartmentName", pATIENT.DepartmentID);
            return View(pATIENT);
        }

        // GET: Patients/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PATIENT pATIENT = db.PATIENTS.Find(id);
            if (pATIENT == null)
            {
                return HttpNotFound();
            }
            return View(pATIENT);
        }

        // POST: Patients/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            PATIENT pATIENT = db.PATIENTS.Find(id);
            db.PATIENTS.Remove(pATIENT);
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
