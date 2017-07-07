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
            // prepopulate roles for the view dropdown
            var list = context.Roles.OrderBy(r => r.Name).ToList().Select(rr => new SelectListItem { Value = rr.Name.ToString(), Text = rr.Name }).ToList();
            ViewBag.Roles = list;

            var um = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(new ApplicationDbContext()));
            
            if (um.FindByName(UserName) != null)
            {
                ApplicationUser user = context.Users.Where(u => u.UserName.Equals(UserName, StringComparison.CurrentCultureIgnoreCase)).FirstOrDefault();

                var idResult = um.AddToRole(user.Id, RoleName);

                ViewBag.RoleSuccessMessage = "Role assigned successfully !";

                return View("ManageUserRoles");
            }

            else
            {
                ViewBag.InvalidEmail = "This email is not associated with an account.";
                return View("ManageUserRoles");
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult GetRoles(string UserName)
        {
            var account = new AccountController();
            var UserManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(new ApplicationDbContext()));

            // prepopulate roles for the view dropdown
            var list = context.Roles.OrderBy(r => r.Name).ToList().Select(rr => new SelectListItem { Value = rr.Name.ToString(), Text = rr.Name }).ToList();
            ViewBag.Roles = list;

            if (UserManager.FindByName(UserName) != null)
            {
                ApplicationUser user = context.Users.Where(u => u.UserName.Equals(UserName, StringComparison.CurrentCultureIgnoreCase)).FirstOrDefault();
                
                ViewBag.RolesForThisUser = account.UM.GetRoles(user.Id);
                
                return View("ManageUserRoles");
            }
            else
            {
                ViewBag.FailGetRoleMessage = "This email is not associated with an account.";
                return View("ManageUserRoles");
            }

            
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteRoleForUser(string UserName, string RoleName)
        {
            // prepopulate roles for the view dropdown
            var list = context.Roles.OrderBy(r => r.Name).ToList().Select(rr => new SelectListItem { Value = rr.Name.ToString(), Text = rr.Name }).ToList();
            ViewBag.Roles = list;

            var account = new AccountController();
            var UserManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(new ApplicationDbContext()));

            ApplicationUser user = context.Users.Where(u => u.UserName.Equals(UserName, StringComparison.CurrentCultureIgnoreCase)).FirstOrDefault();

            if (UserManager.FindByName(UserName) != null)
            {

                if (account.UM.IsInRole(user.Id, RoleName))
                {
                    account.UM.RemoveFromRole(user.Id, RoleName);
                    ViewBag.SuccessRemoveMessage = "Role removed from this user successfully !";
                }
                else
                {
                    ViewBag.FailRemoveMessage = "This user doesn't belong to selected role.";
                }

                return View("ManageUserRoles");
            }
            else
            {
                ViewBag.EmailError = "This email is not associated with an account.";
                return View("ManageUserRoles");
            }
        }
    }
}
