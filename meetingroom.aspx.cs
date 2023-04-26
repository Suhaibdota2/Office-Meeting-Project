using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;
using System.Net.Mail;

namespace Homepage
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                Response.Write(Session["Username"]);
                lblname.Text = Session["Username"].ToString();
                loadgrid();
            }


        }

        private void loadgrid()
        {
            OleDbConnection con = new OleDbConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["Connection"].ToString();
            con.Open();
            OleDbCommand cmd = new OleDbCommand();
            cmd.CommandText = "Select * from [meeting]";
            cmd.Connection = con;
            OleDbDataReader rd = cmd.ExecuteReader();
           
        }



        //protected void Button2_Click(object sender, EventArgs e)
        //{

        //    OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0; Data Source=C:\Users\saif\Documents\test.accdb");
        //    con.Open();
        //    String abc = "insert into meeting(Empname, Roomno, [Time], BDate) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
        //    OleDbCommand cmd = new OleDbCommand(abc, con);
        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //    Response.Write("Meeting Booked");



        //}

        //protected void Button3_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("employeelogin.aspx");
        //}

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Server.Transfer("employeelogin.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0; Data Source=C:\Users\saif\Documents\test.accdb");
            con.Open();
            String abc = "insert into meeting(Empname, Roomno, [Time], BDate) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
            OleDbCommand cmd = new OleDbCommand(abc, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("Meeting Booked");
        }
    }

      
        }

     