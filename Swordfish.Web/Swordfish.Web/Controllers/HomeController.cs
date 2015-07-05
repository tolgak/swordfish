using System.Web.Mvc;

namespace Swordfish.Web.Controllers
{
  public class HomeController : Controller
  {
    public ActionResult Index()
    {
      return View();
    }

    public ActionResult Index2()
    {
      return View();
    }

    [Authorize]
    public ActionResult Dashboard()
    {
      return View();
    }

    public ActionResult About()
    {
      return View();
    }

    public ActionResult Contact()
    {
      return View();
    }
  }
}
