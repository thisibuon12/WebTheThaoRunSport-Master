<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AdminUserControl.ascx.cs" Inherits="WebRunSport03.AdminUserControl" %>

<div id="chitiet">
<h1 style="text-align:center">Admin-Quản Lý Sản Phẩm</h1><br/> <br/>
    <form>
- Nhập Id Sản Phẩm (*) :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtIdSP" runat="server" Style="width:234px;height:28px;"></asp:TextBox> <span style="color:crimson"> &nbsp;(Kiểu Int vd:1,2,3,..)</span> <br/> <br/>
- Nhập Tên Sản Phẩm (*):&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtTenSP" runat="server" style="width: 230px;height: 26px;" ></asp:TextBox> <br/> <br/>
- Nhập Loại Sản Phẩm (*):&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtLoaiSP" runat="server" Height="27px" Width="232px"></asp:TextBox><span style="color:crimson"> &nbsp;(Loại: Giay,Ao,Phukien) </span><br/> <br/>
- Nhập Giá Sản Phẩm:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtGiaSP" runat="server" style="width: 234px;height: 27px;"></asp:TextBox ><span style="color:crimson">&nbsp;(Giá Tiền vd: 2,000,000,..)  </span> <br/> <br/>
- Nhập Mô Tả Sản Phẩm:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtMoTa" runat="server" Height="27px" Width="236px"></asp:TextBox><span style="color:crimson">&nbsp;(Nhập Mô Tả SP vd: Xuất xứ Châu Phi,...) </span>  <br/> <br/>
- Nhập Nội Dung Sản Phẩm:&nbsp;&nbsp; <asp:TextBox ID="txtNoiDung" runat="server" Height="28px" Width="235px"></asp:TextBox><span style="color:crimson">&nbsp;(Nội Dung vd:Đây là Sp giới hạn ....) </span> <br/> <br/>
- Ảnh Sản Phẩm: <asp:FileUpload ID="FileUpload1" runat="server" /><span style="color:crimson"> &nbsp;(Hình ảnh vd: abcd.jpg,...) </span> <br/> <br/>
<br/> <br/> <br/>
<asp:Label ID="LblSuccess" runat="server" ForeColor="Green" style="font-weight:bold"></asp:Label>
<asp:Label ID="lblError" runat="server" ForeColor="red" style="font-weight:bold"></asp:Label>

<asp:Button ID="Delete" runat="server" Text="Xóa Sản Phẩm" style="width:120px;height:50px;background:red;color:white;font-size:15px;" OnClick="Delete_Click" />
<asp:Button ID="Insert" runat="server" Text="Thêm Sản Phẩm" style="width:120px;height:50px;background:green;color:white;font-size:15px;" OnClick="Insert_Click" />
<asp:Button ID="Update" runat="server" Text="Sửa Sản Phẩm" style="width:120px;height:50px;background:blue;color:white;font-size:15px;" OnClick="Update_Click" />
</form>
<br/> <br/> 
<h1 style="color:white;font-weight:bold; background:white;"><a href='<%="TrangChuMasterPage.aspx"%>'>Đến Xem Trang Chủ</a></h1>

