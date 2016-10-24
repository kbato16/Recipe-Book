<%@ Page Title="Home" Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content id="head" ContentPlaceHolderID="head" runat="server">

</asp:Content> 

<asp:Content ID="Home" ContentPlaceHolderID ="ContentPlaceHolder1" runat="server">
    <div class="panel panel-primary">
        <div class="panel-heading">About this Site</div>
        <div class="panel-body">
            <p>Welcome to you personal recipe book. In this recipe book you can manage and view you own home recipes. You can also search for new recipes and add them in your personalized menu.</p>
            <p>Bon Appétit !</p>
        </div>
    </div>
    
</asp:Content>