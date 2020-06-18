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

        public ActionResult ThemGioHang(int MaSP, string strURL)
        {
            SanPham sp = db.SanPhams.SingleOrDefault(x => x.MaSP == MaSP);
            if (sp == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            List<ItemGioHang> lstGioHang = LayGioHang();
            ItemGioHang checkSP = lstGioHang.SingleOrDefault(x => x.MaSP == MaSP);
            if (checkSP != null)
            {
                if (sp.SoLuongTon <= checkSP.SoLuongMua)
                {
                    return Content("<script> alert(\"Sản phẩm đã hết hàng!\");</script>");
                }
                checkSP.SoLuongMua++;
                checkSP.ThanhTien = checkSP.SoLuongMua * checkSP.DonGia;
                return Redirect(strURL);
            }

            ItemGioHang newItem = new ItemGioHang(MaSP);

            if (sp.SoLuongTon <= newItem.SoLuongMua)
            {
                return Content("<script> alert(\"Sản phẩm đã hết hàng!\");</script>");
            }
            lstGioHang.Add(newItem);

            return Redirect(strURL);
        }
        public ActionResult XoaItemGH(int MaSP)
        {
            if (Session["GioHang"] == null)
            {
                return RedirectToAction("Index", "Home");
            }
            SanPham sp = db.SanPhams.SingleOrDefault(x => x.MaSP == MaSP);
            if (sp == null)
            {
                //Đương dẫn không hơp lệ
                Response.StatusCode = 404;
                return null;
            }
            List<ItemGioHang> lstGioHang = LayGioHang();
            ItemGioHang spCheck = lstGioHang.SingleOrDefault(x => x.MaSP == MaSP);
            if (spCheck == null)
            {
                return RedirectToAction("Index", "Home");
            }
            lstGioHang.Remove(spCheck);
            return RedirectToAction("XemGioHang");
        }
        public ActionResult SuaGioHang(int MaSP)
        {
            if (Session["GioHang"] == null)
            {
                return RedirectToAction("Index", "Home");
            }
            SanPham sp = db.SanPhams.SingleOrDefault(x => x.MaSP == MaSP);
            if (sp == null)
            {
                //Đương dẫn không hơp lệ
                Response.StatusCode = 404;
                return null;
            }
            List<ItemGioHang> lstGioHang = LayGioHang();

            ItemGioHang spCheck = lstGioHang.SingleOrDefault(x => x.MaSP == MaSP);

            if (spCheck == null)
            {
                return RedirectToAction("Index", "Home");
            }
            ViewBag.GioHang = lstGioHang;
            return View(spCheck);
        }

        [HttpPost]
        public ActionResult CapNhatGioHang(ItemGioHang itemGH)
        {
            SanPham spCheck = db.SanPhams.SingleOrDefault(x => x.MaSP == itemGH.MaSP);
            if (spCheck.SoLuongTon < itemGH.SoLuongMua)
            {
                return View("ThongBao");
            }
            List<ItemGioHang> lstGioHang = LayGioHang();
            ItemGioHang itemGHUpdate = lstGioHang.Find(x => x.MaSP == itemGH.MaSP);
            itemGHUpdate.SoLuongMua = itemGH.SoLuongMua;
            itemGHUpdate.ThanhTien = itemGHUpdate.SoLuongMua * itemGHUpdate.DonGia;
            return RedirectToAction("XemGioHang");
        }

    }
}