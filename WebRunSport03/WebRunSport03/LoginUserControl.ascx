<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoginUserControl.ascx.cs" Inherits="WebRunSport03.LoginUserControl" %>
<body>

<div class="container">
      <div class="row">
         <div class="col-md-6 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="150px" src="image/kien.jpg"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Admin Login</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label> Admin Tài Khoản</label>
                        <div class="form-group">
                            <asp:TextBox ID="txtusername" class="btn-block" runat="server"></asp:TextBox>                 
                        </div>
                        <label>Mật Khẩu</label>
                        <div class="form-group">
                            <asp:TextBox ID="txtpassword" class="btn-block" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Button ID="Button1"  class="btn btn-success btn-block btn-lg" runat="server" Text="Đăng Nhập Admin" OnClick="Button1_Click" />
                        </div>
                     </div>
                  </div>
               </div>
            </div>
          <a href='<%="TrangChuMasterPage.aspx"%>'>Trở Về Trang Chủ</a><br><br>
         </div>
      </div>
   </div>
    </body> 