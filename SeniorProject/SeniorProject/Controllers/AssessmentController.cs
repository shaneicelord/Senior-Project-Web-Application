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
    public class AssessmentController : Controller
    {
        private DanielsCANSEntities db = new DanielsCANSEntities();

        // GET: Assessment
        public ActionResult Index()
        {
            var iTEM_SCORE = db.ITEM_SCORE.Include(i => i.ASSESSMENT).Include(i => i.CANS_ITEMS);
            return View(iTEM_SCORE.ToList());
        }

        // GET: Assessment/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ITEM_SCORE iTEM_SCORE = db.ITEM_SCORE.Find(id);
            if (iTEM_SCORE == null)
            {
                return HttpNotFound();
            }
            return View(iTEM_SCORE);
        }

        // GET: Assessment/Create
        public ActionResult Create()
        {
            ViewBag.AssessmentID = new SelectList(db.ASSESSMENTS, "AssessmentID", "UserID");
            ViewBag.ItemID = new SelectList(db.CANS_ITEMS, "ItemID", "ItemName");
            return View();
        }

        // POST: Assessment/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "AssessmentID,ItemID,Score")] ITEM_SCORE iTEM_SCORE)
        {
            if (ModelState.IsValid)
            {
                db.ITEM_SCORE.Add(iTEM_SCORE);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.AssessmentID = new SelectList(db.ASSESSMENTS, "AssessmentID", "UserID", iTEM_SCORE.AssessmentID);
            ViewBag.ItemID = new SelectList(db.CANS_ITEMS, "ItemID", "ItemName", iTEM_SCORE.ItemID);
            return View(iTEM_SCORE);
        }

        // GET: Assessment/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ITEM_SCORE iTEM_SCORE = db.ITEM_SCORE.Find(id);
            if (iTEM_SCORE == null)
            {
                return HttpNotFound();
            }
            ViewBag.AssessmentID = new SelectList(db.ASSESSMENTS, "AssessmentID", "UserID", iTEM_SCORE.AssessmentID);
            ViewBag.ItemID = new SelectList(db.CANS_ITEMS, "ItemID", "ItemName", iTEM_SCORE.ItemID);
            return View(iTEM_SCORE);
        }

        // POST: Assessment/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "AssessmentID,ItemID,Score")] ITEM_SCORE iTEM_SCORE)
        {
            if (ModelState.IsValid)
            {
                db.Entry(iTEM_SCORE).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.AssessmentID = new SelectList(db.ASSESSMENTS, "AssessmentID", "UserID", iTEM_SCORE.AssessmentID);
            ViewBag.ItemID = new SelectList(db.CANS_ITEMS, "ItemID", "ItemName", iTEM_SCORE.ItemID);
            return View(iTEM_SCORE);
        }

        // GET: Assessment/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ITEM_SCORE iTEM_SCORE = db.ITEM_SCORE.Find(id);
            if (iTEM_SCORE == null)
            {
                return HttpNotFound();
            }
            return View(iTEM_SCORE);
        }

        // POST: Assessment/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ITEM_SCORE iTEM_SCORE = db.ITEM_SCORE.Find(id);
            db.ITEM_SCORE.Remove(iTEM_SCORE);
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
