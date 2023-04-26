using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace Homepage
{
    public partial class login : System.Web.UI.Page
    { 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string constring = @"Provider=Microsoft.ACE.OLEDB.12.0; Data Source=C:\Users\saif\Documents\test.accdb";
            string cmdText = "select Count(*) from register where Username=@p1 and [Password]=@p2";
            DataTable ds = new DataTable();
            DataSet ds1 = new DataSet();
           
            using (OleDbConnection con = new OleDbConnection(constring))
            using (OleDbCommand cmd = new OleDbCommand(cmdText, con))
            {


                con.Open();
                OleDbDataAdapter da = new OleDbDataAdapter("select Count(*) from register where Username='" + TextBox1.Text + "' and [Password]='" + TextBox2.Text + "';", con);
                da.Fill(ds1);

                OleDbDataAdapter da1 = new OleDbDataAdapter("select * from register where Username='" + TextBox1.Text + "' and [Password]='" + TextBox2.Text + "';", con);
                da1.Fill(ds);


                cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
                cmd.Parameters.AddWithValue("@p2", TextBox2.Text);  // <- is this a variable or a textbox?
                int result = (int)cmd.ExecuteScalar();
                if (result > 0)
                {
                    Session["Username"] = ds.Rows[0]["Username"].ToString();
                    int usr = ds1.Tables[0].Rows.Count;
                    Response.Write(usr);
                    Response.Write("Login Successful");
                    Response.Redirect("Homepage.aspx");

                }
                else
                    Response.Write("Invalid Credentials, Please Re-Enter");
                con.Close();
            }
        }
  
    }
    }


