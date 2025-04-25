using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Patel02
{
    public partial class register_form : System.Web.UI.Page
    {
        string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Patel.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string fnm;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }
        void getcon()
        {
            con = new SqlConnection(conStr);
            con.Open();
        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            if (password.Text.Equals(cpassword.Text))
            {
                cmd = new SqlCommand("insert into User_Form_Tbl (Name, Email, Password, User_Type) values('" + name.Text + "', '" + email.Text + "', '" + password.Text + "','" + user_type.Text + "')", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Registered successfully');</script>");
                Response.Write("<script>window.location.href='login_form.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('Password dose not match!');</script>");
            }

        }
    }
}