<h1 style="text-align:center;color:red;font-weight:bold">Xem Bảng Sản Phẩm</h1>
<p>
    &nbsp;</p>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdSP" DataSourceID="SqlDataSource1" Width="920px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
    <Columns>
        <asp:BoundField DataField="IdSP" HeaderText="Id Sản Phẩm" ReadOnly="True" SortExpression="IdSP" />
        <asp:BoundField DataField="TenSP" HeaderText="Tên Sản Phẩm" SortExpression="TenSP" />
        <asp:BoundField DataField="AnhSP" HeaderText="Ảnh Sản Phẩm" SortExpression="AnhSP" />
        <asp:BoundField DataField="MoTa" HeaderText="Mô Tả" SortExpression="MoTa" />
        <asp:BoundField DataField="NoiDung" HeaderText="Nội Dung" SortExpression="NoiDung" />
        <asp:BoundField DataField="GiaSP" HeaderText="Giá Sản Phẩm" SortExpression="GiaSP" />
        <asp:BoundField DataField="LoaiSP" HeaderText="Loại Sản Phẩm" SortExpression="LoaiSP" />
        <asp:BoundField DataField="IdDanhMuc" HeaderText="Id Danh Mục " SortExpression="IdDanhMuc" />
    </Columns>
    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
    <RowStyle BackColor="White" ForeColor="#003399" />
    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    <SortedAscendingCellStyle BackColor="#EDF6F6" />
    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
    <SortedDescendingCellStyle BackColor="#D6DFDF" />
    <SortedDescendingHeaderStyle BackColor="#002876" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RunSportConnectionString2 %>" DeleteCommand="DELETE FROM [SANPHAM] WHERE [IdSP] = @IdSP" InsertCommand="INSERT INTO [SANPHAM] ([IdSP], [TenSP], [AnhSP], [MoTa], [NoiDung], [GiaSP], [LoaiSP], [IdDanhMuc]) VALUES (@IdSP, @TenSP, @AnhSP, @MoTa, @NoiDung, @GiaSP, @LoaiSP, @IdDanhMuc)" SelectCommand="SELECT * FROM [SANPHAM]" UpdateCommand="UPDATE [SANPHAM] SET [TenSP] = @TenSP, [AnhSP] = @AnhSP, [MoTa] = @MoTa, [NoiDung] = @NoiDung, [GiaSP] = @GiaSP, [LoaiSP] = @LoaiSP, [IdDanhMuc] = @IdDanhMuc WHERE [IdSP] = @IdSP">
    <DeleteParameters>
        <asp:Parameter Name="IdSP" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="IdSP" Type="Int32" />
        <asp:Parameter Name="TenSP" Type="String" />
        <asp:Parameter Name="AnhSP" Type="String" />
        <asp:Parameter Name="MoTa" Type="String" />
        <asp:Parameter Name="NoiDung" Type="String" />
        <asp:Parameter Name="GiaSP" Type="String" />
        <asp:Parameter Name="LoaiSP" Type="String" />
        <asp:Parameter Name="IdDanhMuc" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="TenSP" Type="String" />
        <asp:Parameter Name="AnhSP" Type="String" />
        <asp:Parameter Name="MoTa" Type="String" />
        <asp:Parameter Name="NoiDung" Type="String" />
        <asp:Parameter Name="GiaSP" Type="String" />
        <asp:Parameter Name="LoaiSP" Type="String" />
        <asp:Parameter Name="IdDanhMuc" Type="Int32" />
        <asp:Parameter Name="IdSP" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br/><br/>
<h1 style="text-align:center;color:red;font-weight:bold">Xem Bảng Liên Hệ</h1>
<p>
    &nbsp;</p>
<p>
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdLienHe" DataSourceID="SqlDataSource5" Width="866px" ForeColor="Black" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
        <Columns>
            <asp:BoundField DataField="IdLienHe" HeaderText="Id Liên Hệ" ReadOnly="True" SortExpression="IdLienHe" />
            <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ" SortExpression="DiaChi" />
            <asp:BoundField DataField="SDT" HeaderText="Số ĐT" SortExpression="SDT" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="HoTen" HeaderText="Tên Khách Hàng" SortExpression="HoTen" />
            <asp:BoundField DataField="GhiChu" HeaderText="Ghi Chú" SortExpression="GhiChu" />
            <asp:BoundField DataField="TieuDe" HeaderText="Tiêu Đề" SortExpression="TieuDe" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:RunSportConnectionString5 %>" SelectCommand="SELECT * FROM [LIENHE]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RunSportConnectionString3 %>" DeleteCommand="DELETE FROM [LIENHE] WHERE [IdLienHe] = @IdLienHe" InsertCommand="INSERT INTO [LIENHE] ([IdLienHe], [DiaChi], [SDT], [Email], [HoTen], [GhiChu], [TieuDe]) VALUES (@IdLienHe, @DiaChi, @SDT, @Email, @HoTen, @GhiChu, @TieuDe)" SelectCommand="SELECT * FROM [LIENHE]" UpdateCommand="UPDATE [LIENHE] SET [DiaChi] = @DiaChi, [SDT] = @SDT, [Email] = @Email, [HoTen] = @HoTen, [GhiChu] = @GhiChu, [TieuDe] = @TieuDe WHERE [IdLienHe] = @IdLienHe">
        <DeleteParameters>
            <asp:Parameter Name="IdLienHe" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IdLienHe" Type="Int32" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="SDT" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="HoTen" Type="String" />
            <asp:Parameter Name="GhiChu" Type="String" />
            <asp:Parameter Name="TieuDe" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="SDT" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="HoTen" Type="String" />
            <asp:Parameter Name="GhiChu" Type="String" />
            <asp:Parameter Name="TieuDe" Type="String" />
            <asp:Parameter Name="IdLienHe" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
