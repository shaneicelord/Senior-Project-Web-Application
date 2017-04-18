using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SeniorProject.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using SeniorProject.Controllers;

namespace MVCInBuiltFeatures.Controllers
{
    public class RolesController : Controller
    {
        ApplicationDbContext context = new ApplicationDbContext();

        public ActionResult ManageUserRoles()
        {
            var list = context.Roles.OrderBy(r => r.Name).ToList().Select(rr => new SelectListItem { Value = rr.Name.ToString(), Text = rr.Name }).ToList();
            ViewBag.Roles = list;
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult RoleAddToUser(string UserName, string RoleName)
        {
            ApplicationUser user = context.Users.Where(u => u.UserName.Equals(UserName, StringComparison.CurrentCultureIgnoreCase)).FirstOrDefault();
            // var account = new AccountController();
            // account.UserManager.AddToRole(user.Id, RoleName);
            var um = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(new ApplicationDbContext()));
            var idResult = um.AddToRole(user.Id, RoleName);

            ViewBag.RoleSuccessMessage = "Role assigned successfully !";

            // prepopulate roles for the view dropdown
            var list = context.Roles.OrderBy(r => r.Name).ToList().Select(rr => new SelectListItem { Value = rr.Name.ToString(), Text = rr.Name }).ToList();
            ViewBag.Roles = list;

            return View("ManageUserRoles");
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult GetRoles(string UserName)
        {
            if (!string.IsNullOrWhiteSpace(UserName))
            {
                ApplicationUser user = context.Users.Where(u => u.UserName.Equals(UserName, StringComparison.CurrentCultureIgnoreCase)).FirstOrDefault();
                var account = new AccountController();

                ViewBag.RolesForThisUser = account.UM.GetRoles(user.Id);

                // prepopulate roles for the view dropdown
                var list = context.Roles.OrderBy(r => r.Name).ToList().Select(rr => new SelectListItem { Value = rr.Name.ToString(), Text = rr.Name }).ToList();
                ViewBag.Roles = list;
            }

            return View("ManageUserRoles");
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteRoleForUser(string UserName, string RoleName)
        {
            var account = new AccountController();
            ApplicationUser user = context.Users.Where(u => u.UserName.Equals(UserName, StringComparison.CurrentCultureIgnoreCase)).FirstOrDefault();

            if (account.UM.IsInRole(user.Id, RoleName))
            {
                account.UM.RemoveFromRole(user.Id, RoleName);
                ViewBag.SuccessRemoveMessage = "Role removed from this user successfully !";
            }
            else
            {
                ViewBag.FailRemoveMessage = "This user doesn't belong to selected role.";
            }
            // prepopulate roles for the view dropdown
            var list = context.Roles.OrderBy(r => r.Name).ToList().Select(rr => new SelectListItem { Value = rr.Name.ToString(), Text = rr.Name }).ToList();
            ViewBag.Roles = list;

            return View("ManageUserRoles");
        }
    }
}
