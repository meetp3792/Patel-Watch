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
    public partial class cart : System.Web.UI.Page
    {
        string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Patel.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        int u_id, cart_id;
        Decimal total;
        string pidqty;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            filldatalist();
        }
        void getcon()
        {
            con = new SqlConnection(conStr);
            con.Open();
        }

        DataSet fillProduct(int id)
        {
            da = new SqlDataAdapter("select * from Cart_Tbl where User_Id='" + id + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }


        void filldatalist()
        {
            u_id = Convert.ToInt32(Session["user_id"]);

            ds = new DataSet();
            ds = fillProduct(u_id);
            if (ds.Tables[0].Rows.Count == 0)
            {
                Response.Redirect("empty-cart.aspx");
            }

            cartDataList.DataSource = fillProduct(u_id);
            cartDataList.DataBind();
            getsubtotal();
        }
        void getsubtotal()
        {
            total = 0;
            pidqty = "";
            ds = new DataSet();
            ds = fillProduct(u_id);
            if (ds.Tables[0].Rows.Count > 0)
            {
                DataTable dataTable = ds.Tables[0];

                foreach (DataRow row in dataTable.Rows)
                {
                    int pid = Convert.ToInt32(row["P_Id"]);
                    int qty = Convert.ToInt32(row["Qty"]);

                    pidqty += pid + ":" + qty + ", ";

                    decimal price = Convert.ToDecimal(row["P_Price"]);
                    decimal subtotal = qty * price;
                    total += subtotal;

                }
            }
            lblTotal.Text = total.ToString();
        }



        protected void cartDataList_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "cmd_minus" || e.CommandName == "cmd_plus")
            {
                int cartId = Convert.ToInt32(e.CommandArgument);
                int index = e.Item.ItemIndex;

                // Get the quantity Label and update its value
                Label lblQty = (Label)cartDataList.Items[index].FindControl("lblQty");
                int currentQty = Convert.ToInt32(lblQty.Text);

                // Update the quantity based on the command
                if (e.CommandName == "cmd_minus" && currentQty > 1)
                {
                    currentQty--;
                }
                else if (e.CommandName == "cmd_plus")
                {
                    currentQty++;
                }

                // Update the quantity in the database 
                cmd = new SqlCommand("update Cart_Tbl set Qty='" + currentQty + "' where Cart_Id='" + cartId + "'", con);
                cmd.ExecuteNonQuery();

                // Update the Label with the new quantity
                lblQty.Text = currentQty.ToString();

                // Rebind the DataList to reflect the changes
                filldatalist();

            }
            else //cmd_delete
            {
                cart_id = Convert.ToInt32(e.CommandArgument);
                cmd = new SqlCommand("delete from Cart_Tbl where Cart_Id='" + cart_id + "'", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Product removed from Cart!');</script>");
                filldatalist();

            }
        }

        protected void lbtnCheckout_Click(object sender, EventArgs e)
        {

            Response.Redirect("checkout.aspx?total=" + total + "&pidqty=" + pidqty);
        }

    }
}