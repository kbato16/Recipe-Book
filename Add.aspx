<%@ Page Title="Add Recipe" Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Add.aspx.cs" Inherits="Add" %>

<asp:Content ID="Add" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="SuccessDialog" visible="false" class="alert alert-success alert-dismissible fade in" role="alert" runat="server">
    	<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    	Sucessfully added the recipe!
    </div>	


        <asp:ValidationSummary ID="ErrorSummary" runat="server" HeaderText="Failed to add Recipe!" CssClass="alert alert-danger alert-dismissible fade in" ValidationGroup="AddForm" ShowValidationErrors="true" />



    <div class="panel panel-success">
        <div class="panel-heading">Provide Recipe Details</div>

        <div class="panel-body form-group">
            <asp:Label class="control-label" ID="RecipeNameLabel" runat="server" Text="Recipe Name *"></asp:Label> 
            <asp:RequiredFieldValidator ValidationGroup="AddForm" ID="RecipeNameRequired" runat="server" ControlToValidate="RecipeNameText" Display="Dynamic" ErrorMessage="Recipe Name Required" SetFocusOnError="true" ForeColor="Red"/>
            <asp:TextBox class="form-control" ID="RecipeNameText" runat="server"></asp:TextBox>
           

            <asp:Label class="control-label" ID="SubmitByLabel" runat="server" Text="Submitted By *"></asp:Label>
            <asp:RequiredFieldValidator ValidationGroup="AddForm" ID="SubmittedByRequired" runat="server" ControlToValidate="SubmittedBy" Display="Dynamic" ErrorMessage="Enter Your Name" SetFocusOnError="true" ForeColor="Red"/>
            <asp:TextBox class="form-control" ID="SubmittedBy" runat="server"></asp:TextBox>

            <asp:Label class="control-label" ID="CategoryLabel" runat="server" Text="Category"></asp:Label>
            <asp:DropDownList class="form-control" ID="CategoryList" runat="server">
                <asp:ListItem Selected="True" Value="0" Text="<Pick a Category>"></asp:ListItem>
                <asp:ListItem value="1" Text="Breakfast"></asp:ListItem>
                <asp:ListItem value="2" Text="Lunch"></asp:ListItem>
                <asp:ListItem value="3" Text="Dinner"></asp:ListItem>
                <asp:ListItem value="4" Text="Appetizer"></asp:ListItem>
                <asp:ListItem value="5" Text="Dessert"></asp:ListItem>
                <asp:ListItem value="6" Text="Sandwiches"></asp:ListItem>
                <asp:ListItem value="7" Text="Pasta"></asp:ListItem>
                <asp:ListItem value="8" Text="Salads"></asp:ListItem>
                <asp:ListItem value="9" Text="Soup"></asp:ListItem>
                <asp:ListItem value="10" Text="Drinks"></asp:ListItem>
            </asp:DropDownList>

            <asp:Label class="control-label" ID="CookingTimeLabel" runat="server" Text="Cooking Time *"></asp:Label>
            <asp:TextBox class="form-control" ID="CookingTime" runat="server"></asp:TextBox>

            <asp:Label class="control-label" ID="PortionsLabel" runat="server" Text="Portions"></asp:Label>
            <asp:TextBox class="form-control" ID="Portions" runat="server"></asp:TextBox>

            <asp:Label class="control-label" ID="CuisineLabel" runat="server" Text="Cuisine"></asp:Label>
            <asp:DropDownList class="form-control" ID="CuisineList" runat="server">
                <asp:ListItem Selected="True" Value="0" Text="<Pick a Cuisine>"></asp:ListItem>
                <asp:ListItem Value="1" Text="American"></asp:ListItem>
                <asp:ListItem Value="2" Text="British"></asp:ListItem>
                <asp:ListItem Value="3" Text="Carribbean"></asp:ListItem>
                <asp:ListItem Value="4" Text="Chinese"></asp:ListItem>
                <asp:ListItem Value="5" Text="French"></asp:ListItem>
                <asp:ListItem Value="6" Text="Greek"></asp:ListItem>
                <asp:ListItem Value="7" Text="Indian"></asp:ListItem>
                <asp:ListItem Value="8" Text="Italian"></asp:ListItem>
                <asp:ListItem Value="9" Text="Japanese"></asp:ListItem>
                <asp:ListItem Value="10" Text="Mediterranean"></asp:ListItem>
                <asp:ListItem Value="11" Text="Mexican"></asp:ListItem>
                <asp:ListItem Value="12" Text="Moroccan"></asp:ListItem>
                <asp:ListItem Value="13" Text="Spanish"></asp:ListItem>
                <asp:ListItem Value="14" Text="Thai"></asp:ListItem>
                <asp:ListItem Value="15" Text="Turkish"></asp:ListItem>
                <asp:ListItem Value="16" Text="Vietnamese"></asp:ListItem>

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

            <asp:Button class="btn btn-success btn-default" ID="AddRecipesBtn" runat="server" Text="Add Recipe" ValidationGroup="AddForm" OnClick="AddRecipesBtn_Click"/>
                </div>
    </div>

</asp:Content>
