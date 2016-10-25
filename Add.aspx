<%@ Page Title="Add Recipe" Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Add.aspx.cs" Inherits="Add" %>

<asp:Content ID="Add" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="panel panel-success">
        <div class="panel-heading">Provide Recipe Details</div>

        <div class="container form-group">
            <asp:Label class="control-label" ID="RecipeNameLabel" runat="server" Text="Recipe Name"></asp:Label>
            <asp:TextBox class="form-control" ID="RecipeNameText" runat="server"></asp:TextBox>

            <asp:Label class="control-label" ID="SubmitByLabel" runat="server" Text="Submitted By"></asp:Label>
            <asp:TextBox class="form-control" ID="SubmittedBy" runat="server"></asp:TextBox>

            <asp:Label class="control-label" ID="CategoryLabel" runat="server" Text="Category"></asp:Label>
            <asp:DropDownList class="form-control" ID="CategoryList" runat="server">
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
            </asp:DropDownList>

            <asp:Label class="control-label" ID="CookingTimeLabel" runat="server" Text="Cooking Time"></asp:Label>
            <asp:TextBox class="form-control" ID="CookingTime" runat="server"></asp:TextBox>

            <asp:Label class="control-label" ID="PortionsLabel" runat="server" Text="Portions"></asp:Label>
            <asp:TextBox class="form-control" ID="Portions" runat="server"></asp:TextBox>

            <asp:Label class="control-label" ID="CuisineLabel" runat="server" Text="Cuisine"></asp:Label>
            <asp:DropDownList class="form-control" ID="CuisineList" runat="server">
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
            </asp:DropDownList>

            <div class="checkbox">
                <asp:Label class="control-label" ID="PrivacyStatusLabel" runat="server" Text="Mark as Private"></asp:Label><br />
                <label>  
                    <asp:CheckBox class="checkbox" ID="SetAsPrivate" runat="server" />

                    Private Recipe
                </label>
            </div>
           

            <asp:Label class="control-label" ID="DescriptionLabel" runat="server" Text="Recipe Description"></asp:Label>
            <asp:TextBox class="form-control" ID="RecipeDescription" runat="server" TextMode="MultiLine"></asp:TextBox>

            <asp:Button class="btn btn-success btn-default" ID="AddRecipesBtn" runat="server" Text="Add Recipe" />
        </div>
    </div>



</asp:Content>
