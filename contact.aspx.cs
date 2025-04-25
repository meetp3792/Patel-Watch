using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Patel02
{
    public partial class contact : System.Web.UI.Page
    {
        string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Patel.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }
        void getcon()
        {
            con = new SqlConnection(conStr);
            con.Open();
        }
        void clear()
        {
            name.Text = "";
            subject.Text = "";
            message.Text = "";
        }
        protected void submit_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("insert into Contact_Tbl (Name, Email, Subject, Message) values('" + name.Text + "', '" + email.Text + "', '" + subject.Text + "', '" + message.Text + "')", con);
            cmd.ExecuteNonQuery();
            clear();

        }
    }
}