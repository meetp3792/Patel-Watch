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
    public partial class manage_categories : System.Web.UI.Page
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
            da = new SqlDataAdapter("select * from Category_Tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        void fillgrid()
        {
            GridView1.DataSource = filldata();
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_update")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = id;
                Response.Redirect("update-category.aspx?id=" + ViewState["id"]);

            }
            else//cmd_delete
            {
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = id;
                cmd = new SqlCommand("DELETE FROM Category_Tbl WHERE C_Id ='" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();
                Response.Write("<script>alert('Data Deleted');</script>");
            }
        }
    }
}