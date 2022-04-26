<%@ Page Title="" Language="C#" MasterPageFile="~/TrangPhu.Master" AutoEventWireup="true" CodeBehind="GioiThieuMasterPage.aspx.cs" Inherits="WebRunSport03.GioiThieuMasterPage" %>

<%@ Register Src="~/GioiThieuUserControl.ascx" TagPrefix="uc1" TagName="GioiThieuUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:GioiThieuUserControl runat="server" id="GioiThieuUserControl" />
</asp:Content>
