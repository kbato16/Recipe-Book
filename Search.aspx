﻿<%@ Page Title="Search" Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Search" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-success">
        <div class="panel-heading">Provide Recipe Details</div>

        <div class="container form-group">
            <asp:Label class="control-label" ID="RecipeNameLabel" runat="server" Text="Recipe Name"></asp:Label>
            <asp:TextBox class="form-control" ID="RecipeNameText" runat="server"></asp:TextBox>

            <asp:Label class="control-label" ID="SubmitByLabel" runat="server" Text="Submitted By"></asp:Label>
            <asp:TextBox class="form-control" ID="SubmittedBy" runat="server"></asp:TextBox>

            <asp:Label class="control-label" ID="CategoryLabel" runat="server" Text="Category"></asp:Label>
            <div class="container-fluid well">
                <asp:CheckBoxList BackColor="Transparent" CssClass="CategoryList" RepeatLayout="Table" RepeatColumns="3" runat="server">
                    <asp:ListItem>Breakfast</asp:ListItem>
                    <asp:ListItem>Lunch</asp:ListItem>
                    <asp:ListItem>Dinner</asp:ListItem>
                    <asp:ListItem>Appetizer</asp:ListItem>
                    <asp:ListItem>Dessert</asp:ListItem>
                    <asp:ListItem>Sandwiches</asp:ListItem>
                    <asp:ListItem>Pasta</asp:ListItem>
                    <asp:ListItem>Salads</asp:ListItem>
                    <asp:ListItem>Soup</asp:ListItem>
                    <asp:ListItem>Drinks</asp:ListItem>
                </asp:CheckBoxList>
            </div>

            <asp:Label class="control-label" ID="CuisineLabel" runat="server" Text="Cuisine"></asp:Label>
             <div class="container-fluid well">
            <asp:CheckBoxList BackColor="Transparent" CssClass="CategoryList" RepeatLayout="Table" RepeatColumns="3" runat="server">
                <asp:ListItem>American</asp:ListItem>
                <asp:ListItem>British</asp:ListItem>
                <asp:ListItem>Carribbean</asp:ListItem>
                <asp:ListItem>Chinese</asp:ListItem>
                <asp:ListItem>French</asp:ListItem>
                <asp:ListItem>Greek</asp:ListItem>
                <asp:ListItem>Indian</asp:ListItem>
                <asp:ListItem>Italian</asp:ListItem>
                <asp:ListItem>Japanese</asp:ListItem>
                <asp:ListItem>Mediterranean</asp:ListItem>
                <asp:ListItem>Mexican</asp:ListItem>
                <asp:ListItem>Moroccan</asp:ListItem>
                <asp:ListItem>Spanish</asp:ListItem>
                <asp:ListItem>Thai</asp:ListItem>
                <asp:ListItem>Turkish</asp:ListItem>
                <asp:ListItem>Vietnamese</asp:ListItem>
            </asp:CheckBoxList>
                 </div>
            <asp:Button class="btn btn-success btn-default" ID="SearchBtn" runat="server" Text="Search Recipe" />
        </div>
    </div>


</asp:Content>

