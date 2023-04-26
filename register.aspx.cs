using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.IO;
using System.Diagnostics;

namespace Homepage
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
           

        //    try
        //    {
        //        OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\saif\Documents\test.accdb");
        //        con.Open();
        //        String abc = "insert into register(Username, [Password], Mail) values('" + TextBox1.Text + "','" + TextBox2.Text + "','"+TextBox3.Text+ "')";
        //        OleDbCommand cmd = new OleDbCommand(abc, con);
        //        cmd.ExecuteNonQuery();
        //        con.Close();
        //        Response.Write("Registration Successful");
        //    }
        //    catch(System.Data.OleDb.OleDbException f)
        //    {
        //        Response.Write("Username already exists, please enter another username");
        //    }
            
        //}

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\saif\Documents\test.accdb");
                con.Open();
                String abc = "insert into register(Username, [Password], Mail) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
                OleDbCommand cmd = new OleDbCommand(abc, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("Registration Successful");
            }
            catch (System.Data.OleDb.OleDbException f)
            {
                Response.Write("Username already exists, please enter another username");
                
            }
        }
    }
}