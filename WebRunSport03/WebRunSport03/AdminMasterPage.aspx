<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminMasterPage.aspx.cs" Inherits="WebRunSport03.AdminMasterPage1" %>

<%@ Register Src="~/AdminUserControl.ascx" TagPrefix="uc1" TagName="AdminUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:AdminUserControl runat="server" id="AdminUserControl" />
</asp:Content>
