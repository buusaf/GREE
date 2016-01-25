﻿using MP.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MP.Controllers
{
    public class HomeController : BaseController
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult SetCulture(string culture)
        {
            //culture = CultureHelper.GetImplementedCulture(culture);
            //HttpCookie cookie = Request.Cookies["_culture"];
            //RouteData.Values["culture"] = culture;

            //if (cookie != null)
            //    cookie.Value = culture;
            //else
            //{
            //    cookie = new HttpCookie("_culture");
            //    cookie.Value = culture;
            //    cookie.Expires = DateTime.Now.AddYears(1);
            //}
            //Response.Cookies.Add(cookie);
            //return RedirectToAction("Index");
            // Validate input
            culture = CultureHelper.GetImplementedCulture(culture);
            RouteData.Values["culture"] = culture;  // set culture


            return RedirectToAction("Index");
        }
    }
}