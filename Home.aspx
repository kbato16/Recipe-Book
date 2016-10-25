<%@ Page Title="Home" Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Home" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-success">
        <div class="panel-heading">About this Site</div>
        <div class="panel-body">
            <p>Welcome to you personal recipe book. In this recipe book you can manage and view you own home recipes. You can also search for new recipes and add them in your personalized menu.</p>
            <p>Bon Appétit !</p>

            <div class="list-group">
                <a href="Add.aspx" class="list-group-item">
                    <h4 class="list-group-item-heading">Adding Recipes</h4>
                    <p class="list-group-item-text">
                        To add a recipes simply go to the Add Recipes page and provide the 
                        necessary information as needed.
                    </p>
                    <p class="list-group-item-text">
                        Recipes added can be set to private or added to be viewed publicaly.
                    </p>
                </a>
                <a href="Search.aspx" class="list-group-item">
                    <h4 class="list-group-item-heading">Searching Recipes</h4>
                    <p class="list-group-item-text">
                        If you're looking for recipes you can go to the Search page and look for
                        those specific recipes.
                    </p>
                </a>
            </div>
        </div>
    </div>
    <footer class="well well-sm">
        Page Counter: <asp:Label ID="PageCount" runat="server"></asp:Label><br />
        Session Counter: <asp:Label ID="SessionCount" runat="server"></asp:Label>
    </footer>

</asp:Content>
