using System;
using System.Collections.Generic;
using System.Linq;
using System.Timers;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProductRecordManagement.Views.Admin
{
    public partial class Producer : System.Web.UI.Page
    {
        Models.Functions con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new Models.Functions();
            ShowProducer();
        }

        private void ShowProducer()
        {
            string Query = "Select * from ProducerTbl";
            ProducersList.DataSource = con.GetData(Query);
            ProducersList.DataBind();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if(PNameTb.Value == "" || GenCb.SelectedIndex == -1 || CountryCb.SelectedIndex == -1) 
                {
                    ErrMsg.Text = "Missing Data!!";
                }
                else
                {
                    string ProducerName = PNameTb.Value;
                    string ProducerGender = GenCb.SelectedItem.ToString();
                    string ProducerContry = CountryCb.SelectedItem.ToString();

                    string Query = "insert into ProducerTbl values('{0}','{1}','{2}')";
                    Query = string.Format(Query, ProducerName, ProducerGender, ProducerContry);   

                    con.SetData(Query);
                    ShowProducer();
                    ErrMsg.Text = "Producer Inserted!!";

                }

            }
            catch (Exception ex)
            {
                ErrMsg.Text = ex.Message;
            }
        }

        int key = 0;
        protected void ProducersList_SelectedIndexChanged(object sender, EventArgs e)
        {
            PNameTb.Value = ProducersList.SelectedRow.Cells[2].Text;
            GenCb.SelectedItem.Value = ProducersList.SelectedRow.Cells[3].Text;
            CountryCb.SelectedItem.Value = ProducersList.SelectedRow.Cells[4].Text;
            if(PNameTb.Value == "")
            {
                key = 0;
            }
            else
            {
                {
                    key = Convert.ToInt32(ProducersList.SelectedRow.Cells[1].Text);
                }
            }
        }

        protected void UpdateBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (PNameTb.Value == "" || GenCb.SelectedIndex == -1 || CountryCb.SelectedIndex == -1)
                {
                    ErrMsg.Text = "Missing Data!!";
                }
                else
                {
                    string ProducerName = PNameTb.Value;
                    string ProducerGender = GenCb.SelectedItem.ToString();
                    string ProducerContry = CountryCb.SelectedItem.ToString();

                    string Query = "update ProducerTbl set ProducerName = '{0}', ProducerGender = '{1}', ProducerContry = '{2}' WHERE ProducerId = {3}";
                    Query = string.Format(Query, ProducerName, ProducerGender, ProducerContry, ProducersList.SelectedRow.Cells[1].Text);

                    con.SetData(Query);
                    ShowProducer();
                    ErrMsg.Text = "Producer Updated!!";
                    PNameTb.Value = "";
                    GenCb.SelectedIndex = -1;
                    CountryCb.SelectedIndex = -1;

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
                if (PNameTb.Value == "" || GenCb.SelectedIndex == -1 || CountryCb.SelectedIndex == -1)
                {
                    ErrMsg.Text = "Please select a Producer!!";
                }
                else
                {
                    string ProducerName = PNameTb.Value;
                    string ProducerGender = GenCb.SelectedItem.ToString();
                    string ProducerContry = CountryCb.SelectedItem.ToString();

                    string Query = "delete from ProducerTbl where ProducerId = {0}";
                    Query = string.Format(Query, ProducersList.SelectedRow.Cells[1].Text);

                    con.SetData(Query);
                    ShowProducer();
                    ErrMsg.Text = "Producer Deleted!!";
                    PNameTb.Value = "";
                    GenCb.SelectedIndex = -1;
                    CountryCb.SelectedIndex = -1;

                }

            }
            catch (Exception ex)
            {
                ErrMsg.Text = ex.Message;
            }
        }
    }
}