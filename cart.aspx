<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table style="width:100%;">
                <tr>
                    <td align="center">
                        <asp:Label ID="site_name" runat="server" Font-Bold="True" 
                            Font-Names="Monotype Corsiva" Font-Size="68pt" ForeColor="#DF0632" 
                            Text="Wooplr"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Label ID="site_name0" runat="server" Font-Bold="True" 
                            Font-Names="Monotype Corsiva" Font-Size="40pt" ForeColor="Aqua" 
                            Text="Add To Cart"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table style="width:100%; font-family: Arial; font-size: 20px;" border="5" 
                            cellpadding="4" cellspacing="4">
                            <tr>
                                <td>
                                    Sr. No.</td>
                                <td>
                                    Product Name.</td>
                                <td>
                                    Qty.</td>
                                <td>
                                    Price</td>
                                <td>
                                    Amount</td>
                            </tr>
                            <tr>
                                <td>
                                    1</td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                    &nbsp;
                                    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td>
                                    1</td>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="4">
                                    Total
                                </td>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="5">
                                    Address:-</td>
                            </tr>
                            <tr>
                                <td align="center" colspan="4">
                                    <asp:Button ID="Button1" runat="server" Enabled="False" onclick="Button1_Click" 
                                        Text="Buy Now" Width="195px" />
                                </td>
                                <td>
                                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Add 
                                    Details</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </asp:View>
        
        <asp:View ID="View2" runat="server">
            <center> <h1 style="color:Fuchsia;size:25px;">Order has Sucessfully Created<br />
            Product will Dilivery soon.</h1></center>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <table border="5" cellpadding="5" cellspacing="5" 
                style="width:100%; font-family: 'Arial Black'; font-size: 25px;">
                <tr>
                    <td align="center" colspan="2" style="color: #008000; font-size: 25px">
                        Address Details Form:-</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Mobile no."></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="City"></asp:Label>
                        &nbsp;<asp:Label ID="Label11" runat="server" Text="State"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label12" runat="server" Text="Country"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Pincode"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Submit" 
                            Width="137px" />
                    </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Cancel" 
                            Width="158px" />
                    </td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

