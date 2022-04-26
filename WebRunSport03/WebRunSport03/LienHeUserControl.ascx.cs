using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebRunSport03
{
    public partial class LienHeUserControl : System.Web.UI.UserControl
    {
        SanPhamDataClassesDataContext db = new SanPhamDataClassesDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Btnhoantat_Click(object sender, EventArgs e)
        {
            LIENHE lh = new LIENHE();
            lh.IdLienHe = Convert.ToInt32(txtIdLienHe.Text);
            //lh.TieuDe = txtTieuDe.text;
            lh.DiaChi = txtDiaChi.Text;
            lh.HoTen = txtHoTen.Text;
            lh.Email = txtEmail.Text;
            lh.GhiChu = txtGhiChu.Text;
            if(lh.HoTen =="" || lh.Email=="")
            {
                lblError.Text = "Thêm Thất Bại!";
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Gửi Liên Hệ Thành Công Cảm Ơn Quý Khách ✅ ')</script>");
                //lblSuccess.Text = "Gửi Thông Tin Liên Hệ Thành Công!! Cảm Ơn Quý Khách";
                db.LIENHEs.InsertOnSubmit(lh);
                db.SubmitChanges();
            }
        }
    }
}