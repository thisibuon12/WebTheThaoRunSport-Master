<%@ Page Title="" Language="C#" MasterPageFile="~/TrangPhu.Master" AutoEventWireup="true" CodeBehind="ChiTietSPMasterPage.aspx.cs" Inherits="WebRunSport03.ChiTietSPMasterPage" %>

<%@ Register Src="~/ChiTietSPUserControl.ascx" TagPrefix="uc1" TagName="ChiTietSPUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ChiTietSPUserControl runat="server" id="ChiTietSPUserControl" />
</asp:Content>
