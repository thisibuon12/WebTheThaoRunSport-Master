<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChiTietSPUserControl.ascx.cs" Inherits="WebRunSport03.ChiTietSPUserControl" %>
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
                    <h1 class="display-2" style="color: white; font-weight: bold">Run-Sport
                    </h1>
                    <h3 style="color: white; font-weight: 300">Nơi bắt đầu của những huyền thoại
                    </h3>
                    <button
                        type="button"
                        class="btn btn-outline-light bg-light btn-lg">
                        <a href="trangchu.html">Mua Ngay Ở Đây</a>
                    </button>
                </div>
            </div>
            <div class="carousel-item">
                <img src="./image/slide2.jpg" alt="" />
                <div class="carousel-caption">
                    <h1 class="display-2" style="color: white; font-weight: bold">Run-Sport
                    </h1>
                    <h3 style="color: white; font-weight: 300">Nơi bắt đầu của những huyền thoại
                    </h3>
                    <button
                        type="button"
                        class="btn btn-outline-light bg-light btn-lg">
                        <a href="trangchu.html">Mua Ngay Ở Đây</a>
                    </button>
                </div>
            </div>
            <div class="carousel-item">
                <img src="./image/slide3.jpg" alt="" />
                <div class="carousel-caption">
                    <h1 class="display-2" style="color: white; font-weight: bold">Run-Sport
                    </h1>
                    <h3 style="color: white; font-weight: 300">Nơi bắt đầu của những huyền thoại
                    </h3>
                    <button
                        type="button"
                        class="btn btn-outline-light bg-light btn-lg">
                        <a href="trangchu.html">Mua Ngay Ở Đây</a>
                    </button>
                </div>
            </div>
            <div class="carousel-item">
                <img src="./image/slide4.jpg" alt="" />
                <div class="carousel-caption">
                    <h1 class="display-2" style="color: white; font-weight: bold">Run-Sport
                    </h1>
                    <h3 style="color: white; font-weight: 300">Nơi bắt đầu của những huyền thoại
                    </h3>
                    <button
                        type="button"
                        class="btn btn-outline-light bg-light btn-lg">
                        <a href="trangchu.html">Mua Ngay Ở Đây</a>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <p class="bg-primary text-white">
        <a href="trangchu.html" style="font-size: 20px; color: white">Trang Chủ
        </a>
        <i class="fa fa-angle-double-right fa-2x"></i>
        <a href="chitietsanpham.html" style="font-size: 20px; color: white">Chi Tiết Sản Phẩm
        </a>
    </p>
</div>
<!--  -->

