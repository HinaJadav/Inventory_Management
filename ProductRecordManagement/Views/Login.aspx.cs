using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProductRecordManagement.Views
{
    public partial class Login : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
        }

        public static String Uname = "";
        public static int User;

        protected void LoginBtn_Click1(object sender, EventArgs e)
        {

            if (UnameTb.Value == "" && PasswordTb.Value == "")
            {
                ErrMsg.Text = "Missing Login related Data!";
            }
            else if (UnameTb.Value == "admin@gmail.com" && PasswordTb.Value == "Password")
            {
                Response.Redirect("Admin/Products.aspx");
            }

            else
            {
                string Query = "Select * from SellerTbl where SellerEmail = '{0}' and SellerPassword = '{1}'";
                Query = string.Format(Query, UnameTb.Value, PasswordTb.Value);
                DataTable dt = Con.GetData(Query);
                if (dt.Rows.Count == 0)
                {
                    Response.Redirect("Admin/Products.aspx");
                }
                else
                {
                    Uname = UnameTb.Value;
                    User = Convert.ToInt32(dt.Rows[0][0].ToString());
                    Response.Redirect("Seller/Selling.aspx");

                }
            }
        }
    }
}