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
    public partial class manage_orders : System.Web.UI.Page
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
            da = new SqlDataAdapter("select * from Orders_Tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        void fillgrid()
        {
            orderGridView.DataSource = filldata();
            orderGridView.DataBind();
        }

        protected void orderGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_update")
            {
                int o_id = Convert.ToInt32(e.CommandArgument);
                ViewState["o_id"] = o_id;
                Response.Redirect("update-order.aspx?o_id=" + ViewState["o_id"]);

            }
            else //cmd_delete
            {
                int o_id = Convert.ToInt32(e.CommandArgument);
                ViewState["o_id"] = o_id;
                cmd = new SqlCommand("DELETE FROM Orders_Tbl WHERE Order_Id ='" + ViewState["o_id"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();
                Response.Write("<script>alert('Order Deleted!');</script>");
            }
        }
    }
}