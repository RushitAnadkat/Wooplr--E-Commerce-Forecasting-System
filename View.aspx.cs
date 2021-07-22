using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class View : System.Web.UI.Page
{
    String aa;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            aa = Request.QueryString["id"].ToString();
        }
        if (aa == "1")
        {
            Label2.Text = "samsung";
        }
        else
        {
            Label2.Text = "apple";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if(e.CommandName=="add")
        {
            Response.Redirect("cart.aspx?id="+e.CommandArgument.ToString());
        }
        if (e.CommandName == "viewmore")
        {
            Response.Redirect("product.aspx?id=" + e.CommandArgument.ToString());
        }
    }
}
