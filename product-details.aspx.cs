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
    public partial class product_details : System.Web.UI.Page
    {
        string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Patel.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        int pid;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            if (!IsPostBack)
            {
                filldata();
            }



        }
        void getcon()
        {
            con = new SqlConnection(conStr);
            con.Open();
        }

        DataSet fillProduct(int id)
        {
            da = new SqlDataAdapter("select * from Products_Tbl where P_Id='" + id + "' ", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }


        void filldata()
        {
            pid = Convert.ToInt32(Request.QueryString["p_id"]);
            ds = new DataSet();
            ds = fillProduct(pid);
            lblTitle.Text = (ds.Tables[0].Rows[0][1]).ToString();
            lblP_Name.Text = (ds.Tables[0].Rows[0][1]).ToString();
            P_Image.ImageUrl = (ds.Tables[0].Rows[0][2]).ToString();
            lblP_Mrp.Text = (ds.Tables[0].Rows[0][3]).ToString();
            lblP_Price.Text = (ds.Tables[0].Rows[0][4]).ToString();
            lblP_Desc.Text = (ds.Tables[0].Rows[0][5]).ToString();
            lblQty.Text = (ds.Tables[0].Rows[0][7]).ToString();
        }

        DataSet selectCart(int id, int uid)
        {
            da = new SqlDataAdapter("select * from Cart_Tbl where P_Id='" + pid + "' and User_Id='" + uid + "' ", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;

        }
        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            if (Session["user_id"] != null)
            {
                ds = new DataSet();
                pid = Convert.ToInt32(Request.QueryString["p_id"]);
                ds = selectCart(pid, Convert.ToInt32(Session["user_id"]));


                if (ds.Tables[0].Rows.Count == 0)
                {
                    cmd = new SqlCommand("insert into Cart_Tbl (User_Id, P_Id, P_Name, P_Image, P_Price, P_Desc, Qty) values('" + Session["user_id"] + "', '" + pid + "', '" + lblP_Name.Text + "', '" + P_Image.ImageUrl + "', '" + lblP_Price.Text + "', '" + lblP_Desc.Text + "', '" + lblQty.Text + "') ", con);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("cart.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Product is already in cart!');</script>");
                    Response.Redirect("cart.aspx");
                }
            }
            else
            {
                Response.Redirect("login_form.aspx");
            }

        }

        DataSet selectWish(int pid, int uid)
        {
            da = new SqlDataAdapter("select * from Wishlist_Tbl where P_Id='" + pid + "' and User_Id='" + uid + "' ", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }



        protected void btnWishList_Click(object sender, EventArgs e)
        {
            if (Session["user_id"] != null)
            {
                ds = new DataSet();
                pid = Convert.ToInt32(Request.QueryString["p_id"]);
                ds = selectWish(pid, Convert.ToInt32(Session["user_id"]));


                if (ds.Tables[0].Rows.Count == 0)
                {
                    cmd = new SqlCommand("insert into Wishlist_Tbl (User_Id, P_Id, P_Name, P_Image, Qty, P_Price, P_Desc) values('" + Session["user_id"] + "', '" + pid + "', '" + lblP_Name.Text + "', '" + P_Image.ImageUrl + "', '" + lblQty.Text + "', '" + lblP_Price.Text + "', '" + lblP_Desc.Text + "') ", con);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("wishlist.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Product is already in wishlist!');</script>");
                    Response.Redirect("wishlist.aspx");
                }

            }
            else
            {
                Response.Redirect("login_form.aspx");
            }

        }

        protected void btnPlus_Click(object sender, EventArgs e)
        {

            ViewState["qty"] = Convert.ToInt32(lblQty.Text);
            int qty = (int)ViewState["qty"];
            qty++;
            ViewState["qty"] = qty;
            lblQty.Text = qty.ToString();
        }

        protected void btnMinus_Click(object sender, EventArgs e)
        {
            ViewState["qty"] = Convert.ToInt32(lblQty.Text);
            int qty = (int)ViewState["qty"];

            if (qty > 1)
            {
                qty--;
                ViewState["qty"] = qty;
                lblQty.Text = ViewState["qty"].ToString();
            }

        }
    }
}