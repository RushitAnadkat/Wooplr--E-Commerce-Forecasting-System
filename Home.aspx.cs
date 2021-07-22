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

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "add")
        {
            Response.Redirect("cart.aspx?id=" + e.CommandArgument.ToString());
        }
        if (e.CommandName == "viewmore")
        {
            Response.Redirect("product.aspx?id=" + e.CommandArgument.ToString());
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "add")
        {
            Response.Redirect("cart.aspx?id=" + e.CommandArgument.ToString());
        }
        if (e.CommandName == "viewmore")
        {
            Response.Redirect("product.aspx?id=" + e.CommandArgument.ToString());
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("view.aspx?id=" + 1);
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("view.aspx?id=" + 2);
    }
}
