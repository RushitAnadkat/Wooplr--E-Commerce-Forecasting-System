<%@ Page Language="C#" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="product" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style2
        {
            width: 70px;
        }
        .style3
        {
            width: 82px;
        }
        .style4
        {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    
        <asp:Localize ID="Localize1" runat="server"></asp:Localize>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <table style="width:100%;">
                    <tr>
                        <td align="center">
                            <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="SqlDataSource1" 
                                Height="300px" Width="350px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Image ID="Image1" runat="server" Height="300px" 
                                ImageUrl="~/Images/Product_images/001.jpg" Visible="False" Width="350px" />
                            &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT [AlternateText], [ImageUrl], [Impressions] FROM [w_pro_images] WHERE ([pid] = @pid)">
                                <SelectParameters>
                                    <asp:QueryStringParameter DefaultValue="16" Name="pid" QueryStringField="pid" 
                                        Type="Decimal" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                            <br />
                            <asp:Button ID="nxt" runat="server" BackColor="Red" ForeColor="Lime" 
                                Text="Next" />
                            <br />
                            <br />
                            <br />
                            <asp:Panel ID="Panel1" runat="server">
                                <table align="left" bgcolor="White" border="1" style="width:50%;" width="100">
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="w_name" runat="server" Text="Name"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:Label ID="name" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="w_version" runat="server" Text="Version"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:Label ID="version" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="w_ldate" runat="server" Text="Launch Date"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:Label ID="ldate" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="w_ram" runat="server" Text="RAM"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:Label ID="ram" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="w_rom" runat="server" Text="ROM"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:Label ID="rom" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="w_battery" runat="server" Text="Battery"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:Label ID="battery" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="w_pro" runat="server" Text="Processor"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:Label ID="processor" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="w_weight" runat="server" Text="Weight"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:Label ID="weight" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="w_price" runat="server" Text="Price"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:Label ID="price" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="w_color" runat="server" Text="Color"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:Label ID="color" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="w_sensor" runat="server" Text="Sensor"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:Label ID="sensor" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="w_fcamera" runat="server" Text="Front Camera"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:Label ID="fcamera" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="w_bcamera" runat="server" Text="Back Camera"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:Label ID="bcamera" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="w_desc" runat="server" Text="Product Description"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:Label ID="pdesc" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <asp:Panel ID="Panel2" runat="server" Height="429px" Visible="False" 
                                Width="732px">
                                <table align="left" bgcolor="White" border="1" style="width:50%;" width="100">
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="w_name0" runat="server" Text="Name"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:Label ID="name0" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="w_version0" runat="server" Text="Version"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:Label ID="version0" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="w_ldate0" runat="server" Text="Launch Date"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:Label ID="ldate0" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="w_ram0" runat="server" Text="RAM"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:Label ID="ram0" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="w_rom0" runat="server" Text="ROM"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:Label ID="rom0" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="w_battery0" runat="server" Text="Battery"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:Label ID="battery0" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="w_pro0" runat="server" Text="Processor"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:Label ID="processor0" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="w_weight0" runat="server" Text="Weight"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:Label ID="weight0" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="w_price0" runat="server" Text="Price"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:Label ID="price0" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="w_color0" runat="server" Text="Color"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:Label ID="color0" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="w_sensor0" runat="server" Text="Sensor"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:Label ID="sensor0" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="w_fcamera0" runat="server" Text="Front Camera"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:Label ID="fcamera0" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="w_bcamera0" runat="server" Text="Back Camera"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:Label ID="bcamera0" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="w_desc0" runat="server" Text="Product Description"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            <asp:Label ID="pdesc0" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <br />
                            <br />
                            <br />
                            <br />
                            <asp:Button ID="cart_button" runat="server" Font-Size="Medium" 
                                Text="Add To Cart" />
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="name_forcast" runat="server" Text="Compare:" Font-Size="Large"></asp:Label>
                            &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                Font-Size="Large">
                                <asp:ListItem Value="0">Select</asp:ListItem>
                                <asp:ListItem Value="1">Samsung</asp:ListItem>
                                <asp:ListItem>Apple</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;&nbsp;
                            <asp:DropDownList ID="compare_dropdown" runat="server" AutoPostBack="True" 
                                Font-Size="Large" 
                                onselectedindexchanged="compare_dropdown_SelectedIndexChanged">
                                <asp:ListItem Value="1">Select</asp:ListItem>
                                <asp:ListItem>Samasung s10</asp:ListItem>
                                <asp:ListItem>Samsung smart pro</asp:ListItem>
                                <asp:ListItem>iphone pro</asp:ListItem>
                                <asp:ListItem>iphone11</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="forcast_button" runat="server" onclick="forcast_button_Click" 
                                Text="Forecasting" Font-Size="Large" />
                            <br />
                            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Home.aspx">Home</asp:LinkButton>
                            <br />
                            <br />
                            <br />
                            <asp:Panel ID="Panel3" runat="server" Visible="False">
                            
                                <br />
                                <asp:Label ID="month_forcast" runat="server" BackColor="#FF3300" 
                                    Font-Size="X-Large" ForeColor="#663300" Text="FORECASTING"></asp:Label>
                                <br />
                                <table style="width:100%; font-family: 'Minion Pro Cond'; color: #800080; font-size: 25px; font-weight: bolder;" 
                                    border="5" cellpadding="6" cellspacing="5">
                                    <tr>
                                        <td>
                                            Name:</td>
                                        <td>
                                            Samsung s10</td>
                                    </tr>
                                    <tr>
                                        <td class="style4">
                                            Price:</td>
                                        <td class="style4">
                                            <asp:Label ID="price_forcast" runat="server" BackColor="#00CC00" 
                                                Text="Increased 58 %"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Sell:</td>
                                        <td>
                                            <asp:Label ID="sell_forcast" runat="server" BackColor="#00CC00" 
                                                Text="Increased 80%"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Rating:</td>
                                        <td>
                                            <asp:Label ID="rating_forcast" runat="server" Text="4.3 Star"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <br />
                                <asp:Label ID="future_forcast" runat="server" BorderColor="#FF3399" 
                                    BorderStyle="Dotted" Font-Overline="False" Font-Size="25pt" 
                                    Text="FUTURE 75 % GROWTH" Font-Names="Informal Roman"></asp:Label>
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
            </asp:View>
            <br />
        </asp:MultiView>
    
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
