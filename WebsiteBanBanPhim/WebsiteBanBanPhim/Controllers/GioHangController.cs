using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsiteBanBanPhim.Models;

namespace WebsiteBanBanPhim.Controllers
{
    public class GioHangController : Controller
    {
        WebBanBanPhimEntities db = new WebBanBanPhimEntities();
        public List<ItemGioHang> LayGioHang()
        {
            List<ItemGioHang> lstGioHang = Session["GioHang"] as List<ItemGioHang>;
            if (lstGioHang == null)
            {
                lstGioHang = new List<ItemGioHang>();
                Session["GioHang"] = lstGioHang;
            }
            return lstGioHang;
        }
        public double TinhTongSoLuong()
        {
            List<ItemGioHang> lstGioHang = Session["GioHang"] as List<ItemGioHang>;
            if (lstGioHang == null) return 0;
            return lstGioHang.Sum(x => x.SoLuongMua);
        }
        public decimal TinhTongTien()
        {
            List<ItemGioHang> lstGioHang = Session["GioHang"] as List<ItemGioHang>;
            if (lstGioHang == null) return 0;
            return lstGioHang.Sum(x => x.ThanhTien);
        }
        public ActionResult XemGioHang()
        {
            List<ItemGioHang> lstGH = LayGioHang();
            return View(lstGH);
        }
        [HttpPost]
        public ActionResult ThemGioHang(int maSP)
        {
            if(maSP == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            SanPham sp = db.SanPhams.Single(x => x.MaSP == maSP);
            if(sp==null)
            {
                return HttpNotFound();
            }
            ItemGioHang itemGH = new ItemGioHang(sp.MaSP);
            List<ItemGioHang> lstGH = LayGioHang();
            lstGH.Add(itemGH);
            return View();
        }
    }
}