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
    public partial class manage_messages : System.Web.UI.Page
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
            da = new SqlDataAdapter("select * from Contact_Tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        void fillgrid()
        {
            msgGridView.DataSource = filldata();
            msgGridView.DataBind();
        }

        protected void userGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_delete")
            {
                int Contact_id = Convert.ToInt32(e.CommandArgument);
                ViewState["Contact_id"] = Contact_id;
                cmd = new SqlCommand("DELETE FROM Contact_Tbl WHERE Contact_Id ='" + ViewState["Contact_id"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();
                Response.Write("<script>alert('Message Deleted.!');</script>");

            }
        }
    }
}