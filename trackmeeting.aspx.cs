using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Homepage
{
    public partial class trackmeeting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\saif\Documents\test.accdb");
            con.Open();
            String abc = "insert into meeting(Empname, Roomno, [Time], BDate) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "', '" + TextBox4.Text + "')";
            OleDbCommand cmd = new OleDbCommand(abc, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("Registration Successful");


            //protected void Button1_Click(object sender, EventArgs e)
            //{
            //    OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0; Data Source=C:\Users\saif\Documents\test.accdb");
            //    con.Open();
            //    String abc = "update meeting set Empname where (Empname= '" + TextBox1.Text + "') ";
            //    OleDbCommand cmd = new OleDbCommand(abc, con);
            //    cmd.ExecuteNonQuery();
            //    con.Close();
            //    Response.Write("Meeting Updated");
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0; Data Source=C:\Users\saif\Documents\test.accdb");
            con.Open();
            String abc = "update meeting set Roomno='"+TextBox2.Text+ "',[Time]='" + TextBox3.Text + "',BDate='" + TextBox4.Text + "'  where (Empname= '" + TextBox1.Text + "') ";
            OleDbCommand cmd = new OleDbCommand(abc, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("Meeting Updated");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0; Data Source=C:\Users\saif\Documents\test.accdb");
            con.Open();
            String abc = "delete from meeting where (Empname= '" + TextBox1.Text + "') ";
            OleDbCommand cmd = new OleDbCommand(abc, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("Meeting deleted");
        }
    }
}