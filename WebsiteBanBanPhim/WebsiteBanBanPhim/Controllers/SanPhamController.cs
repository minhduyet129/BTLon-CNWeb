using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsiteBanBanPhim.Models;
using PagedList;
using PagedList.Mvc;
namespace WebsiteBanBanPhim.Controllers
{
    public class SanPhamController : Controller
    {
        WebBanBanPhimEntities db = new WebBanBanPhimEntities();
        public ActionResult DanhSachSanPham(int? page)
        {
            var lstSanPham = db.SanPhams.OrderBy(x => x.MaSP).ToPagedList(page ?? 1, 12);
            return View(lstSanPham);
        }
        [ChildActionOnly]
        public ActionResult DanhMucSanPhamPartial()
        {
            LoaiSanPham lsp = new LoaiSanPham();
            ViewBag.lstLoaiSP = db.LoaiSanPhams;
            return View(lsp);
        }
    }
}