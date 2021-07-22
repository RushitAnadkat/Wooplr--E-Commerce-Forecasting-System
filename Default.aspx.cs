using System;
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

public partial class _Default : System.Web.UI.Page 
{
    SqlConnection con;
    SqlCommand com;
    SqlDataReader red;
    //int id;

    protected void Page_Load(object sender, EventArgs e)
    {

        con = new SqlConnection(ConfigurationManager.ConnectionStrings["csmydb"].ConnectionString);
        com = con.CreateCommand();
        if (!Page.IsPostBack)
        {
            String u = Request.QueryString["u"];
            if (u == "1")
            {
                Label17.Text = "Incorrect username and/or password";
                //Label17.ForeColor = ;
            }
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["csmydb"].ConnectionString);
        SqlCommand com = con.CreateCommand();
        com.CommandText = "insert into w_users(Name,Email,Mobile,S_que,S_ans,Pwd) values (@txtUname,@txtEmail,@txtMobile,@ddlQue,@txtAns,@txtPwd)";
        com.Parameters.AddWithValue("@txtUname", txtUname.Text);
        com.Parameters.AddWithValue("@txtEmail", txtEmail.Text);
        com.Parameters.AddWithValue("@txtMobile", txtMobile.Text);
        com.Parameters.AddWithValue("@ddlQue", ddlQue.Text);
        com.Parameters.AddWithValue("@txtAns", txtAns.Text);
        com.Parameters.AddWithValue("@txtPwd", txtPwd.Text);

        con.Open();
        int res = com.ExecuteNonQuery();
        con.Close();

        if (res > 0)
        {
            Label2.Text = "record inserted successfully";
        }
        else
        {
            Label2.Text = "could not insert record";
        }

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["csmydb"].ConnectionString);
        com = con.CreateCommand();
        com.CommandText = "select * from w_users where Email=@email and Pwd=@pwd";
        com.Parameters.AddWithValue("@email",TextBox1.Text);
        com.Parameters.AddWithValue("@pwd", TextBox2.Text);
        con.Open();
        red= com.ExecuteReader();
        if (red.HasRows)
        {
            Response.Write("teru");
        }
        else
        {
            Response.Redirect("~/Default.aspx?u="+1);

            Label17.Text = "Incorrect username and/or password.";
        }
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        com.CommandText = "select * from w_users where Email=@email";
        com.Parameters.AddWithValue("@email", TextBox3.Text);
        con.Open();

        red = com.ExecuteReader();
        TextBox7.Text = TextBox3.Text;
        if (red.HasRows)
        {
            MultiView1.ActiveViewIndex = 2;
            red.Read();
            int a = Convert.ToInt32(red["S_que"].ToString());
            if (a == 1)
            {
                Label6.Text = "Your First Phone Number ?";
            }
            else if (a == 2)
            {
                Label6.Text = "Your School Name ?";
            }
            else if (a == 3)
            {
                Label6.Text = "Your Vehicle Number Plate";
            }

        }
        else
        {
            Response.Write("Sorry Entered Username doesn't Exist");
        }
        con.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        TextBox8.Text = TextBox7.Text;
        Label13.Text = Label6.Text;
        TextBox9.Text = TextBox4.Text;

        com.CommandText = "select * from w_users where S_ans=@ans";
        com.Parameters.AddWithValue("@ans", TextBox4.Text);
        con.Open();
        red = com.ExecuteReader();
        if (red.HasRows)
        {
            MultiView1.ActiveViewIndex = 3;
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        com.CommandText = "update w_users set Pwd=@pwd where Email=@email";
        com.Parameters.AddWithValue("@pwd",TextBox6.Text);
        com.Parameters.AddWithValue("@email", TextBox3.Text);

        con.Open();
        int res = com.ExecuteNonQuery();
        
        if (res > 0)
        {
            MultiView1.ActiveViewIndex = 0;
        }
        else
        {
            Response.Write("sorry record can't be inserted");
        }
        con.Close();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 4;
    }
    protected void lbtnLogin_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
}
