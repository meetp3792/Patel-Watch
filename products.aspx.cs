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
    public partial class products : System.Web.UI.Page
    {
        string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Patel.mdf;Integrated Security=True";
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        int rowcnt, c_id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            if (!IsPostBack)
            {
                PopulateCategoryDropDown();

                // Check if query string exists
                if (Request.QueryString["catid"] != null)
                {
                    c_id = Convert.ToInt32(Request.QueryString["catid"]);
                    categoryDropDown.SelectedIndex = c_id;
                    lblTitle.Text = categoryDropDown.SelectedItem.Text;
                }
            }
            filldatalist();
        }
        void getcon()
        {
            con = new SqlConnection(conStr);
            con.Open();
        }


        DataSet fillProduct(int c_id)
        {

            if (c_id == 0)
            {
                da = new SqlDataAdapter("select * from Products_Tbl", con);
                ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
            else
            {
                da = new SqlDataAdapter("select * from Products_Tbl where C_Id='" + c_id + "'", con);
                ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        }

        void filldatalist()
        {

            ProductsDataList.DataSource = fillProduct(c_id);
            ProductsDataList.DataBind();
        }
        void PopulateCategoryDropDown()
        {
            da = new SqlDataAdapter("select C_Id, C_Name from Category_Tbl", con);
            ds = new DataSet();
            da.Fill(ds);

            rowcnt = ds.Tables[0].Rows.Count;

            for (int i = 0; i < rowcnt; i++)
            {
                categoryDropDown.Items.Add(ds.Tables[0].Rows[i][1].ToString());
            }
        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            c_id = categoryDropDown.SelectedIndex;
            lblTitle.Text = categoryDropDown.SelectedValue;
            filldatalist();
        }
    }
}