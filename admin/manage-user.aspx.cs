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
    public partial class manage_user : System.Web.UI.Page
    {
        string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Patel.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            fillgrid();
        }
        void getcon()
        {
            con = new SqlConnection(conStr);
            con.Open();
        }
        DataSet filldata()
        {
            da = new SqlDataAdapter("select * from User_Form_Tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        void fillgrid()
        {
            userGridView.DataSource = filldata();
            userGridView.DataBind();
        }

        protected void userGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_update")
            {
                int u_id = Convert.ToInt32(e.CommandArgument);
                ViewState["u_id"] = u_id;
                Response.Redirect("update-user.aspx?u_id=" + ViewState["u_id"]);

            }
            else //cmd_delete
            {
                int u_id = Convert.ToInt32(e.CommandArgument);
                ViewState["u_id"] = u_id;
                cmd = new SqlCommand("DELETE FROM User_Form_Tbl WHERE User_Id ='" + ViewState["u_id"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();
                Response.Write("<script>alert('User Deleted.!');</script>");
            }
        }
    }
}