
    using System.Web.Mvc;
    using Practical_7.Models;

    namespace Practical_7.Controllers
    {
        public class FeedbackController : Controller
        {
            [HttpGet]
            public ActionResult Index()
            {
                return View(new StudentFeedback());
            }

            [HttpPost]
            [ValidateAntiForgeryToken]
            public ActionResult Index(StudentFeedback feedback)
            {
                if (ModelState.IsValid)
                {
                    ViewBag.SubmittedFeedback = feedback;
                }

                return View(feedback);
            }
        }
    }
