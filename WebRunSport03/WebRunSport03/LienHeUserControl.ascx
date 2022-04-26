<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LienHeUserControl.ascx.cs" Inherits="WebRunSport03.LienHeUserControl" %>
<!-- carousel -->
    <div class="container">
      <div id="slide" class="carousel slide" data-ride="carousel">
        <ul class="carousel-indicators">
          <li data-target="#slides" data-slide-to="0" class="active"></li>
          <li data-target="#slides" data-slide-to="1"></li>
          <li data-target="#slides" data-slide-to="2"></li>
          <li data-target="#slides" data-slide-to="3"></li>
        </ul>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="./image/slide1.jpg" alt="" />
            <div class="carousel-caption">
              <h1 class="display-2" style="color: white; font-weight: bold">
                Run-Sport
              </h1>
              <h3 style="color: white; font-weight: 300">
                Nơi bắt đầu của những huyền thoại
              </h3>
              <button
                type="button"
                class="btn btn-outline-light bg-light btn-lg"
              >
                <a href="TrangChuMasterPage.aspx">Mua Ngay Ở Đây</a>
              </button>
            </div>
          </div>
          <div class="carousel-item">
            <img src="./image/slide2.jpg" alt="" />
            <div class="carousel-caption">
              <h1 class="display-2" style="color: white; font-weight: bold">
                Run-Sport
              </h1>
              <h3 style="color: white; font-weight: 300">
                Nơi bắt đầu của những huyền thoại
              </h3>
              <button
                type="button"
                class="btn btn-outline-light bg-light btn-lg"
              >
                <a href="trangchu.html">Mua Ngay Ở Đây</a>
              </button>
            </div>
          </div>
          <div class="carousel-item">
            <img src="./image/slide3.jpg" alt="" />
            <div class="carousel-caption">
              <h1 class="display-2" style="color: white; font-weight: bold">
                Run-Sport
              </h1>
              <h3 style="color: white; font-weight: 300">
                Nơi bắt đầu của những huyền thoại
              </h3>
              <button
                type="button"
                class="btn btn-outline-light bg-light btn-lg"
              >
                <a href="trangchu.html">Mua Ngay Ở Đây</a>
              </button>
            </div>
          </div>
          <div class="carousel-item">
            <img src="./image/slide4.jpg" alt="" />
            <div class="carousel-caption">
              <h1 class="display-2" style="color: white; font-weight: bold">
                Run-Sport
              </h1>
              <h3 style="color: white; font-weight: 300">
                Nơi bắt đầu của những huyền thoại
              </h3>
              <button
                type="button"
                class="btn btn-outline-light bg-light btn-lg"
              >
                <a href="trangchu.html">Mua Ngay Ở Đây</a>
              </button>
            </div>
          </div>
        </div>
      </div>
      <p class="bg-primary text-white">
        <a href='<%="TrangChuMasterPage.aspx"%>' style="font-size: 20px; color: white"
          >Trang Chủ
        </a>
        <i class="fa fa-angle-double-right fa-2x"></i>
        <a href='<%="GioiThieuMasterPage.aspx"%>' style="font-size: 20px; color: white"
          >Liên Hệ
        </a>
      </p>
    </div>
    <!-- Thông Tin Liên Hệ -->
    <div class="container">
      <div class="row">
        <div class="col-6">
          <p
            class="bg-success text-white"
            style="text-align: center; font-size: 30px; font-weight: bold"
          >
            THÔNG TIN LIÊN HỆ
          </p>
            <div class="form-group">
              <asp:Label runat="server" Text="Label"> Địa Chỉ Liên Hệ :&nbsp </asp:Label>
              <asp:TextBox ID="txtDiaChi" runat="server" Width="388px"></asp:TextBox>
                <br />
          </div>
          <div class="form-group">
              <asp:Label  runat="server" Text="Label">Họ Và Tên :</asp:Label>
              &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp <asp:TextBox ID="txtHoTen" runat="server" Width="389px"></asp:TextBox>
              <br />
          </div>
          <div class="form-group">
              <asp:Label runat="server" Text="Label"> Địa Chỉ Email :</asp:Label>
             &nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtEmail" runat="server" Width="389px"></asp:TextBox>
          </div>
          <div class="form-group">
            <label>Giới Tính</label>
            <select class="form-control">
              <option value="#">Chọn Giới Tính</option>
              <option value="male">Nữ</option>
              <option value="female">Nam</option>
              <option value="other">Khác</option>
            </select>
          </div>
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="inputCity">Thành Phố</label>
              <input type="text" class="form-control" id="inputCity" />
            </div>
            <div class="form-group col-md-4">
              <label for="inputState">Quận ,Bang</label>
              <select id="inputState" class="form-control">
                <option selected>Khác</option>
                <option>...</option>
              </select>
            </div>
            <div class="form-group col-md-2">
              <label for="inputZip">Mã Zip</label>
              <input type="text" class="form-control" id="inputZip" />
            </div>
          </div>
          <div class="form-group">
              <asp:Label runat="server" Text="Label">Tiêu Đề :</asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtTieuDe" runat="server" Width="404px"></asp:TextBox>
              <br />
          </div>
          <div class="form-group">
              <asp:Label runat="server" Text="Label">Ghi Chú :</asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtGhiChu" runat="server" Width="404px"></asp:TextBox>
           
              <br />
           
              <br />
              <asp:Label runat="server" Text="Label" ID="Label1">Mã Liên Hệ :</asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtIdLienHe" runat="server" Width="87px"></asp:TextBox>
           
              <br />
           
          </div>
          <div class="form-group">
            <label>Upload File</label>
            <input type="file" />
            <p class="help-block">*Cho phép tệp .jpg và .png*</p>
          </div>
          <div class="checkbox">
            <label>
              <input type="checkbox" /> Tôi Đã Đồng Ý Với Các Đều Khoản Bảo Mật
            </label>
          </div>
            <asp:Label ID="lblSuccess" runat="server" ForeColor="Green"></asp:Label>
        <asp:Label ID="lblError" runat="server" ForeColor="red"></asp:Label>
           <asp:Button ID="Btnhoantat" runat="server" Text="Hoàn Tất" class="btn btn-danger" OnClick="Btnhoantat_Click"/>
        </div>
        <div class="col-6">
          <div class="mapouter">
            <div class="gmap_canvas">
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d292.0248719007774!2d105.08026372107138!3d10.016635877319587!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x459a5172365f72bf!2sShop%2068%20-%20Th%E1%BB%83%20Thao!5e0!3m2!1svi!2s!4v1606200376237!5m2!1svi!2s" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
            </div>
            <style>
              .mapouter {
                position: relative;
                text-align: right;
                height: 500px;
                width: 600px;
              }
              .gmap_canvas {
                overflow: hidden;
                background: none !important;
                height: 500px;
                width: 600px;
              }
            </style>
          </div>
          <p class="bg-danger text-white" style="font-weight: bold">
            Nhận Chỉ Đường <i class="fa fa-compass" style="color: white;font-size: 20px;"></i>
          </p>
        </div>
      </div>
    </div>
