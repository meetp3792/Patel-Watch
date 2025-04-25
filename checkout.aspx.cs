using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Patel02
{
    public partial class checkout : System.Web.UI.Page
    {
        string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Patel.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();

            lblSubtotal.Text = Request.QueryString["total"];
            lblTotal.Text = Request.QueryString["total"];
        }
        void getcon()
        {
            con = new SqlConnection(conStr);
            con.Open();
        }

        protected void lbtnFinish_Click(object sender, EventArgs e)
        {
            if (cbTerms.Checked)
            {
                cmd = new SqlCommand("insert into Orders_Tbl (User_Id, Total, Pre_Name, Name, Email, Mobile, Address, City, Zip, State, Country, Payment, P_Id_Qty, Status) values('" + Session["user_id"] + "', '" + Request.QueryString["total"] + "', '" + ddlTitle.SelectedValue + "', '" + txtName.Text + "', '" + txtEmail.Text + "', '" + txtPhone.Text + "', '" + txtAddress.Text + "', '" + txtCity.Text + "', '" + txtZip.Text + "', '" + txtState.Text + "', '" + ddlCountry.SelectedValue + "', '" + ddlPayment.SelectedValue + "', '" + Request.QueryString["pidqty"] + "', '" + "panding" + "' )", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Your Order placed successfully.!');</script>");
                cmd = new SqlCommand("delete Cart_Tbl where User_Id='" + Session["user_id"] + "'", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>window.location.href='cart.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('Please read terms and conditions and agree to that.!');</script>");
            }


        }
    }
}