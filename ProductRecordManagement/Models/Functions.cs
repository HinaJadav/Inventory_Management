using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

namespace ProductRecordManagement.Models
{
    


    public class Functions
    {
        private SqlConnection con;
        private SqlCommand cmd;
        private DataTable dt;
        private SqlDataAdapter sda;
        private string conStr;

        public Functions() {
            conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hina2\OneDrive\Documents\ProductManagementASPDB.mdf;Integrated Security=True;Connect Timeout=30";
            con = new SqlConnection(conStr);
            cmd = new SqlCommand();
            cmd.Connection = con;
        }

        public DataTable GetData(string Query)
        {
            dt = new DataTable();
            sda = new SqlDataAdapter(Query, conStr);
            sda.Fill(dt);
            return dt;
        }

        public int SetData(string Query)
        {
            int count = 0;
            if(con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            cmd.CommandText = Query;
            count = cmd.ExecuteNonQuery();
            con.Close();
            return count;
        }
    }
}