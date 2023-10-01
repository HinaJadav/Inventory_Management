using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProductRecordManagement.Views.Admin
{
    public partial class Products : System.Web.UI.Page
    {
        Models.Functions con;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new Models.Functions();
            if (!IsPostBack) //If the "IsPostBack" property is true, it indicates that the page is being generated due to a postback, meaning a control on the page triggered an event that caused the page to refresh
            {
                ShowProducts();
                GetCategories();
                GetProducers();
            }
        }

        private void ShowProducts()
        {
            string Query = "Select * from ProductTbl";
            ProductsList.DataSource = con.GetData(Query);
            ProductsList.DataBind();
        }

        private void GetCategories()
        {
            string Query = "select * from CategoryTbl";
            ProCatCb.DataTextField = con.GetData(Query).Columns["CategoryName"].ToString();
            ProCatCb.DataValueField = con.GetData(Query).Columns["CategoryId"].ToString();
            ProCatCb.DataSource = con.GetData(Query);
            ProCatCb.DataBind(); 
        }

        private void GetProducers()
        {
            string Query = "select * from ProducerTbl";
            ProProducerCb.DataTextField = con.GetData(Query).Columns["ProducerName"].ToString();
            ProProducerCb.DataValueField = con.GetData(Query).Columns["ProducerId"].ToString();
            ProProducerCb.DataSource = con.GetData(Query);
            ProProducerCb.DataBind();
        }
         
        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (ProNameTb.Value == "" || ProProducerCb.SelectedIndex == -1 || ProCatCb.SelectedIndex == -1 || QtyTb.Value == "" || PriceTb.Value == "")
                {
                    ErrMsg.Text = "Missing Data!!";
                }
                else
                {
                    string PName = ProNameTb.Value;
                    string PProducer = ProProducerCb.SelectedValue.ToString();
                    string PCategory = ProCatCb.SelectedValue.ToString();
                    int PQty = Convert.ToInt32(QtyTb.Value);
                    int Price = Convert.ToInt32(PriceTb.Value);

                    string Query = "insert into ProductTbl values('{0}', {1}, {2}, {3}, {4})";
                    Query = string.Format(Query, PName, PProducer, PCategory, PQty, Price);

                    con.SetData(Query);
                    ShowProducts();
                    ErrMsg.Text = "Product Inserted!!";
                    ProNameTb.Value = "";
                    ProProducerCb.SelectedIndex = -1;
                    ProCatCb.SelectedIndex = -1;
                    QtyTb.Value = "";
                    PriceTb.Value = "";

                }

            }
            catch (Exception ex)
            {
                ErrMsg.Text = ex.Message;
            }
        }

        int key = 0;
        protected void ProductsList_SelectedIndexChanged(object sender, EventArgs e)
        {
            ProNameTb.Value = ProductsList.SelectedRow.Cells[2].Text;
            ProProducerCb.SelectedValue = ProductsList.SelectedRow.Cells[3].Text;
            ProCatCb.SelectedValue = ProductsList.SelectedRow.Cells[4].Text;
            QtyTb.Value = ProductsList.SelectedRow.Cells[5].Text;
            PriceTb.Value = ProductsList.SelectedRow.Cells[6].Text;

            if (ProNameTb.Value == "")
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
        protected void UpdateBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (ProNameTb.Value == "" || ProProducerCb.SelectedIndex == -1 || ProCatCb.SelectedIndex == -1 || QtyTb.Value == "" || PriceTb.Value == "")
                {
                    ErrMsg.Text = "Missing Data!!";
                }
                else
                {
                    string PName = ProNameTb.Value;
                    string PProducer = ProProducerCb.SelectedValue.ToString();
                    string PCategory = ProCatCb.SelectedValue.ToString();
                    int PQty = Convert.ToInt32(QtyTb.Value);
                    int Price = Convert.ToInt32(PriceTb.Value);

                    string Query = "update ProductTbl set PName = '{0}', PProducer = '{1}', PCategory = '{2}', PQty = {3}, PPrice = {4} where PId = {5}";
                    Query = string.Format(Query, PName, PProducer, PCategory, PQty, Price, ProductsList.SelectedRow.Cells[1].Text);

                    con.SetData(Query);
                    ShowProducts();
                    ErrMsg.Text = "Product Updated!!";
                    ProNameTb.Value = "";
                    ProProducerCb.SelectedIndex = -1;
                    ProCatCb.SelectedIndex = -1;
                    QtyTb.Value = "";
                    PriceTb.Value = "";
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
                if (ProNameTb.Value == "" || ProProducerCb.SelectedIndex == -1 || ProCatCb.SelectedIndex == -1 || QtyTb.Value == "" || PriceTb.Value == "")
                {
                    ErrMsg.Text = "Missing Data!!";
                }
                else
                {
                    string PName = ProNameTb.Value;
                    string PProducer = ProProducerCb.SelectedValue.ToString();
                    string PCategory = ProCatCb.SelectedValue.ToString();
                    int PQty = Convert.ToInt32(QtyTb.Value);
                    int Price = Convert.ToInt32(PriceTb.Value);

                    string Query = "delete from ProductTbl where PId = {0}";
                    Query = string.Format(Query, ProductsList.SelectedRow.Cells[1].Text);

                    con.SetData(Query);
                    ShowProducts();
                    ErrMsg.Text = "Product Deleted!!";
                    ProNameTb.Value = "";
                    ProProducerCb.SelectedIndex = -1;
                    ProCatCb.SelectedIndex = -1;
                    QtyTb.Value = "";
                    PriceTb.Value = "";
                }

            }
            catch (Exception ex)
            {
                ErrMsg.Text = ex.Message;
            }
        }
    }
}