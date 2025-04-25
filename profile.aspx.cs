using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Patel02
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblSesUser.Text = Session["user_name"].ToString();
        }

       

        protected void lbtnLogout_Click1(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}