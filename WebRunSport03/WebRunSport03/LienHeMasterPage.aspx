<%@ Page Title="" Language="C#" MasterPageFile="~/TrangPhu.Master" AutoEventWireup="true" CodeBehind="LienHeMasterPage.aspx.cs" Inherits="WebRunSport03.LienHeMasterPage" %>

<%@ Register Src="~/LienHeUserControl.ascx" TagPrefix="uc1" TagName="LienHeUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:LienHeUserControl runat="server" id="LienHeUserControl" />
</asp:Content>
