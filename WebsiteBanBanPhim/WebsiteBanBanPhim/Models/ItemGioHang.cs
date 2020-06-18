using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebsiteBanBanPhim.Models
{
    public class ItemGioHang
    {
        public int MaSP { get; set; }
        public string TenSP { get; set; }
        public string HinhAnh { get; set; }
        public decimal DonGia { get; set; }
        public int SoLuongMua { get; set; }
        public decimal ThanhTien { get; set; }
        public ItemGioHang() { }
        public ItemGioHang(int maSP)
        {
            using(WebBanBanPhimEntities db=new WebBanBanPhimEntities())
            {
                this.MaSP = maSP;
                SanPham sp = db.SanPhams.SingleOrDefault(x => x.MaSP == maSP);
                this.TenSP = sp.TenSP;
                this.HinhAnh = sp.HinhAnh;
                this.SoLuongMua = 1;
                this.DonGia = decimal.Parse(sp.DonGia.Value.ToString());
                this.ThanhTien = this.SoLuongMua * this.DonGia;
            }
        }
        public ItemGioHang(int maSP,int soLuongMua)
        {
            using (WebBanBanPhimEntities db = new WebBanBanPhimEntities())
            {
                this.MaSP = maSP;
                SanPham sp = db.SanPhams.SingleOrDefault(x => x.MaSP == maSP);
                this.TenSP = sp.TenSP;
                this.HinhAnh = sp.HinhAnh;
                this.SoLuongMua = soLuongMua;
                this.DonGia = decimal.Parse(sp.DonGia.Value.ToString());
                this.ThanhTien = this.SoLuongMua * this.DonGia;
            }
        }
    }
}