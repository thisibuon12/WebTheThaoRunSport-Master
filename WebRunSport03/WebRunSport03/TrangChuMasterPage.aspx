<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="TrangChuMasterPage.aspx.cs" Inherits="WebRunSport03.TrangChuMasterPage" %>

<%@ Register Src="~/TrangChuUserControl.ascx" TagPrefix="uc1" TagName="TrangChuUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:TrangChuUserControl runat="server" id="TrangChuUserControl" />
</asp:Content>
