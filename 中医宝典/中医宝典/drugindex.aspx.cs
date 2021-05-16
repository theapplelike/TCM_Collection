using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 中药检索
{
    public partial class drugindex1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string text = TextBox1.Text.Trim();
            Response.Redirect("drugsearch.aspx?text=" + text);
        }
    }
}