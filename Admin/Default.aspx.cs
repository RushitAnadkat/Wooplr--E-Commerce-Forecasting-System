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
    SqlDataReader dr;
    int imgid = 0;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["csmydb"].ConnectionString);
        com = con.CreateCommand();
        
        if (!Page.IsPostBack)
        {
            MultiView1.ActiveViewIndex = 2;
           
            com.CommandText = "select * from w_company";
            con.Open();
            dr = com.ExecuteReader();
            ddp_company.DataSource = dr;
            ddp_company.DataTextField = "Company_nm";
            ddp_company.DataValueField = "Companyid";
            ddp_company.DataBind();
            dr.Close();
            con.Close();
            ListItem i = new ListItem();
            i.Text = "select";
            i.Value = "-1";
            i.Selected = true;
            ddp_company.Items.Insert(0, i);
            ddp_company.SelectedIndex = 0;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string ram, rom, sensor;
        string color="";
        int cid=0;
        if ((txt_proc_nm.Text != "" )&& (ddp_company.SelectedValue!="-1") && (txtversion.Text!="") && (txtdesc.Text!="") && (txt_ldate.Text!="")&&(txtbattery.Text!="")&&(txt_weight.Text!="") &&(txt_price.Text!="") &&(txt_fcamera.Text!="")&&(txt_bcamera.Text!=""))
        {
            if (rdb_ram2.Checked)
            {
                ram = rdb_ram2.Text;
            }
            else if (rdb_ram4.Checked)
            {
                ram = rdb_ram4.Text;
            }
            else
            {
                ram = rdb_ram6.Text;
            }
            //Rom
            if (rdb_rom16.Checked)
            {
                rom = rdb_rom16.Text;
            }
            else if (rdb_rom32.Checked)
            {
                rom = rdb_rom32.Text;
            }
            else if (rdb_rom64.Checked)
            {
                rom = rdb_rom64.Text;
            }
            else
            {
                rom = rdb_rom128.Text;
            }
            //Sensor
            if (rdb_sensorY.Checked)
            {
                sensor = rdb_sensorY.Text;
            }
            else
            {
                sensor = rdb_sensorN.Text;
            }
            //Color
            if (chk_black.Checked)
            {
                color += chk_black.Text;
            }
            if (chk_grey.Checked)
            {
                color += chk_grey.Text;
            }
            if (chk_white.Checked)
            {
                color += chk_white.Text;
            }
            if (chk_blue.Checked)
            {
                color += chk_blue.Text;
            }
            if (ddp_company.Items.Count>0)
            {
                com.CommandText = "select Companyid from w_company where Company_nm=@cnm";
                com.Parameters.AddWithValue("@cnm", ddp_company.SelectedItem.ToString());
                con.Open();
                dr = com.ExecuteReader();
                dr.Read();
                cid = int.Parse(dr["Companyid"].ToString());
                con.Close();
            }
            com.CommandText = "insert into w_product (Name,Version,P_desc,Launch_Date,Ram,Rom,Battery,Processor,Weight,Price,Color,Sensor,F_camera,B_camera,cid) values (@nm,@version,@desc,@ldate,@ram,@rom,@batery,@proc,@weight,@price,@color,@sensor,@fc,@bc,@cid)";
            com.Parameters.AddWithValue("@nm", txt_proc_nm.Text);
            com.Parameters.AddWithValue("@version", txtversion.Text);
            com.Parameters.AddWithValue("@desc", txtdesc.Text);
            com.Parameters.AddWithValue("@ldate", txt_ldate.Text);
            com.Parameters.AddWithValue("@ram", ram.ToString());
            com.Parameters.AddWithValue("@rom", rom.ToString());
            com.Parameters.AddWithValue("@batery", txtbattery.Text);
            com.Parameters.AddWithValue("@proc", txt_process.Text);
            com.Parameters.AddWithValue("@weight", txt_weight.Text);
            com.Parameters.AddWithValue("@price", txt_price.Text);
            com.Parameters.AddWithValue("@color", color.ToString());
            com.Parameters.AddWithValue("@sensor", sensor.ToString());
            com.Parameters.AddWithValue("@fc", txt_fcamera.Text);
            com.Parameters.AddWithValue("@bc", txt_bcamera.Text);
            com.Parameters.AddWithValue("@cid", cid.ToString());
            con.Open();
            int res = com.ExecuteNonQuery();
            con.Close();
            
            
            if (res>0)
            {
                Response.Write("Sucess");
            }
            else
            {
                Response.Write("Failure");
            }
            con.Close();
       }

    }
   protected void btn_image1_Click(object sender, EventArgs e)
    {
      
       

    }
   protected void btn_imageall_Click(object sender, EventArgs e)
   {
       String path = Server.MapPath("Images/Product_images");
       String upload_path = path + "/" + image1.FileName;
       String upload_path1 = path + "/" + image2.FileName;
       String upload_path2 = path + "/" + image3.FileName;
       String upload_path3 = path + "/" + image4.FileName;
       image1.SaveAs(upload_path);
       image2.SaveAs(upload_path);
       image3.SaveAs(upload_path);
       image4.SaveAs(upload_path);
       lbl_image1.Text = image1.FileName;
       lbl_image2.Text = image2.FileName;
       lbl_image3.Text = image3.FileName;
       lbl_image4.Text = image4.FileName;
       
       int r = 0;
        com.CommandText = "Insert into w_pro_images (ImageUrl,Impressions,AlternateText,pid) values (@imgpath1,@imp1,@alter1,@pid1)";
        String nm = "./Images/Product_images/" + image1.FileName;
        com.Parameters.AddWithValue("@imgpath1", nm);
        com.Parameters.AddWithValue("@imp1", " 2");
        com.Parameters.AddWithValue("@alter1", "Image will be seen Soon");
        com.Parameters.AddWithValue("@pid1", DropDownList1.SelectedValue);
        con.Open();
         r = com.ExecuteNonQuery();
        con.Close();

        com.CommandText = "Insert into w_pro_images (ImageUrl,Impressions,AlternateText,pid) values (@imgpath2,@imp2,@alter2,@pid2)";
        String nm1 = "./Images/Product_images/" + image2.FileName;
        com.Parameters.AddWithValue("@imgpath2", nm1);
        com.Parameters.AddWithValue("@imp2", " 2");
        com.Parameters.AddWithValue("@alter2", "Image will be seen Soon");
        com.Parameters.AddWithValue("@pid2", DropDownList1.SelectedValue);
        con.Open();
         r = com.ExecuteNonQuery();
        con.Close();


        com.CommandText = "Insert into w_pro_images (ImageUrl,Impressions,AlternateText,pid) values (@imgpath3,@imp3,@alter3,@pid3)";
        String nm2 = "./Images/Product_images/" + image3.FileName;
        com.Parameters.AddWithValue("@imgpath3", nm2);
        com.Parameters.AddWithValue("@imp3", " 2");
        com.Parameters.AddWithValue("@alter3", "Image will be seen Soon");
        com.Parameters.AddWithValue("@pid3", DropDownList1.SelectedValue);
        con.Open();
        r = com.ExecuteNonQuery();
        con.Close();

        com.CommandText = "Insert into w_pro_images (ImageUrl,Impressions,AlternateText,pid) values (@imgpath4,@imp4,@alter4,@pid4)";
        String nm3 = "./Images/Product_images/" + image4.FileName;
        com.Parameters.AddWithValue("@imgpath4", nm3);
        com.Parameters.AddWithValue("@imp4", " 2");
        com.Parameters.AddWithValue("@alter4", "Image will be seen Soon");
        com.Parameters.AddWithValue("@pid4", DropDownList1.SelectedValue);
        con.Open();
        r = com.ExecuteNonQuery();
        con.Close();
       if (r > 0)
       {
           Response.Write("Sucess");
       }
       else
       {
           Response.Write("Failure");
       }
       con.Close();
   }
   protected void txtversion_TextChanged(object sender, EventArgs e)
   {
       com.CommandText = "Select * from w_product where Version=@ver";
       com.Parameters.AddWithValue("@ver", txtversion.Text);
       con.Open();
       dr = com.ExecuteReader();
       if (dr.HasRows)
       {
           version_msg.Text = "This Version is not Available for You";
           btnSubmit.Enabled = false;
           txtversion.Focus();
       }
       else
       {
           version_msg.Text = "";
           btnSubmit.Enabled = true;
       }
       dr.Close();
       con.Close();
   }
   protected void btn_add_product0_Click(object sender, EventArgs e)
   {
       MultiView1.ActiveViewIndex = 1;
       com.CommandText = "select * from w_product";
       con.Open();
       dr = com.ExecuteReader();
       DropDownList1.DataSource = dr;
       DropDownList1.DataTextField = "Version";
       DropDownList1.DataValueField = "P_id";
       DropDownList1.DataBind();
       dr.Close();
       con.Close();
       ListItem i = new ListItem();
       i.Text = "select";
       i.Value = "-1";
       i.Selected = true;
       DropDownList1.Items.Insert(0, i);
       DropDownList1.SelectedIndex = 0;

   }
   protected void btn_add_product_Click(object sender, EventArgs e)
   {
       MultiView1.ActiveViewIndex = 0;
   }
   protected void btn_add_product1_Click(object sender, EventArgs e)
   {
       MultiView1.ActiveViewIndex = 2;
   }
   protected void btn_add_product2_Click(object sender, EventArgs e)
   {
       MultiView1.ActiveViewIndex = 3;
   }
   protected void btn_add_product5_Click(object sender, EventArgs e)
   {
       MultiView1.ActiveViewIndex = 5;
   }
   protected void btn_add_product3_Click(object sender, EventArgs e)
   {
       MultiView1.ActiveViewIndex = 4;
   }
}
