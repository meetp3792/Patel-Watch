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
    public partial class add_product : System.Web.UI.Page
    {
        string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Patel.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string fnm;
        int rowcnt;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            PopulateCategoryDropDown();
        }
        void getcon()
        {
            con = new SqlConnection(conStr);
            con.Open();
        }
        void imgupload()
        {
            fnm = "../img/" + p_img.FileName;
            p_img.SaveAs(Server.MapPath(fnm));
        }
        void PopulateCategoryDropDown()
        {
            //cmd = new SqlCommand("select C_Id, C_Name from Category_Tbl", con);
            //SqlDataReader reader = cmd.ExecuteReader();
            //while (reader.Read())
            //{
            //    ListItem item = new ListItem();
            //    item.Text = reader["C_Name"].ToString(); // Assuming "c_name" is the column name for category names
            //    item.Value = reader["C_Id"].ToString(); // Assuming "c_id" is the column name for category IDs
            //    categoryDropDown.Items.Add(item);
            //}
            //reader.Close();

            da = new SqlDataAdapter("select C_Id, C_Name from Category_Tbl", con);
            ds = new DataSet();
            da.Fill(ds);

            rowcnt = ds.Tables[0].Rows.Count;

            for (int i = 0; i < rowcnt; i++)
            {
                categoryDropDown.Items.Add(ds.Tables[0].Rows[i][1].ToString());
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            imgupload();
            cmd = new SqlCommand("insert into Products_Tbl (P_Name, P_Image, P_Mrp, P_Price, P_Desc, C_Id, Qty) values('" + p_name.Text + "', '" + fnm + "', '" + p_mrp.Text + "', '" + p_price.Text + "', '" + p_desc.Text + "', '" + categoryDropDown.SelectedIndex + "', '" + qty.Text + "')", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Product added successfully');</script>");
            Response.Write("<script>window.location.href='manage-product.aspx'</script>");
        }
    }
}