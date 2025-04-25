using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Patel02
{
    public partial class index : System.Web.UI.Page
    {
        string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\MEET\OneDrive\Desktop\Patel02\App_Data\Patel.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
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
        DataSet fillCategory()
        {
            da = new SqlDataAdapter("select * from Category_Tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        DataSet fillProduct()
        {
            da = new SqlDataAdapter("SELECT TOP 6 * FROM Products_Tbl ORDER BY NEWID()", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        DataSet fillTestimonials()
        {
            da = new SqlDataAdapter("SELECT TOP 4 * FROM Testimonial_Tbl ORDER BY NEWID()", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }


        void filldatalist()
        {
            dlCategories.DataSource = fillCategory();
            dlCategories.DataBind();

            DataListProducts.DataSource = fillProduct();
            DataListProducts.DataBind();


        }

    }
}