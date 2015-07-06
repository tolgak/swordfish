using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Swordfish.Contracts;

namespace Swordfish.Web.Controllers
{
  public class ProspectCustomerController : Controller
  {
    private IProspectRepository _repo;

    //public ProspectCustomerController()
    //{

    //}




    public ProspectCustomerController(IProspectRepository repo)
    {
      _repo = repo;
    }


    // GET: ProspectCustomer
    public ActionResult Index()
    {
      var p = _repo.GetById(3);
      return View();
    }
  }
}