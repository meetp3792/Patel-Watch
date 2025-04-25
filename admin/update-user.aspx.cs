using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Patel02.admin
{
    public partial class update_user : System.Web.UI.Page
    {
        string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Patel.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        int u_id;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            if (!IsPostBack)
            {
                fillText();
            }
        }
        void getcon()
        {
            con = new SqlConnection(conStr);
            con.Open();
        }

        DataSet selectUser(int u_id)
        {
            da = new SqlDataAdapter("select * from User_Form_Tbl where User_Id='" + u_id + "' ", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        void fillText()
        {
            if (Request.QueryString["u_id"] != null)
            {
                u_id = Convert.ToInt32(Request.QueryString["u_id"]);
                ds = new DataSet();
                ds = selectUser(u_id);
                user_id.Text = ds.Tables[0].Rows[0]["User_Id"].ToString();
                name.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                email.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                ddlUserType.SelectedValue = ds.Tables[0].Rows[0]["User_Type"].ToString();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            u_id = Convert.ToInt32(Request.QueryString["u_id"]);
            string type = ddlUserType.Text;
            cmd = new SqlCommand("update User_Form_Tbl set User_Type='" + type + "' where User_Id='" + u_id + "'", con);
            cmd.ExecuteNonQuery();
            Response.Redirect("manage-user.aspx");
        }
    }
}