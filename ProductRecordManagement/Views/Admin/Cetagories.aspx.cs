using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProductRecordManagement.Views.Admin
{
    public partial class Cetagories : System.Web.UI.Page
    {
        Models.Functions con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new Models.Functions();
            ShowCategories();
        }

        private void ShowCategories()
        {
            string Query = "Select * from CategoryTbl";
            CategoriesList.DataSource = con.GetData(Query);
            CategoriesList.DataBind(); 
        }

        

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CatNameTb.Value == "" || DescriptionTb.Value == "")
                {
                    ErrMsg.Text = "Missing Data!!";
                }
                else
                {
                    string CategoryName = CatNameTb.Value;
                    string CategoryDescription = DescriptionTb.Value;
                    
                    string Query = "insert into CategoryTbl values('{0}','{1}')";
                    Query = string.Format(Query, CategoryName, CategoryDescription);

                    con.SetData(Query);
                    ShowCategories();
                    ErrMsg.Text = "Category Inserted!!";

                }

            }
            catch (Exception ex)
            {
                ErrMsg.Text = ex.Message;
            }
        }

        int key = 0;
        protected void CategoriesList_SelectedIndexChanged(object sender, EventArgs e)
        {
            CatNameTb.Value = CategoriesList.SelectedRow.Cells[2].Text;
            DescriptionTb.Value = CategoriesList.SelectedRow.Cells[3].Text;
            if (CatNameTb.Value == "")
            {
                key = 0;
            }
            else
            {
                {
                    key = Convert.ToInt32(CategoriesList.SelectedRow.Cells[1].Text);
                }
            }
        }

        protected void UpdateBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CatNameTb.Value == "" || DescriptionTb.Value == "")
                {
                    ErrMsg.Text = "Missing Data!!";
                }
                else
                {
                    string CategoryName = CatNameTb.Value;
                    string CategoryDescription = DescriptionTb.Value;

                    string Query = "update CategoryTbl set CategoryName = '{0}', CategoryDescription = '{1}' where CategoryId = {2}";
                    Query = string.Format(Query, CategoryName, CategoryDescription, CategoriesList.SelectedRow.Cells[1].Text);

                    con.SetData(Query);
                    ShowCategories();
                    ErrMsg.Text = "Category Updated!!";

                }

            }
            catch (Exception ex)
            {
                ErrMsg.Text = ex.Message;
            }
        }
        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CatNameTb.Value == "" || DescriptionTb.Value == "")
                {
                    ErrMsg.Text = "Missing Data!!";
                }
                else
                {
                    string CategoryName = CatNameTb.Value;
                    string CategoryDescription = DescriptionTb.Value;


                    string Query = "delete from CategoryTbl where CategoryId = {0}";
                    Query = string.Format(Query, CategoriesList.SelectedRow.Cells[1].Text);

                    con.SetData(Query);
                    ShowCategories();
                    ErrMsg.Text = "Category Deleted!!";

                }

            }
            catch (Exception ex)
            {
                ErrMsg.Text = ex.Message;
            }
        }
    }
}