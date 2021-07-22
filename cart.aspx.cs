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
using System.Data.SqlClient;

public partial class cart : System.Web.UI.Page
{
    String aa;
    SqlConnection con;
    SqlCommand com;
    SqlDataReader red;
    protected void Page_Load(object sender, EventArgs e)
    {
        aa = Request.QueryString["id"].ToString();
        MultiView1.ActiveViewIndex = 0;
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["csmydb"].ConnectionString);
        com=con.CreateCommand();
        com.CommandText = "select * from w_product where P_id=@pid";
        com.Parameters.AddWithValue("@pid", aa);
        con.Open();
        red = com.ExecuteReader();
        red.Read();
        Label1.Text = red["Name"].ToString();
        Label2.Text=red["Price"].ToString();
        Label3.Text=red["Price"].ToString();
        Label4.Text=red["Price"].ToString();
        Label13.Text = red["Version"].ToString();
        con.Close();

        
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        Button1.Enabled = true;
        
    }
}
