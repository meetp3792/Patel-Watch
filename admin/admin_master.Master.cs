using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Patel02.admin
{
    public partial class admin_master : System.Web.UI.MasterPage
   {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"]!=null)
            {
                lbluser.Text = Session["user_name"].ToString();
            }
            else
            {
                Response.Write("<script>window.location.href='../login_form.aspx'</script>");
            }
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {

        }
    }
}