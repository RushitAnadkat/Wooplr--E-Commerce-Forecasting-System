<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 420px;
        }
        .style2
        {
            height: 50px;
        }
        .style3
        {
            width: 429px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
    <div>
    
        <br />
        <center>
            <asp:Label ID="Label2" runat="server" Font-Names="Aparajita" Font-Size="50pt" 
            ForeColor="#009900" Text="Welcome Admin" Font-Underline="True"></asp:Label></center>
        <br />
        <br />
    
        <asp:Button ID="btn_add_product" runat="server" BackColor="#0099FF" 
            BorderStyle="Solid" Text="Add Product" Width="250px" 
            onclick="btn_add_product_Click" />
    
        <asp:Button ID="btn_add_product0" runat="server" BackColor="#0099FF" 
            BorderStyle="Solid" Text="Add Images" Width="250px" 
            onclick="btn_add_product0_Click" />
    
        <asp:Button ID="btn_add_product1" runat="server" BackColor="#0099FF" 
            BorderStyle="Solid" Text="View Product" Width="250px" 
            onclick="btn_add_product1_Click" />
    
        <asp:Button ID="btn_add_product2" runat="server" BackColor="#0099FF" 
            BorderStyle="Solid" Text="View Customer" Width="250px" 
            onclick="btn_add_product2_Click" />
    
        <asp:Button ID="btn_add_product3" runat="server" BackColor="#0099FF" 
            BorderStyle="Solid" Text="View Stock" Width="250px" 
            onclick="btn_add_product3_Click" />
    
        <asp:Button ID="btn_add_product4" runat="server" BackColor="#0099FF" 
            BorderStyle="Solid" Text="LogOut" Width="250px" />
    
        <asp:Button ID="btn_add_product5" runat="server" BackColor="#0099FF" 
            BorderStyle="Solid" Text="View Company" Width="250px" 
            onclick="btn_add_product5_Click" />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <asp:MultiView ID="MultiView1" runat="server">

            <asp:View ID="View1" runat="server">
                <table style="width:100%;" border="5" cellpadding="5" cellspacing="5">
                    <tr>
                        <td align="center" colspan="2" style="background-color: #00FF00" class="style2">
                            <asp:Label ID="lbl_add_product" runat="server" Font-Bold="True" 
                                Font-Names="Arial Black" Font-Size="25pt" Font-Underline="False" 
                                Text="Add Product"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="lbl_proc_nm" runat="server" Text="Product Name:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_proc_nm" runat="server" placeholder="Enter Product Name"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="lblCompany" runat="server" Text="Company:"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddp_company" runat="server" Width="150px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="lbl_prod_version" runat="server" Text="Product Version:"></asp:Label>
                        </td>
                        <td>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:TextBox ID="txtversion" runat="server" AutoPostBack="True" 
                                        ontextchanged="txtversion_TextChanged" palceholder="Enter Product Version"></asp:TextBox>
                                    <asp:Label ID="version_msg" runat="server"></asp:Label>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="lblDescription" runat="server" Text="Product Description:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtdesc" runat="server" TextMode="MultiLine" placeholder="Enter Product Description"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="lbl_ldate" runat="server" Text="Launch Date:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_ldate" runat="server" placeholder="dd/mm/yyyy"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="lblram" runat="server" Text="RAM :"></asp:Label>
                        </td>
                        <td>
                            <asp:RadioButton ID="rdb_ram2" runat="server" Checked="True" GroupName="ram" 
                                Text="2 GB" />
                            <asp:RadioButton ID="rdb_ram4" runat="server" GroupName="ram" Text="4 GB" />
                            <asp:RadioButton ID="rdb_ram6" runat="server" GroupName="ram" Text="6 GB" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="lblrom" runat="server" Text="ROM:"></asp:Label>
                        </td>
                        <td>
                            <asp:RadioButton ID="rdb_rom16" runat="server" Checked="True" GroupName="rom" 
                                Text="16 GB" />
                            <asp:RadioButton ID="rdb_rom32" runat="server" GroupName="rom" Text="32 GB" />
                            <asp:RadioButton ID="rdb_rom64" runat="server" GroupName="rom" Text="64 GB" />
                            <asp:RadioButton ID="rdb_rom128" runat="server" GroupName="rom" Text="128 GB" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="lbl_battery" runat="server" Text="Battery:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtbattery" runat="server" placeholder="Enter Battery in Mah"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="lbl_process" runat="server" Text="Processor:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_process" runat="server" placeholder="Enter Processor Snapdragon"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="lbl_weight" runat="server" Text="Weight:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_weight" runat="server" placeholder="Enter Grams"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="lbl_price" runat="server" Text="Price:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_price" runat="server" placeholder="Enter Rupees"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="lbl_color" runat="server" Text="Color:"></asp:Label>
                        </td>
                        <td>
                            <asp:CheckBox ID="chk_black" runat="server" Text="Black" />
                            <asp:CheckBox ID="chk_blue" runat="server" Text="Blue" />
                            <asp:CheckBox ID="chk_grey" runat="server" Text="Grey" />
                            <asp:CheckBox ID="chk_white" runat="server" Checked="True" Text="White" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="lbl_sensor" runat="server" Text="Sensor:"></asp:Label>
                        </td>
                        <td>
                            <asp:RadioButton ID="rdb_sensorY" runat="server" Checked="True" Text="Yes" />
                            <asp:RadioButton ID="rdb_sensorN" runat="server" Text="No" />
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="lbl_fcamera" runat="server" Text="Front-Camera:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_fcamera" runat="server" placeholder="Enter Megapixel"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="lbl_bcamera" runat="server" Text="Back-Camera:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_bcamera" runat="server" placeholder="Enter Megapixel"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                                Text="Submit" />
                        </td>
                        <td>
                            <asp:Button ID="btncancel" runat="server" Text="Cancel" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            
            <asp:View ID="View2" runat="server">
                <table style="width:100%;" border="5" cellpadding="5" cellspacing="5">
                    <tr>
                        <td class="style3">
                            <asp:Label ID="lbl_add_img" runat="server" Text="Add Images:-"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            <asp:Label ID="Label1" runat="server" Text="Select Version:"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            <asp:FileUpload ID="image1" runat="server" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lbl_image1" runat="server"></asp:Label>
                        </td>
                        <td rowspan="4">
                            <asp:Button ID="btn_imageall" runat="server" Font-Size="15pt" Height="35px" 
                                onclick="btn_imageall_Click" Text="Add Images " Width="150px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            <asp:FileUpload ID="image2" runat="server" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbl_image2" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            <asp:FileUpload ID="image3" runat="server" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbl_image3" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            <asp:FileUpload ID="image4" runat="server" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbl_image4" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <table style="width:100%;">
                    <tr>
                        <td align="center" 
                            style="color: #008080; font-size: 35px; font-family: 'Angsana New';">
                            Products
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="P_id" DataSourceID="SqlDataSource1" AllowPaging="True" 
                                BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                                CellPadding="4" CellSpacing="2" ForeColor="Black">
                                <RowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="P_id" HeaderText="P_id" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="P_id" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                    <asp:BoundField DataField="Version" HeaderText="Version" 
                                        SortExpression="Version" />
                                    <asp:BoundField DataField="Launch_Date" HeaderText="Launch_Date" 
                                        SortExpression="Launch_Date" />
                                    <asp:BoundField DataField="Ram" HeaderText="Ram" SortExpression="Ram" />
                                    <asp:BoundField DataField="Rom" HeaderText="Rom" SortExpression="Rom" />
                                    <asp:BoundField DataField="Battery" HeaderText="Battery" 
                                        SortExpression="Battery" />
                                    <asp:BoundField DataField="Processor" HeaderText="Processor" 
                                        SortExpression="Processor" />
                                    <asp:BoundField DataField="Weight" HeaderText="Weight" 
                                        SortExpression="Weight" />
                                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                    <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                                    <asp:BoundField DataField="Sensor" HeaderText="Sensor" 
                                        SortExpression="Sensor" />
                                    <asp:BoundField DataField="F_camera" HeaderText="F_camera" 
                                        SortExpression="F_camera" />
                                    <asp:BoundField DataField="B_camera" HeaderText="B_camera" 
                                        SortExpression="B_camera" />
                                    <asp:BoundField DataField="P_desc" HeaderText="P_desc" 
                                        SortExpression="P_desc" />
                                    <asp:BoundField DataField="company" HeaderText="company" 
                                        SortExpression="company" />
                                    <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" 
                                                CommandArgument='<%# Eval("P_id") %>' CommandName="edit">Edit</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Delete">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton2" runat="server" 
                                                CommandArgument='<%# Eval("P_id") %>' CommandName="delete">Delete</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [w_product]"></asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View4" runat="server">
                <table style="width:100%;">
                    <tr>
                        <td align="center" 
                            style="color: #008080; font-size: 35px; font-family: 'Angsana New';">
                            Customers</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="U_id" datasourceid="SqlDataSource2" AllowPaging="True" 
                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                                <Columns>
                                    <asp:BoundField DataField="U_id" HeaderText="U_id" ReadOnly="True" 
                                        SortExpression="U_id" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                                        SortExpression="Mobile" />
                                </Columns>
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT [U_id], [Name], [Email], [Mobile] FROM [w_users]">
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View5" runat="server">
                <table style="width:100%;">
                    <tr>
                        <td align="center" 
                            style="color: #008080; font-size: 35px; font-family: 'Angsana New';">
                            Stocks</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                                datasourceid="SqlDataSource3" AllowPaging="True" BackColor="#CCCCCC" 
                                BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                                CellSpacing="2" ForeColor="Black">
                                <RowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="Pid" HeaderText="Pid" SortExpression="Pid" />
                                    <asp:BoundField DataField="Cid" HeaderText="Cid" SortExpression="Cid" />
                                    <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                                    <asp:BoundField DataField="Unit_sold" HeaderText="Unit_sold" 
                                        SortExpression="Unit_sold" />
                                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [w_stock]"></asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View6" runat="server">
                <table style="width:100%;">
                    <tr>
                        <td align="center" 
                            style="color: #008080; font-size: 35px; font-family: 'Angsana New';">
                            Company</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="Companyid" datasourceid="SqlDataSource4" AllowPaging="True" 
                                BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                                CellPadding="4" CellSpacing="2" ForeColor="Black">
                                <RowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="Companyid" HeaderText="Companyid" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="Companyid" />
                                    <asp:BoundField DataField="Company_nm" HeaderText="Company_nm" 
                                        SortExpression="Company_nm" />
                                    <asp:BoundField DataField="Company_desc" HeaderText="Company_desc" 
                                        SortExpression="Company_desc" />
                                    <asp:BoundField DataField="Comapny_addr" HeaderText="Comapny_addr" 
                                        SortExpression="Comapny_addr" />
                                    <asp:BoundField DataField="Company_helpno" HeaderText="Company_helpno" 
                                        SortExpression="Company_helpno" />
                                    <asp:BoundField DataField="Company_logo" HeaderText="Company_logo" 
                                        SortExpression="Company_logo" />
                                    <asp:BoundField DataField="path" HeaderText="path" SortExpression="path" />
                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton3" runat="server" 
                                                CommandArgument='<%# Eval("Companyid") %>' CommandName="edit">Edit</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Delete">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton4" runat="server" 
                                                CommandArgument='<%# Eval("Companyid") %>' CommandName="delete">Delete</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [w_company]"></asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </asp:View>
            <br />
            
        </asp:MultiView>
    
    </div>
    </form>
</body>
</html>
