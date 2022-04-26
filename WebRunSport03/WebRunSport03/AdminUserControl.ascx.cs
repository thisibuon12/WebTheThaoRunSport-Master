using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebRunSport03
{
    public partial class AdminUserControl : System.Web.UI.UserControl
    {
        string url = HttpContext.Current.Request.Url.AbsoluteUri;
        SanPhamDataClassesDataContext db = new SanPhamDataClassesDataContext();
        public static List<SANPHAM> SP = new List<SANPHAM>();
        //show
        protected void Page_Load(object sender, EventArgs e)
        {
            var data = from q in db.SANPHAMs
                       select q;
            if(data !=null && data.Count()>0)
            {
                SP = data.ToList();
            }
        }

       
        void Clear()
        {
            txtIdSP.Text = "";
            txtTenSP.Text = "";
        }
        protected void Delete_Click(object sender, EventArgs e)
        {
            SANPHAM spp = new SANPHAM();
            var pt = from q in db.SANPHAMs
                     where q.TenSP == txtTenSP.Text
                     select q;
            if(pt != null && pt.Count()>0)
            {
                SANPHAM infoSP = pt.First();
                infoSP.IdSP = Convert.ToInt32(txtIdSP.Text);
                infoSP.TenSP = txtTenSP.Text;
                db.SANPHAMs.DeleteOnSubmit(infoSP);
                db.SubmitChanges();
                //LblSuccess.Text = "Bạn Đã Xóa Thành Công Sản Phẩm Này !!";
                Response.Write("<script LANGUAGE='JavaScript' >alert('Đã Xóa Thành Công Sản Phẩm Này✅, Đến Trang Chủ Xem ➠ ')</script>");
                Clear();
            }
        
        }

        protected void Insert_Click(object sender, EventArgs e)
        {
            SANPHAM spp = new SANPHAM();
            spp.IdSP = Convert.ToInt32(txtIdSP.Text);
            spp.TenSP = txtTenSP.Text;
            spp.LoaiSP = txtLoaiSP.Text;
            spp.GiaSP = txtGiaSP.Text;
            spp.MoTa = txtMoTa.Text;
            spp.NoiDung = txtNoiDung.Text;
            if (FileUpload1.HasFile)
            {
                spp.AnhSP = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("image\\") + FileUpload1.FileName);
            }
            else
            {
                spp.AnhSP = "";
            }
            if (spp.TenSP ==""||spp.LoaiSP=="")
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Thêm Sản Sản Phẩm Không Thành Công Kiểm Tra Lại!')</script>");
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Thêm Sản Sản Phẩm Thành Công✅, Đến Trang Chủ Xem ➠')</script>");
                db.SANPHAMs.InsertOnSubmit(spp);
                db.SubmitChanges();
            }
          
            
        }

        protected void Update_Click(object sender, EventArgs e)
       {
            var idsp = txtIdSP.Text; //Request.Form["txtIdSP"];
            var tensp =   txtTenSP.Text;
            var giasp =   txtGiaSP.Text;
            var loaisp = txtLoaiSP.Text;
            var dt = db.SANPHAMs.Where(x => x.IdSP == Convert.ToInt32(idsp)).SingleOrDefault();
            if (dt != null)
            {
                if (idsp == "" || tensp == "")
                {
                    //lblError.Text = "Cập Nhật Sản Phẩm Thất Bại!!";
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Lỗi Cập Nhật Sản Sản Phẩm Không Thành Công Kiểm Tra Lại!')</script>");
                }
                else
                {
                    dt.TenSP=tensp;
                    dt.GiaSP = giasp;
                    dt.LoaiSP = loaisp;
                    //LblSuccess.Text = "Cập Nhật Sản Phẩm Thành Công Nhé !!";
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Cập Nhật Sản Phẩm Thành Công✅, Đến Trang Chủ Xem ➠')</script>");
                    db.SubmitChanges();
                }
            }
        }
    }   
}