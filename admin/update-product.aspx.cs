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
    public partial class update_product : System.Web.UI.Page
    {
        string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Patel.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string fnm;
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            PopulateCategoryDropDown();
            if (!IsPostBack)
            {
                filltext();
            }
        }
        void getcon()
        {
            con = new SqlConnection(conStr);
            con.Open();
        }
        void imgupload()
        {
            if (p_img.HasFile)
            {
                fnm = "../img/" + p_img.FileName;
                p_img.SaveAs(Server.MapPath(fnm));
            }

        }
        DataSet select(int id)
        {
            da = new SqlDataAdapter("select * from Products_Tbl where P_Id='" + id + "' ", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        void filltext()
        {
            if (Request.QueryString["id"] != null)
            {
                id = Convert.ToInt32(Request.QueryString["id"]);
                ds = select(id);
                p_name.Text = (ds.Tables[0].Rows[0][1]).ToString();
                fnm = (ds.Tables[0].Rows[0][2]).ToString();
                p_mrp.Text = (ds.Tables[0].Rows[0][3]).ToString();
                p_price.Text = (ds.Tables[0].Rows[0][4]).ToString();
                p_desc.Text = (ds.Tables[0].Rows[0][5]).ToString();
                categoryDropDown.SelectedValue = (ds.Tables[0].Rows[0][6]).ToString();
            }
        }
        void PopulateCategoryDropDown()
        {
            cmd = new SqlCommand("select C_Id, C_Name from Category_Tbl", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                ListItem item = new ListItem();
                item.Text = reader["C_Name"].ToString(); // Assuming "c_name" is the column name for category names
                item.Value = reader["C_Id"].ToString(); // Assuming "c_id" is the column name for category IDs
                categoryDropDown.Items.Add(item);
            }
            reader.Close();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            // Get the original values from the database
            DataSet originalData = select(Convert.ToInt32(Request.QueryString["id"]));
            string originalName = originalData.Tables[0].Rows[0]["P_Name"].ToString();
            string originalImage = originalData.Tables[0].Rows[0]["P_Image"].ToString();
            string originalMrp = originalData.Tables[0].Rows[0]["P_Mrp"].ToString();
            string originalPrice = originalData.Tables[0].Rows[0]["P_Price"].ToString();
            string originalDesc = originalData.Tables[0].Rows[0]["P_Desc"].ToString();
            string originalQty = originalData.Tables[0].Rows[0]["Qty"].ToString();
            string originalC_id = originalData.Tables[0].Rows[0]["C_Id"].ToString();


            // Check if the values have been changed
            bool nameChanged = (p_name.Text != originalName);
            bool imageChanged = p_img.HasFile;
            bool mrpChanged = (p_mrp.Text != originalName);
            bool priceChanged = (p_price.Text != originalName);
            bool descChanged = (p_desc.Text != originalName);
            bool qtyChanged = (qty.Text != originalName);
            bool c_idChanged = (categoryDropDown.SelectedIndex != Convert.ToInt32(originalC_id));



            // If either the name or image has been changed, update the database
            if (nameChanged || imageChanged || mrpChanged || priceChanged || descChanged || qtyChanged || c_idChanged)
            {
                imgupload();
                string newName = nameChanged ? p_name.Text : originalName;
                string newImage = imageChanged ? fnm : originalImage;
                string newMrp = mrpChanged ? p_mrp.Text : originalMrp;
                string newPrice = priceChanged ? p_price.Text : originalPrice;
                string newDesc = descChanged ? p_desc.Text : originalDesc;
                string newQty = qtyChanged ? qty.Text : originalQty;
                int newC_id = c_idChanged ? categoryDropDown.SelectedIndex : Convert.ToInt32(originalC_id);

                cmd = new SqlCommand("update Products_Tbl set P_Name='" + newName + "',P_Image='" + newImage + "',P_Mrp='" + newMrp + "',P_Price='" + newPrice + "',P_Desc='" + newDesc + "',Qty='" + newQty + "',C_Id='" + newC_id + "' where P_Id='" + Request.QueryString["id"] + "'", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Product Details updated');</script>");

            }
            else
            {
                Response.Write("<script>alert('No changes detected');</script>");
            }
            Response.Write("<script>window.location.href='manage-product.aspx'</script>");
        }
    }
}