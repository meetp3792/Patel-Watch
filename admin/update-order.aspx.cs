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
    public partial class update_order : System.Web.UI.Page
    {
        readonly string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Patel.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        int o_id;
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

        DataSet selectOrder(int o_id)
        {
            da = new SqlDataAdapter("select * from Orders_Tbl where Order_Id='" + o_id + "' ", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        void fillText()
        {
            if (Request.QueryString["o_id"] != null)
            {
                o_id = Convert.ToInt32(Request.QueryString["o_id"]);
                ds = new DataSet();
                ds = selectOrder(o_id);
                order_id.Text = ds.Tables[0].Rows[0]["Order_Id"].ToString();
                name.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                payment.Text = ds.Tables[0].Rows[0]["Payment"].ToString();
                ddlStatus.SelectedValue = ds.Tables[0].Rows[0]["Status"].ToString();
            }
        }

        protected void lbtnUpdate_Click(object sender, EventArgs e)
        {
            o_id = Convert.ToInt32(Request.QueryString["o_id"]);
            string status = ddlStatus.Text;
            Response.Write(status);
            cmd = new SqlCommand("update Orders_Tbl set Status='" + status + "' where Order_Id='" + o_id + "'", con);
            cmd.ExecuteNonQuery();
            Response.Redirect("manage-orders.aspx");
        }
    }
}