<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TrangChuUserControl.ascx.cs" Inherits="WebRunSport03.TrangChuUserControl" %>
 <!-- Content -->
    <div id="content">
      <div class="dealhot"> 
          <a><b>&#128293 GIÀY HOT TUẦN NÀY &#128293</b></a>
      </div>
      <div class="spmain">
         <ul>
             <%foreach (var item in ListSP)
                 {%>
             <li>
                <a href='<%="ChiTietSPMasterPage.aspx?IdSP="+item.IdSP.ToString() %>'>
                <img src="image/<%=item.NoiDung%>" style="width:100%;height:260px;"   />
                <p class="tieude"><%=item.TenSP %></p>
                <p class="gia">Giá: <%=item.gia %> <sup>₫</sup></p>
                <p class="muahang">MUA HÀNG <i class="fa fa-shopping-cart"></i></p>
                </a>
            </li>
             <%} %>
         </ul>
     </div>
     <div class="clear"></div>
     
    <div class="spmn"> <i class="fa fa-list"></i>
        <a><b>ÁO MỚI NHẤT<b></a>
    </div>
    <div class="spmain">
        <ul>
              <%foreach (var item in ListSP1)
                 {%>
             <li>
                <a href='<%="ChiTietSPMasterPage.aspx?IdSP="+item.IdSP.ToString() %>'>
                <img src="image/<%=item.NoiDung%>" style="width:100%;height:260px;"  />
                <p class="tieude"><%=item.TenSP %></p>
                <p class="gia">Giá:<%=item.gia %> <sup>₫</sup></p>
                <p class="muahang">MUA HÀNG <i class="fa fa-shopping-cart"></i></p>
                </a>
            </li>
             <%} %>
        </ul>
    </div>
    <div class="clear"></div>

    <!-- Sản phẩm bán Chạy -->
    <div class="spbc"> <i class="fa fa-list"></i>
      <a><b>PHỤ KIỆN BÁN CHẠY<b></a>
  </div>
  <div class="spmain">
      <ul>
          <%foreach (var item in ListSP2)
                 {%>
             <li>
                <a href='<%="ChiTietSPMasterPage.aspx?IdSP="+item.IdSP.ToString() %>'>
                <img src="image/<%=item.NoiDung%>" style="width:100%;height:260px;"   />
                <p class="tieude"><%=item.TenSP %></p>
                <p class="gia">Giá: <%=item.gia %> <sup>₫</sup></p>
                <p class="muahang">MUA HÀNG <i class="fa fa-shopping-cart"></i></p>
                </a>
            </li>
             <%} %>
      </ul>
  </div>
  <div class="clear"></div>
 </div>
 <hr class="phanvung">
  <!-- End Content -->