<div class="container">
    <div class="row">
        <div class="col-4">

            <img src='<%="./image/"+infoSP.AnhSP%>' width="100%" height="auto" style="border: 1px solid #F0F8FF" />
            <div class="row mt-3">
                <div class="col-6 col-md-4">
                    <img src='<%="./image/"+infoSP.AnhSP%>' width="100" height="auto" style="border: 2px solid red" />
                </div>
                <div class="col-6 col-md-4">
                    <img src='<%="./image/"+infoSP.AnhSP%>' style="width: 100px; height: 100px;" alt="">
                </div>
                <div class="col-6 col-md-4">
                    <img src='<%="./image/"+infoSP.AnhSP%>' style="width: 100px; height: 100px;" alt="">
                </div>
            </div>
        </div>
        <div class="col-8">
            <%--<%foreach (var item in listSP1)
               {%>--%>
            <h1 class="bg-success text-center text-white" style="font-weight: bold; font-size: 30px;">Sản Phẩm</h1>
            <h2 style="color: red">Tên Sản Phẩm:</h2>
            <p class="text-left mb-3" style="font-size: 25px; font-weight: bold"><%=infoSP.TenSP %></p>
            <p class="text-left" style="color: red; font-size: 35px; font-weight: bold"><u>Giá: <%=infoSP.GiaSP %></u><sup>đ</sup></p>
            <p class="text-left" style="font-size: 20px; font-style: italic">Mô Tả: <%=infoSP.MoTa %></p>
            <p class="text-left" style="font-size: 20px; font-weight: bold; font-style: italic">Nội Dung: <%=infoSP.NoiDung %></p>
            <%--<%} %>--%>

            <div class="container-fluid mt-3">
                <form>
                    <div class="form-group">
                        <label for="myColor1">Chọn Màu: </label>
                        <input type="color" id="myColor1">
                    </div>
                </form>

                <div class="form-group">
                    <label>Chọn Size</label>
                    <select class="form-control" id="exampleFormControlSelect1">
                        <option>Chọn Size Của Bạn</option>
                        <option>-Size S</option>
                        <option>-Size M</option>
                        <option>-Size L</option>
                        <option>-Size XL</option>
                        <option>-Size XXL</option>
                    </select>
                </div>

                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                    <label class="form-check-label" for="inlineRadio1">Size 37</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                    <label class="form-check-label" for="inlineRadio1">Size 38</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                    <label class="form-check-label" for="inlineRadio1">Size 39</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                    <label class="form-check-label" for="inlineRadio1">Size 40</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                    <label class="form-check-label" for="inlineRadio1">Size 41</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                    <label class="form-check-label" for="inlineRadio1">Size 42</label>
                </div>
                <div class="row mt-3">
                    <div class="border border-dark">
                        <p class="text-left" style="font-weight: bold; font-size: 24px;"><i class="fa fa-check-circle" style="color: lime;"></i>Đã có mặt tại tất cả các chi nhánh cửa hàng của Run-Sport Trên Toàn Quốc</p>
                    </div>
                </div>
                <br />
                <br />
                <br />
                <p class="text-center" style="font-size:30px;font-weight:bold">Vui Lòng Điền Thông Tin Để Đặt Hàng</p>
                <asp:Label ID="Label1" runat="server" Text="Mã Số Sản Phẩm: "></asp:Label> &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:TextBox ID="TxtIdSP" runat="server" Height="24px" Width="521px"></asp:TextBox>
                

                <br />
                <br />
                <asp:Label ID="Label7" runat="server" Text="Số Lượng: "></asp:Label> &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="TxtSoLuong" runat="server" Height="24px" Width="516px"></asp:TextBox>
                

                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Họ Tên Khách Hàng: "></asp:Label> &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxtHoTen" runat="server" Height="24px" Width="516px"></asp:TextBox>
                

                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Địa Chỉ Email: "></asp:Label> &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxtEmail" runat="server" Height="24px" Width="521px"></asp:TextBox>
                

                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Địa Chỉ Giao Hàng: "></asp:Label> &nbsp;:&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:TextBox ID="TxtDiaChiGiao" runat="server" Height="24px" Width="517px"></asp:TextBox>
                

                <br />
                <br />
                <asp:Label ID="Label5" runat="server" Text="Số Điện Thoại: "></asp:Label> &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxtSDT" runat="server" Height="24px" Width="513px"></asp:TextBox>
                

                <br />
                <br />
                <asp:Label ID="Label6" runat="server" Text="Ghi Chú: "></asp:Label> &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxtGhiChu" runat="server" Height="72px" Width="513px"></asp:TextBox>
                

                <br />
                <br />
                

                <asp:Button ID="Btn"  class="btn btn-block btn-danger" style="font-size:25px;" runat="server" Text="Đặt Hàng" OnClick="Btn_Click" />
                <div class="row mt-3">
                   

                    <%--<div class="modal" id="myModal">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title">Run Sport Xin Cảm Ơn Quý Khách Đã Quan Tâm Mặt Hàng Này</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                </div>
                                <div class="container"></div>
                                <div class="modal-body" style="height: 500px">
                                    <!-- body form-->
                                     <form role="form"  id="form-map">
                                                        <p style="font-style: italic;">
                                                            Xin mời quý khách nhập đầy đủ thông tin cá nhân, để chúng tôi có thể hoàn tất thủ tục giao
                                                            àng và chuyển hàng đến quý khách nhanh nhất có thể.
                                                        </p>
                                                        <p style="font-style: italic;">
                                                            &nbsp;</p>
                                                        
                                                        <div class="form-group">
                                                            <label for="validationServer01" style="font-weight: bold;">
                                                                Họ Tên Khách Hàng:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>&nbsp;<asp:TextBox ID="txtHoten" runat="server" style="margin-top: 0px;" Width="364px"></asp:TextBox>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="validationServer02" style="font-weight: bold;">
                                                                Địa Chỉ Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>&nbsp;<asp:TextBox ID="txtEmail" runat="server" Width="363px"></asp:TextBox>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name" style="font-weight: bold;">
                                                                Địa Chỉ Giao Hàng:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>&nbsp;<asp:TextBox ID="txtDiaChi" runat="server" Width="363px" ></asp:TextBox>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name" style="font-weight: bold;">
                                                                Số Điện Thoại Liên Lạc:&nbsp;&nbsp;&nbsp;&nbsp; </label>&nbsp;<asp:TextBox ID="txtSDT" runat="server" Width="365px" ></asp:TextBox>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name" style="font-weight: bold;">
                                                                Ghi Chú:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>&nbsp;<asp:TextBox ID="TxtGhiChu" runat="server" Width="366px" ></asp:TextBox>
                                                        </div>
                                                        <div class="form-group row">
                                                            <div class="col-sm-10">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="gridCheck1">
                                                                    <label class="form-check-label" for="gridCheck1">
                                                                        Tôi đã đọc kỹ các đều khoản mua hàng
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <asp:Button ID="BtnDatHang" runat="server" Text="Đặt Hàng " Style="background-color: red; color: white; text-align:center"  class="btn btn-block btn-danger" OnClick="BtnDatHang_Click" />
                                                        <asp:Label ID="lblSuccess" runat="server" ForeColor="Green"></asp:Label>
                                                        <asp:Label ID="lblError" runat="server" ForeColor="red"></asp:Label>
                                                    </form>
                                    

                                    
                                   
                                    <!-- body form-->
                                </div>
                                <div class="modal-footer">
                                    <a href="#" data-dismiss="modal" class="btn bg-danger text-white">Đóng</a>
                                </div>
                            </div>
                        </div>
                    </div>
                   
                    <!--  -->
                </div>--%>
                    </div>
            </div>
        </div>
    </div>

    <div class="row mt-5">
        <div class="col-6">
            <button type="button" class="btn btn-success" style="font-size: 20px; font-weight: 600;">Đặc Trưng Sản Phẩm Của RunSport</button>
            <p class="text-left">Chất liệu GEO Lite Plus - 100% Polyester</p>
            <p class="text-left">Grand Sport áp dụng công nghệ độc quyền tiên tiến nhất - siêu nhẹ, thoáng khí mang lại sự thoải mái và linh hoạt khi vận động.</p>
            <p class="text-left">
                Thiết kế đặc biệt và kiểu dáng thời trang
            </p>
            <p class="text-left">Nổi bật nét cá tính riêng của khách hàng.</p>
            <p class="text-left">• Công nghệ Micro Lite độc quyền</p>
            <p class="text-left">• Siêu nhẹ, thoáng khí</p>
            <p class="text-left">
                • Thiết kế đặc biệt
            </p>
            <p class="text-left">• Kiểu dáng thời trang</p>
            <h3 class="text-center" style="color: red; font-weight: bold;">HƯỚNG DẪN BẢO QUẢN</h3>
            <p class="text-left">- Nhiệt độ giặt cho phép: dưới 40oC</p>
            <p class="text-left">- Không dùng bàn là trực tiếp lên các chi tiết in cao su.</p>
            <p class="text-left">- Tránh tiếp xúc với các chất khó tẩy rửa.</p>
            <p class="font-weight-bold">Sản phẩm được nhập khẩu bởi GRANDSPORT VIỆT NAM và phân phối chính hãng bởi RUNSPPORT.VN </p>
        </div>
        <div class="col-6">
            <button type="button" class="btn btn-warning" style="font-size: 20px; font-weight: 600;">Hướng Dẫn Khách Hàng Mua Hàng</button>
            <p class="font-italic">Rất cảm ơn quý khách hàng đã tin tưởng và lựa chọn mua hàng tại RUNSPORT.VN. Chúng tôi có những phương thức thanh toán nhanh chóng và tiện lợi để phục vụ quý khách hàng một cách tốt nhất. </p>
            <p class="font-weight-bold" style="color: red; font-size: larger;">ĐỐI VỚI KHÁCH HÀNG TẠI TP RẠCH GIÁ: </p>
            <h5 class="text-center">Cách 1: Mua Trực Tiếp Tại Cửa Hàng:</h5>
            <p class="font-weight-light">- Chi Nhánh 1 : 3/2 Tôn Đức Thắng, Phường Vĩnh Bảo,gần quảng trường Trần Quang Khải ( Có chỗ đậu xe hơi ) </p>
            <p class="font-weight-light">- Chi Nhánh 2 : Phan Thị Ràng, Phường An Hòa,gần Vòng Xoay Phan Thị Ràng ( Có chỗ đậu xe hơi ) </p>
            <p class="font-weight-light">- Chi Nhánh 3 : 128/a Nguyễn Trung Trực, Phường An Bình,gần công viên An Hòa ( Có chỗ đậu xe hơi ) </p>
            <h5 class="text-center">Cách 2: Thanh Toán COD (Nhận hàng-Thanh toán)</h5>
            <p class="text-left">Hình thức COD sẽ Có phí thu tiền hộ 30.000vnd của Công ty Chuyển Phát Nhanh Viettel Post, sẽ cộng chung vào giá trị của sản phẩm. </p>
            <p class="text-left" style="font-weight: bold;">Một lưu ý là Khách hàng phải Chắc chắn về Size nếu sử dụng hình thức này, Vì nhân viên ship hàng chỉ cho Khách hàng kiểm tra sản phẩm đúng mẫu, đúng Size khách đặt khi nhận hàng, Khách hàng không được thử vào chân khi chưa Thanh Toán.</p>
            <p class="text-left">Trong trường hợp sau khi thanh toán, khách hàng mang không vừa, Giữ Giày trong hộp và liên hệ chúng tôi để được tư vấn Đổi Size hoặc Đổi sang 1 sản phẩm khác. </p>
        </div>
    </div>
</div>
