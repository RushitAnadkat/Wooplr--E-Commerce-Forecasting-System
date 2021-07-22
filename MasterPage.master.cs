using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
    SqlConnection con;
    SqlCommand com;
    //SqlDataReader r;

    protected void Page_Load(object sender, EventArgs e)
    {
        con=new SqlConnection(ConfigurationManager.ConnectionStrings["csmydb"].ConnectionString);
        com=con.CreateCommand();
        if (!IsPostBack)
        {
            ListItem i = new ListItem();
            i.Text = "";
            i.Value = "-1";
            i.Selected = true;
            
            //company_menu.SelectedIndex = 0;
        }
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {

    }

    protected void company_menu_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (company_menu.SelectedValue == "1")
        {
            Response.Redirect("View.aspx?id=" + 1);
        }
        if (company_menu.SelectedValue == "2")
        {
            Response.Redirect("View.aspx?id=" + 2);
        }
    }
    protected void filter_menu_Click(object sender, EventArgs e)
    {
        Response.Redirect("view.aspx?id=" + 11);
    }
    protected void compare_menu_Click(object sender, EventArgs e)
    {
        Response.Redirect("cart.aspx");
    }
}
