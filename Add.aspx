<%@ Page Title="Add" Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Add.aspx.cs" Inherits="Add" %>

<asp:Content ID="Add" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="panel panel-primary">
        <div class="panel-heading">Provide Recipe Details</div>

        <div class="container form-group">
            <asp:Label class="control-label" ID="RecipeNameLabel" runat="server" Text="Recipe Name"></asp:Label>
            <asp:TextBox class="form-control" ID="RecipeNameText" runat="server"></asp:TextBox>

            <asp:Label class="control-label" ID="SubmitByLabel" runat="server" Text="Submitted By"></asp:Label>
            <asp:TextBox class="form-control" ID="SubmittedBy" runat="server"></asp:TextBox>

            <asp:Label class="control-label" ID="CategoryLabel" runat="server" Text="Category"></asp:Label>
            <asp:DropDownList class="form-control" ID="Category" runat="server"></asp:DropDownList>
        </div>
    </div>



</asp:Content>
