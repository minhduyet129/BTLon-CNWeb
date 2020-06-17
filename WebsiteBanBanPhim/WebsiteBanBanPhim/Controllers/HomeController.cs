using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsiteBanBanPhim.Models;

namespace WebsiteBanBanPhim.Controllers
{
    public class HomeController : Controller
    {
        WebBanBanPhimEntities db = new WebBanBanPhimEntities();

        public ActionResult Index()
        {
            ViewBag.BanPhimGameThu = db.SanPhams.Where(x => x.MaLoaiSP == 1 && x.DaXoa==false);
            ViewBag.BanPhimLapTop = db.SanPhams.Where(x => x.MaLoaiSP == 2 && x.DaXoa == false);
            ViewBag.BanPhimMini = db.SanPhams.Where(x => x.MaLoaiSP == 3 && x.DaXoa == false);
            return View();
        }
        [ChildActionOnly]

        public ActionResult SanPhamPartial()
        {
            var lstSanPham = db.SanPhams;
            return View(lstSanPham);
        }
    }
}