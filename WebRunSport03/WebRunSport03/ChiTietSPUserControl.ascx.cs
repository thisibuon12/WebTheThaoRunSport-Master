using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebRunSport03
{

    public partial class ChiTietSPUserControl : System.Web.UI.UserControl
    {

        SanPhamDataClassesDataContext db = new SanPhamDataClassesDataContext();
        public static List<sanpham> listSP = new List<sanpham>();
        public static SANPHAM infoSP = new SANPHAM();
        public static List<sanpham> listSP1 = new List<sanpham>();
        public static SANPHAM tengia = new SANPHAM();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            int IdSP = Convert.ToInt32(Request.QueryString["IDSP"]);
            var data = from q in db.SANPHAMs
                       where q.IdSP == IdSP
                       select q;
            if (data != null && data.Count() > 0)
            {
                infoSP = data.First();
            }
        }

        protected void BtnDatHang_Click(object sender, EventArgs e)
        {
           
        }

        protected void Btn_Click(object sender, EventArgs e)
        {
            DONHANG dh = new DONHANG();
            dh.IdSP =Convert.ToInt32(TxtIdSP.Text);
            dh.SoLuong = TxtSoLuong.Text;
            dh.HoTen = TxtHoTen.Text;
            dh.Email = TxtEmail.Text;
            dh.DiaChiGiao = TxtDiaChiGiao.Text;
            dh.SDT = TxtSDT.Text;
            dh.GhiChu = TxtGhiChu.Text;
            if (dh.HoTen == "" || dh.Email == "")
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Đặt Hàng Không Thành Công!')</script>");
            }
            else
            {
                //lblSuccess.Text = " Đặt Hàng Thành Công !! Cảm ơn quý khách đã đặt hàng tại Run-Sport ";
                Response.Write("<script LANGUAGE='JavaScript' >alert('Đặt Hàng Thành Công ✅ Chúng Tôi Sẽ Sớm Liên Hệ Với Quý Khách!💓')</script>");
                db.DONHANGs.InsertOnSubmit(dh);
                db.SubmitChanges();
            }
        }
    }
}