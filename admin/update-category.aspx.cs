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
    public partial class update_category : System.Web.UI.Page
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
            if (c_img.HasFile)
            {
                fnm = "../img/" + c_img.FileName;
                c_img.SaveAs(Server.MapPath(fnm));
            }

        }
        DataSet select(int id)
        {
            da = new SqlDataAdapter("select * from Category_Tbl where C_Id='" + id + "' ", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            // Get the original values from the database
            DataSet originalData = select(Convert.ToInt32(Request.QueryString["id"]));
            string originalName = originalData.Tables[0].Rows[0]["C_Name"].ToString();
            string originalImage = originalData.Tables[0].Rows[0]["C_Image"].ToString();

            // Check if the values have been changed
            bool nameChanged = (c_name.Text != originalName);
            bool imageChanged = c_img.HasFile;

            // If either the name or image has been changed, update the database
            if (nameChanged || imageChanged)
            {
                imgupload();
                string newName = nameChanged ? c_name.Text : originalName;
                string newImage = imageChanged ? fnm : originalImage;
                cmd = new SqlCommand("update Category_Tbl set C_Name='" + newName + "',C_Image='" + newImage + "' where C_Id='" + Request.QueryString["id"] + "'", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Category Details updated');</script>");

            }
            else
            {
                Response.Write("<script>alert('No changes detected');</script>");
            }
            Response.Write("<script>window.location.href='manage-categories.aspx'</script>");
        }

        void filltext()
        {
            if (Request.QueryString["id"] != null)
            {
                id = Convert.ToInt32(Request.QueryString["id"]);
                ds = select(id);
                c_id.Text = id.ToString();
                c_name.Text = (ds.Tables[0].Rows[0][1]).ToString();
                fnm = (ds.Tables[0].Rows[0][2]).ToString();
            }
        }
    }
}