</div>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p style="text-align:center;font-size:30px;font-weight:bold;color:red">
    Xem Thông Tin Đơn Hàng Đã Đặt</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="IdDonHang" DataSourceID="SqlDataSource4" Width="841px">
        <Columns>
            <asp:BoundField DataField="IdDonHang" HeaderText="Id Đơn Hàng" InsertVisible="False" ReadOnly="True" SortExpression="IdDonHang" />
            <asp:BoundField DataField="IdSP" HeaderText="Id Sản Phẩm" SortExpression="IdSP" />
            <asp:BoundField DataField="Email" HeaderText="Địa Chỉ Email" SortExpression="Email" />
            <asp:BoundField DataField="DiaChiGiao" HeaderText="Địa Chỉ Giao " SortExpression="DiaChiGiao" />
            <asp:BoundField DataField="SDT" HeaderText="Số ĐT" SortExpression="SDT" />
            <asp:BoundField DataField="HoTen" HeaderText="Họ Tên" SortExpression="HoTen" />
            <asp:BoundField DataField="GhiChu" HeaderText="Ghi Chú" SortExpression="GhiChu" />
            <asp:BoundField DataField="SoLuong" HeaderText="Số Lượng" SortExpression="SoLuong" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#000066" HorizontalAlign="Left" BackColor="White" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:RunSportConnectionString4 %>" DeleteCommand="DELETE FROM [DONHANG] WHERE [IdDonHang] = @IdDonHang" InsertCommand="INSERT INTO [DONHANG] ([IdSP], [Email], [DiaChiGiao], [SDT], [HoTen], [GhiChu], [SoLuong]) VALUES (@IdSP, @Email, @DiaChiGiao, @SDT, @HoTen, @GhiChu, @SoLuong)" SelectCommand="SELECT * FROM [DONHANG]" UpdateCommand="UPDATE [DONHANG] SET [IdSP] = @IdSP, [Email] = @Email, [DiaChiGiao] = @DiaChiGiao, [SDT] = @SDT, [HoTen] = @HoTen, [GhiChu] = @GhiChu, [SoLuong] = @SoLuong WHERE [IdDonHang] = @IdDonHang">
        <DeleteParameters>
            <asp:Parameter Name="IdDonHang" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IdSP" Type="Int32" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="DiaChiGiao" Type="String" />
            <asp:Parameter Name="SDT" Type="String" />
            <asp:Parameter Name="HoTen" Type="String" />
            <asp:Parameter Name="GhiChu" Type="String" />
            <asp:Parameter Name="SoLuong" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="IdSP" Type="Int32" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="DiaChiGiao" Type="String" />
            <asp:Parameter Name="SDT" Type="String" />
            <asp:Parameter Name="HoTen" Type="String" />
            <asp:Parameter Name="GhiChu" Type="String" />
            <asp:Parameter Name="SoLuong" Type="String" />
            <asp:Parameter Name="IdDonHang" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RunSportConnectionString3 %>" DeleteCommand="DELETE FROM [DONHANG] WHERE [IdDonHang] = @IdDonHang" InsertCommand="INSERT INTO [DONHANG] ([IdSP], [Email], [DiaChiGiao], [SDT], [HoTen], [GhiChu]) VALUES (@IdSP, @Email, @DiaChiGiao, @SDT, @HoTen, @GhiChu)" SelectCommand="SELECT * FROM [DONHANG]" UpdateCommand="UPDATE [DONHANG] SET [IdSP] = @IdSP, [Email] = @Email, [DiaChiGiao] = @DiaChiGiao, [SDT] = @SDT, [HoTen] = @HoTen, [GhiChu] = @GhiChu WHERE [IdDonHang] = @IdDonHang">
        <DeleteParameters>
            <asp:Parameter Name="IdDonHang" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IdSP" Type="Int32" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="DiaChiGiao" Type="String" />
            <asp:Parameter Name="SDT" Type="String" />
            <asp:Parameter Name="HoTen" Type="String" />
            <asp:Parameter Name="GhiChu" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="IdSP" Type="Int32" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="DiaChiGiao" Type="String" />
            <asp:Parameter Name="SDT" Type="String" />
            <asp:Parameter Name="HoTen" Type="String" />
            <asp:Parameter Name="GhiChu" Type="String" />
            <asp:Parameter Name="IdDonHang" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>

