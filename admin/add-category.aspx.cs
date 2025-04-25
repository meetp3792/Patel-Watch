using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Patel02.admin
{
    public partial class add_category : System.Web.UI.Page
    {
        string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Patel.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;
        string fnm;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
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

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            imgupload();
            cmd = new SqlCommand("insert into Category_Tbl (C_Name, C_Image) values('" + c_name.Text + "', '" + fnm + "')", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Category added successfully');</script>");
            Response.Write("<script>window.location.href='manage-categories.aspx'</script>");
        }
    }
}