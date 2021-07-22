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

public partial class product : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com;
    SqlDataReader red;
    String aab;

  
    protected void Page_Load(object sender, EventArgs e)
    {
        String aa=Request.QueryString["id"].ToString();
        MultiView1.ActiveViewIndex = 0;
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        com = con.CreateCommand();
        com.CommandText = "select * from w_product where P_id=@pid";
        com.Parameters.AddWithValue("@pid", aa);
        con.Open();
        red = com.ExecuteReader();
        red.Read();
        name.Text = red["Name"].ToString();
        version.Text=red["Version"].ToString();
        ldate.Text=red["Launch_Date"].ToString();
        ram.Text=red["Ram"].ToString();
        rom.Text=red["Rom"].ToString();
        battery.Text=red["Battery"].ToString();
        processor.Text=red["Processor"].ToString();
        weight.Text=red["Weight"].ToString();
        price.Text=red["Price"].ToString();
        color.Text=red["Color"].ToString();
        sensor.Text=red["Sensor"].ToString();
        fcamera.Text=red["F_camera"].ToString();
        bcamera.Text=red["B_camera"].ToString();
        pdesc.Text=red["P_desc"].ToString();
        aab = red["P_id"].ToString();
       
        con.Close();
    }
    protected void forcast_button_Click(object sender, EventArgs e)
    {
        Panel3.Visible = true;
    }
    protected void compare_dropdown_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Image1.Visible = true;
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        com = con.CreateCommand();
        com.CommandText = "select * from w_product where P_id=@pid";
        com.Parameters.AddWithValue("@pid", DropDownList1.SelectedValue.ToString());
        con.Open();
        red = com.ExecuteReader();
        red.Read();
        name0.Text = red["Name"].ToString();
        version0.Text = red["Version"].ToString();
        ldate0.Text = red["Launch_Date"].ToString();
        ram0.Text = red["Ram"].ToString();
        rom0.Text = red["Rom"].ToString();
        battery0.Text = red["Battery"].ToString();
        processor0.Text = red["Processor"].ToString();
        weight0.Text = red["Weight"].ToString();
        price0.Text = red["Price"].ToString();
        color0.Text = red["Color"].ToString();
        sensor0.Text = red["Sensor"].ToString();
        fcamera0.Text = red["F_camera"].ToString();
        bcamera0.Text = red["B_camera"].ToString();
        pdesc0.Text = red["P_desc"].ToString();

        con.Close();

    }
    protected void cart_button_Click(object sender, EventArgs e)
    {
        Response.Redirect("cart.aspx?id="+aab);
    }
}
