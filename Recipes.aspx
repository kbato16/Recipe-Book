<%@ Page Title="Recipes" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Recipes.aspx.cs" Inherits="Recipes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="NoRecipeAlert" class="alert alert-warning alert-dismissible fade in" role="alert" runat="server" visible="false">
    	<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    	No Recipes in the database to display.
    </div>	


     <div id="RecipesList" visible="false" class="panel panel-info" runat="server">
        <div class="panel-heading">List of Recipes:</div>
        <div class="panel-body">
            <asp:GridView ID="DataResult" runat="server" AutoGenerateColumns="False" AllowSorting="True" CellPadding="4" CssClass="table table-hover table-striped" GridLines="Horizontal" BorderColor="Black">
                <AlternatingRowStyle CssClass="active"/>
                <Columns>
                    <asp:BoundField DataField="RecipeName" HeaderText="Recipe Name" SortExpression="SortByRecipeName" HeaderStyle-CssClass="info"/>
                    <asp:BoundField DataField="CuisineList" HeaderText="Cuisine" SortExpression="SortByCuisine" HeaderStyle-CssClass="info"/>
                    <asp:BoundField DataField="CategoryList" HeaderText="Category" SortExpression="SortByRecipeName" HeaderStyle-CssClass="info"/>
                    <asp:BoundField DataField="SubmittedBy" HeaderText="Submitted By" SortExpression="SortByRecipeName" HeaderStyle-CssClass="info"/>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

