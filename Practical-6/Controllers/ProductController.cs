using System.Collections.Generic;
using System.Web.Mvc;
using Practical_6.Models;

namespace Practical_6.Controllers
{
    public class ProductController : Controller
    {
        public ActionResult Index()
        {
            var products = new List<Product>
            {
                new Product { Id = 1, Name = "Laptop", Category = "Electronics", Price = 55000 },
                new Product { Id = 2, Name = "Mobile", Category = "Electronics", Price = 25000 },
                new Product { Id = 3, Name = "Headphones", Category = "Accessories", Price = 2500 }
            };

            return View(products);
        }
    }
}