using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebRunSport03
{
    public class sanpham
    {
        public int IdSP { get; set; }
        public string TenSP { get; set; }
        public string NoiDung { get; set; }
        public string gia { get; set; }
    }
    public partial class TrangChuUserControl : System.Web.UI.UserControl
    {
        SanPhamDataClassesDataContext db = new SanPhamDataClassesDataContext();
        public static List<sanpham> ListSP = new List<sanpham>();
        public static List<sanpham> ListSP1 = new List<sanpham>();
        public static List<sanpham> ListSP2 = new List<sanpham>();
        public static SANPHAM infoSP = new SANPHAM();
        public string loaiG = "Giay";
        public string loaiA = "Ao";
        public string loaiPK = "PhuKien";
        protected void Page_Load(object sender, EventArgs e)
        {
            //    int idSP = Convert.ToInt32(Request.QueryString["IDSP"]);
            var data = from q in db.SANPHAMs
                       where q.LoaiSP == loaiG
                       select new sanpham
                       {
                           IdSP = q.IdSP,
                           TenSP = q.TenSP,
                           NoiDung = q.AnhSP,
                           gia =q.GiaSP,
                       };
            if(data != null && data.Count()>0)
            {
                ListSP = data.ToList<sanpham>();
            }
            showao();
            showphukien();
        }  public void showao(){
            var data = from q in db.SANPHAMs
                       where q.LoaiSP == loaiA
                       select new sanpham
                       {
                           IdSP = q.IdSP,
                           TenSP = q.TenSP,
                           NoiDung = q.AnhSP,
                           gia = q.GiaSP,
                       };
            if (data != null && data.Count() > 0)
            {
                ListSP1 = data.ToList<sanpham>();
            }
        }
        public void showphukien()
        {
            var data = from q in db.SANPHAMs
                       where q.LoaiSP == loaiPK
                       select new sanpham
                       {
                           IdSP = q.IdSP,
                           TenSP = q.TenSP,
                           NoiDung = q.AnhSP,
                           gia = q.GiaSP,
                       };
            if (data != null && data.Count() > 0)
            {
                ListSP2 = data.ToList<sanpham>();
            }
        }
        
   
     

       
    }
}