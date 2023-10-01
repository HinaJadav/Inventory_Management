using ProductRecordManagement.Views.Admin;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace ProductRecordManagement.Views.Seller
{
    public partial class Selling : System.Web.UI.Page
    {
        Models.Functions Con; 
        int Seller = Login.User;
        string SName = Login.Uname; //?
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            if(!IsPostBack)
            {
                ShowProducts();
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[6] 
                {
                    new DataColumn("ID"),
                    new DataColumn("Product"),
                    new DataColumn("Price"),
                    new DataColumn("Category"),
                    new DataColumn("Quantity"),
                    new DataColumn("Total")
                });
                ViewState["Bill"] = dt;
                this.BindGrid();
            }
        }
        protected void BindGrid()
        {
            BillList.DataSource = ViewState["Bill"];
            BillList.DataBind();
        }

        private void ShowProducts()
        {
            string Query = "Select PId as Code, PName as Name, PCategory as Category, PQty as Stock, PPrice as Price from ProductTbl";
            ProductsList.DataSource = Con.GetData(Query);
            ProductsList.DataBind();
        }

        int key = 0;
        int Stock = 0;
        protected void ProductsList_SelectedIndexChanged(object sender, EventArgs e)
        {
            productNameTb.Value = ProductsList.SelectedRow.Cells[2].Text;
            Stock = Convert.ToInt32(ProductsList.SelectedRow.Cells[4].Text);
            string query = "SELECT CategoryName FROM CategoryTbl WHERE CategoryId = " + ProductsList.SelectedRow.Cells[3].Text;
            DataTable categoryData = Con.GetData(query);
            if (categoryData.Rows.Count > 0)
            {
                productCategoryTb.Value = categoryData.Rows[0]["CategoryName"].ToString();
            }
            priceTb.Value = ProductsList.SelectedRow.Cells[5].Text;

            if (productNameTb.Value == "")
            {
                key = 0;
            }
            else
            {
                {
                    key = Convert.ToInt32(ProductsList.SelectedRow.Cells[1].Text);
                }
            }
        }

        private void UpdateStock()
        {
            int NewQty;
            NewQty = Convert.ToInt32(ProductsList.SelectedRow.Cells[4].Text) - Convert.ToInt32(productQuantityTb.Value);
            string Query = "update ProductTbl set PQty = {0} where PId = {1}";
            Query = string.Format(Query, NewQty, ProductsList.SelectedRow.Cells[1].Text);
            Con.SetData(Query);
            ShowProducts();


            /*string query = "SELECT PQty FROM ProductTbl WHERE PId = " + ProductsList.SelectedRow.Cells[0].Text;
            DataTable categoryData = Con.GetData(query);
            int currentQty = Convert.ToInt32(categoryData.Rows[0]["PQty"]);

            if (NewQty > currentQty)
            {
                ErrMsg.Text = "Missing Login related Data!";
            }
            else
            {
                string Query = "update ProductTbl set PQty = {0} where PId = {1}";
                Query = string.Format(Query, NewQty, ProductsList.SelectedRow.Cells[1].Text);
                Con.SetData(Query);
                ShowProducts();
            }
            
            in .aspx file : <asp:Label runat="server" ID="ErrMsg" class="text-danger"></asp:Label> ---> before addbill button
             
             */
        }


        private void InsertBill()
        {
            try
            {
                string Query = "insert into BillTbl values('{0}',{1},{2})";
                Query = string.Format(Query, System.DateTime.Today, Seller, Convert.ToInt32(AddToBillTb.Text.Substring(2)));
                Con.SetData(Query);
            }
            catch (Exception ex)
            {

            }
        }




        protected void BillList_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        int BillTotal = 0;
        int Amount;
        protected void AddToBillTb_Click(object sender, EventArgs e)
        {
            if(productQuantityTb.Value == "" || productCategoryTb.Value == "" || priceTb.Value == "" || productNameTb.Value == "")
            {

            }
            else
            {
                int total = Convert.ToInt32(productQuantityTb.Value) * Convert.ToInt32(priceTb.Value);
                DataTable dt = (DataTable)ViewState["Bill"];
                dt.Rows.Add(BillList.Rows.Count + 1,
                    productNameTb.Value.Trim(),
                    priceTb.Value.Trim(),
                    productCategoryTb.Value.Trim(),
                    productQuantityTb.Value.Trim(),
                    total);

                ViewState["Bill"] = dt;
                this.BindGrid();
                UpdateStock();



                BillTotal = 0;
                for (int i = 0; i < BillList.Rows.Count; i++)
                {
                    BillTotal += Convert.ToInt32(BillList.Rows[i].Cells[6].Text);
                }
                Amount = BillTotal;
                BillTotalTb.Text = "Rs." + BillTotal;
                productNameTb.Value = "";
                priceTb.Value = "";
                productCategoryTb.Value = "";
                productQuantityTb.Value = "";
            }
        }

        protected void PrintBtn_Click(object sender, EventArgs e)
        {
            InsertBill();
        }
    }
}