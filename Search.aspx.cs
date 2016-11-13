using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Search : System.Web.UI.Page
{
    protected SqlConnection connect = new SqlConnection(WebConfigurationManager.ConnectionStrings["AzureRecipeBookDB"].ConnectionString);
    private string SelectedCuisine;
    private string SelectedCategories;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!SearchForm.Visible)
        {
            SearchForm.Visible = true;
            SearchResults.Visible = false;
        }
        

    }
    private void BindDataList(string query)
    {
        try
        {
            SqlCommand cmd = new SqlCommand(query, connect);
            connect.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                DataSearchResult.DataSource = reader;
                DataSearchResult.DataBind();
                reader.Close();
                connect.Close();
            }
            else
            {
                if(!String.IsNullOrWhiteSpace(RecipeNameText.Text))
                {
                    SearchError.InnerHtml += "</br>Can't find Recipe Name : " + RecipeNameText.Text;
                    SearchError.Visible = true;
                }
                if (!String.IsNullOrWhiteSpace(SubmittedBy.Text))
                {
                    SearchError.InnerHtml += "</br>Can't find Recipe submissions by : " + SubmittedBy.Text;
                    SearchError.Visible = true;
                }

                if (SelectedCuisine == null && SelectedCategories == null)
                {
                    SearchError.Visible = true;
                }
                else if(SelectedCuisine != null && SelectedCategories == null)
                {
                    SearchError.InnerHtml += string.Format("</br>Can't find Recipes with the selected:</br>{0}", SelectedCuisine);
                    SearchError.Visible = true;
                }
                else if (SelectedCuisine == null && SelectedCategories != null)
                {
                    SearchError.InnerHtml += string.Format("</br>Can't find Recipes with the selected:</br>{0}", SelectedCategories);
                    SearchError.Visible = true;
                }
                else
                {
                    SearchError.InnerHtml += string.Format("</br>Can't find Recipes with the selected:</br>{0}</br>{1}", SelectedCuisine, SelectedCategories);
                    SearchError.Visible = true;
                }
                reader.Close();
                connect.Close();
            }
         
        }
        catch (ArgumentNullException)
        {
            connect.Close();
            SearchError.Visible = true;
            throw;
        }
    }

    private string getTextBox()
    {
        string result = "";
        if (String.IsNullOrWhiteSpace(RecipeNameText.Text) && String.IsNullOrWhiteSpace(SubmittedBy.Text))
        {
            return null;
        }
        else if (!String.IsNullOrWhiteSpace(RecipeNameText.Text) && !String.IsNullOrWhiteSpace(SubmittedBy.Text))
        {
            result += " recipename = " + "'" + RecipeNameText.Text + "'" + " and " + "submittedby = " + "'" + SubmittedBy.Text + "'";
            return result;
        }
        else if (!String.IsNullOrWhiteSpace(RecipeNameText.Text) && String.IsNullOrWhiteSpace(SubmittedBy.Text))
        {
            result += " recipename = " + "'" + RecipeNameText.Text + "'";
            return result;
        }
        else
        {
            result += " submittedby = " + "'" + SubmittedBy.Text + "'";
            return result;
        }

    }

    private string getCategories()
    {
        List<string> categories = new List<string>();
        string searchCategoryQuery = "categoryList in (";
        foreach (ListItem item in Categories.Items)
        {
            if (item.Selected)
            {
                categories.Add(item.Value);
            }
        }

        if (categories.Count > 0)
        {
            SelectedCategories = "<strong>Category: </strong>";
            for (int i = 0; i < categories.Count; i++)
            {
                searchCategoryQuery += "'" + categories[i] + "'";
                SelectedCategories += categories[i];
                if (i + 1 < categories.Count)
                {
                    searchCategoryQuery += ", ";
                    SelectedCategories += ", ";
                }
                else
                {
                    searchCategoryQuery += ")";
                    SelectedCategories += " ";
                }
            }
            return searchCategoryQuery;
        }
        else
        {
            return null;
        }
    }

    private string getCuisineList()
    {
        List<string> cuisines = new List<string>();
        string searchCuisines = "CuisineList in (";
        foreach (ListItem item in Cuisines.Items)
        {
            if (item.Selected)
            {
                cuisines.Add(item.Value);
            }
        }

        if (cuisines.Count > 0)
        {
            SelectedCuisine = "<strong>Cuisine: </strong>";
            for (int i = 0; i < cuisines.Count; i++)
            {
                searchCuisines += "'" + cuisines[i] + "'";
                SelectedCuisine += cuisines[i];
                if (i + 1 < cuisines.Count)
                {
                    searchCuisines += ", ";
                    SelectedCuisine += ", ";
                }
                else
                {
                    searchCuisines += ")";
                    SelectedCuisine += " ";
                }
            }
            return searchCuisines;
        }
        else
        {
            return null;
        }
        
    }

    protected void SearchBtn_Click(object sender, EventArgs e)
    {
        string queryString = "Select * from Recipes ";
        if (getTextBox() == null && getCategories() == null && getCuisineList() == null)
        {
            queryString += "";
        }
        else if (getTextBox() != null && getCategories() == null && getCuisineList() == null)
        {
            queryString += " where " + getTextBox();
        }
        else if (getTextBox() == null && getCategories() != null && getCuisineList() == null)
        {
            queryString += "where " + getCategories();
        }
        else if (getTextBox() == null && getCategories() == null && getCuisineList() != null)
        {
            queryString += "where " + getCuisineList();
        }
        else if (getTextBox() == null && getCategories() != null && getCuisineList() != null)
        {
            queryString += "where " + getCategories() + " and " + getCuisineList();
        }
        else if (getTextBox() != null && getCategories() != null && getCuisineList() == null)
        {
            queryString += "where " + getTextBox() + " and " + getCategories();
        }
        else if (getTextBox() != null && getCategories() == null && getCuisineList() != null)
        {
            queryString += "where " + getTextBox() + " and " + getCuisineList();
        }
        else if (getTextBox() != null && getCategories() != null && getCuisineList() != null)
        {
            queryString += "where " + getTextBox() + " and " + getCategories() + " and " + getCuisineList();
        }
        BindDataList(queryString); 
        SearchResults.Visible = true;
        SearchForm.Visible = false;
    }

    protected void NewSearch_Click(object sender, EventArgs e)
    {
        if (SearchResults.Visible)
        {
            SearchResults.Visible = false;
            SearchForm.Visible = true;
        }
        SearchError.Visible = false;
        SearchError.InnerHtml = null;
    }
}