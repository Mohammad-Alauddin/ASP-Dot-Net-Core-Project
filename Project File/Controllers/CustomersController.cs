using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using Project_08.Models;

namespace Project_08.Controllers
{
    public class CustomersController : Controller
    {
        private readonly ApplicationDbContext _context;

        //Multi Insert Part
        public ActionResult Sample()
        {
            return View();
        }

        [HttpPost]
        public JsonResult Customers(string customerjson)
        {
            var js = new JsonSerializer();
            Customer[] customers = (Customer[])Newtonsoft.Json.JsonConvert.DeserializeObject(customerjson, typeof(Customer[]));
            try
            {
                using (var dbContextTransaction = _context.Database.BeginTransaction())
                {
                    try
                    {
                        foreach (var v in customers)
                        {
                            v.CustomerID = 0;
                            _context.Customer.Add(v);
                            _context.SaveChanges();
                        }


                        dbContextTransaction.Commit();
                        return Json("Data are inserted in Flight Info");

                    }
                    catch (Exception ex)
                    {
                        string k = ex.Message;
                        dbContextTransaction.Rollback();
                        return Json("There is a Problem arise");
                    }

                }
            }
            catch (Exception ex)
            {
                string k = ex.Message;
            }
            return Json("There is a Problem arise");
        }



        // Sorting Paging Surching
        public async Task<IActionResult> Index(string sortOrder, string currentFilter, string searchString, int? pageNumber)
        {
            ViewData["CurrentSort"] = sortOrder;
            ViewData["NameSortParm"] = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            ViewData["DateSortParm"] = sortOrder == "Date" ? "date_desc" : "Date";

            if (searchString != null)
            {
                pageNumber = 1;
            }
            else
            {
                searchString = currentFilter;
            }

            ViewData["CurrentFilter"] = searchString;

            var customer = from s in _context.Customer
                           select s;
            if (!String.IsNullOrEmpty(searchString))
            {
                customer = customer.Where(s => s.CustomerName.Contains(searchString));
                //|| s.City.Contains(searchString));
            }
            switch (sortOrder)
            {
                case "name_desc":
                    customer = customer.OrderByDescending(s => s.CustomerName);
                    break;
                //case "Date":
                //    customer = customer.OrderBy(s => s.City);
                //    break;
                //case "date_desc":
                //    customer = customer.OrderByDescending(s => s.phone);
                //    break;
                default:
                    customer = customer.OrderBy(s => s.CustomerName);
                    break;
            }

            int pageSize = 3;
            return View(await PaginatedList<Customer>.CreateAsync(customer.AsNoTracking(), pageNumber ?? 1, pageSize));


            //return View(await _context.Customer.ToListAsync());
        }


        // Details View Part

        public ActionResult IndexSingle(int? CustomerId, int? OrderID)
        {
            var singleSelectList = new SelectedInfoModel();
            singleSelectList.Customer = _context.Customer.ToList();

            if (CustomerId == null)
            {
                byte[] custByte = HttpContext.Session.Get("CustomerID");

                if (custByte != null)
                {
                    string tempCustomerID = Encoding.ASCII.GetString(custByte);
                    CustomerId = Convert.ToInt32(tempCustomerID);

                    //CustomerID = Convert.ToInt32(Session["CustomerID"].ToString());
                }
            }

            if (CustomerId != null)
            {
                HttpContext.Session.SetString("CustomerID", CustomerId.ToString());

                singleSelectList.Orders = _context.Orders.Where(w => w.CoustomerID == CustomerId.Value).ToList();

            }

            if (OrderID != null)
            {
                singleSelectList.Product = _context.Orders.Include(i => i.product).Where(w => w.OrderID == OrderID.Value).Select(s => s.product).ToList();
            }

            

            return View(singleSelectList);
        }



        //Auto Created Part

        public CustomersController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Customers/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var customer = await _context.Customer
                .FirstOrDefaultAsync(m => m.CustomerID == id);
            if (customer == null)
            {
                return NotFound();
            }

            return View(customer);
        }

        // GET: Customers/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Customers/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("CustomerID,CustomerName,City,Country,phone")] Customer customer)
        {
            if (ModelState.IsValid)
            {
                _context.Add(customer);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(customer);
        }

        // GET: Customers/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var customer = await _context.Customer.FindAsync(id);
            if (customer == null)
            {
                return NotFound();
            }
            return View(customer);
        }

        // POST: Customers/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("CustomerID,CustomerName,City,Country,phone")] Customer customer)
        {
            if (id != customer.CustomerID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(customer);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!CustomerExists(customer.CustomerID))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(customer);
        }

        // GET: Customers/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var customer = await _context.Customer
                .FirstOrDefaultAsync(m => m.CustomerID == id);
            if (customer == null)
            {
                return NotFound();
            }

            return View(customer);
        }

        // POST: Customers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var customer = await _context.Customer.FindAsync(id);
            _context.Customer.Remove(customer);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool CustomerExists(int id)
        {
            return _context.Customer.Any(e => e.CustomerID == id);
        }
    }
}
