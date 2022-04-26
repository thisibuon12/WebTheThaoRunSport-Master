<%@ Page Title="" Language="C#" MasterPageFile="~/TrangPhu.Master" AutoEventWireup="true" CodeBehind="LoginAdMasterPage.aspx.cs" Inherits="WebRunSport03.LoginAdMasterPage" %>

<%@ Register Src="~/LoginUserControl.ascx" TagPrefix="uc1" TagName="LoginUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:LoginUserControl runat="server" ID="LoginUserControl" />
</asp:Content>
