using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data.SqlTypes;

public partial class Add : System.Web.UI.Page
{
    protected SqlConnection connect = new SqlConnection(WebConfigurationManager.ConnectionStrings["AzureRecipeBookDB"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
            SubmittedBy.Text = Session["Username"].ToString();
        }

    }

    protected void AddRecipesBtn_Click(object sender, EventArgs e)
    {

        connect.Open();
        SqlCommand addRecipe = new SqlCommand("insert into Recipes values(Next Value for Recipe_ID_SQ, @rName, @submittedBy, @rCategory, @rPrepTime, @rPortions, @rCuisine, @isPrivate, @rDescription, @bookId);", connect);
        addRecipe.Parameters.AddWithValue("@rName", RecipeNameText.Text);
        addRecipe.Parameters.AddWithValue("@submittedBy", SubmittedBy.Text);
        if(CategoryList.SelectedItem.Text.Equals("<Pick a Category>"))
        {
            addRecipe.Parameters.AddWithValue("@rCategory", DBNull.Value);
        }
        else
        {
            addRecipe.Parameters.AddWithValue("@rCategory" ,CategoryList.SelectedItem.Text);
        }
        addRecipe.Parameters.AddWithValue("@rPrepTime", CookingTime.Text);
        if (String.IsNullOrWhiteSpace(Portions.Text))
        {
            addRecipe.Parameters.AddWithValue("@rPortions", DBNull.Value);
        }
        else
        {
            addRecipe.Parameters.AddWithValue("@rPortions", Portions.Text);
        }
        if(CuisineList.SelectedItem.Text.Equals("<Pick a Cuisine>"))
        {
            addRecipe.Parameters.AddWithValue("@rCuisine", DBNull.Value);
        }
        else
        {
            addRecipe.Parameters.AddWithValue("@rCuisine", CuisineList.SelectedItem.Text);
        }
       
        addRecipe.Parameters.AddWithValue("@isPrivate", SetAsPrivate.Checked ? 1 : 0);
        if (String.IsNullOrWhiteSpace(RecipeDescription.Text))
        {
            addRecipe.Parameters.AddWithValue("@rDescription", DBNull.Value);
        }
        else
        {
            addRecipe.Parameters.AddWithValue("@rDescription", RecipeDescription.Text);
        }
       
        addRecipe.Parameters.AddWithValue("@bookId", DBNull.Value);
        addRecipe.ExecuteNonQuery();
        connect.Close();
        SuccessDialog.Visible = true;
        if (RecipeNameText.CausesValidation)
        {
            RecipeNameText.CssClass = "form-group has-error";
        }
    }

}