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
    public partial class wishlist : System.Web.UI.Page
    {
        string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Patel.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        int u_id, w_id, p_id;
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
            da = new SqlDataAdapter("select * from Wishlist_Tbl where User_Id='" + id + "'", con);
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
                Response.Redirect("empty-wishlist.aspx");
            }
            wishDataList.DataSource = fillProduct(u_id);
            wishDataList.DataBind();
        }

        DataSet selectData(int w_id)
        {
            da = new SqlDataAdapter("select * from Wishlist_tbl where Wish_Id='" + w_id + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        DataSet selectCart(int u_id, int p_id)
        {
            da = new SqlDataAdapter("select * from Cart_Tbl where P_Id='" + p_id + "' and User_Id='" + u_id + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        protected void wishDataList_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "cmd_cart")
            {

                w_id = Convert.ToInt32(e.CommandArgument);
                ds = new DataSet();
                ds = selectData(w_id);

                p_id = Convert.ToInt32(ds.Tables[0].Rows[0][2]);
                string p_name = ds.Tables[0].Rows[0][3].ToString();
                string p_image = ds.Tables[0].Rows[0][4].ToString();
                int qty = Convert.ToInt32(ds.Tables[0].Rows[0][5]);
                int p_price = Convert.ToInt32(ds.Tables[0].Rows[0][6]);
                string p_desc = ds.Tables[0].Rows[0][7].ToString();
                u_id = Convert.ToInt32(Session["user_id"]);

                ds = new DataSet();
                ds = selectCart(u_id, p_id);

                if (ds.Tables[0].Rows.Count == 0)
                {
                    cmd = new SqlCommand("insert into Cart_Tbl (User_Id, P_Id, P_Name, P_Image, P_Price, P_Desc, Qty) values('" + u_id + "', '" + p_id + "', '" + p_name + "', '" + p_image + "', '" + p_price + "', '" + p_desc + "', '" + qty + "')", con);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Product added into the cart!');</script>");
                    Response.Redirect("cart.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Product alread into the cart!');</script>");
                }


            }
            else//cmd_delete
            {
                w_id = Convert.ToInt32(e.CommandArgument);
                cmd = new SqlCommand("delete from Wishlist_Tbl where Wish_Id='" + w_id + "'", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Product remove from wishlist!');</script>");
                filldatalist();
            }
        }
    }
}