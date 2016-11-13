<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Home.aspx" OnAuthenticate="Login1_Authenticate" LoginButtonStyle-CssClass="btn-info" LabelStyle-CssClass="input-group-addon" TextBoxStyle-CssClass ="input-sm" BorderStyle="Solid" BorderPadding="10">
    </asp:Login>

</asp:Content>

