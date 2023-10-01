using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProductRecordManagement.Views.Admin
{
    public partial class Seller : System.Web.UI.Page
    {


        Models.Functions con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new Models.Functions();
            ShowSellers();
        }

        private void ShowSellers()
        {
            string Query = "Select * from SellerTbl";
            SellersList.DataSource = con.GetData(Query);
            SellersList.DataBind();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (SNameTb.Value == "" || EmailTb.Value == "" || PhoneTb.Value == "" || PasswordTb.Value == "")
                {
                    ErrMsg.Text = "Missing Data!!";
                }
                else
                {
                    string SellerName = SNameTb.Value;
                    string SellerEmail = EmailTb.Value;
                    string SellerPhone = PhoneTb.Value;
                    string SellerPassword = PasswordTb.Value;

                    string Query = "insert into SellerTbl values('{0}','{1}', '{2}', '{3}')";
                    Query = string.Format(Query, SellerName, SellerEmail, SellerPhone, SellerPassword);

                    con.SetData(Query);
                    ShowSellers();
                    ErrMsg.Text = "Seller Inserted!!";
                    SNameTb.Value = "";
                    EmailTb.Value = "";
                    PhoneTb.Value = "";
                    PasswordTb.Value = "";

                }

            }
            catch (Exception ex)
            {
                ErrMsg.Text = ex.Message;
            }
        }

        int key = 0;
        protected void SellersList_SelectedIndexChanged(object sender, EventArgs e)
        {
            SNameTb.Value = SellersList.SelectedRow.Cells[2].Text;
            EmailTb.Value = SellersList.SelectedRow.Cells[3].Text;
            PhoneTb.Value = SellersList.SelectedRow.Cells[4].Text;
            PasswordTb.Value = SellersList.SelectedRow.Cells[5].Text;

            if (SNameTb.Value == "")
            {
                key = 0;
            }
            else
            {
                {
                    key = Convert.ToInt32(SellersList.SelectedRow.Cells[1].Text);
                }
            }
        }

        protected void UpdateBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (SNameTb.Value == "" || EmailTb.Value == "" || PhoneTb.Value == "" || PasswordTb.Value == "")
                {
                    ErrMsg.Text = "Missing Data!!";
                }
                else
                {
                    string SellerName = SNameTb.Value;
                    string SellerEmail = EmailTb.Value;
                    string SellerPhone = PhoneTb.Value;
                    string SellerPassword = PasswordTb.Value;

                    string Query = "update SellerTbl set SellerName = '{0}', SellerEmail = '{1}', SellerPhone = '{2}', SellerPassword = {3} where SellerId = {4}";
                    Query = string.Format(Query, SellerName, SellerEmail, SellerPhone, SellerPassword, SellersList.SelectedRow.Cells[1].Text);

                    con.SetData(Query);
                    ShowSellers();
                    ErrMsg.Text = "Seller Updated!!";
                    SNameTb.Value = "";
                    EmailTb.Value = "";
                    PhoneTb.Value = "";
                    PasswordTb.Value = "";

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
                if (SNameTb.Value == "" || EmailTb.Value == "")
                {
                    ErrMsg.Text = "Missing Data!!";
                }
                else
                {
                    string SellerName = SNameTb.Value;
                    string SellerEmail = EmailTb.Value;
                    string SellerPhone = PhoneTb.Value;
                    string SellerPassword = PasswordTb.Value;

                    string Query = "delete from SellerTbl where SellerId = {0}";
                    Query = string.Format(Query, SellersList.SelectedRow.Cells[1].Text);

                    con.SetData(Query);
                    ShowSellers();
                    ErrMsg.Text = "Seller Deleted!!";
                    SNameTb.Value = "";
                    EmailTb.Value = "";
                    PhoneTb.Value = "";
                    PasswordTb.Value = "";

                }

            }
            catch (Exception ex)
            {
                ErrMsg.Text = ex.Message;
            }
        }
    }
}