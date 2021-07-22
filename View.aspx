<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="View" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 133px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Label ID="Label1" runat="server" BorderColor="#000066" Font-Bold="False" 
    Font-Names="Bernard MT Condensed" Font-Size="50pt" Font-Underline="True" 
    ForeColor="#CC00CC"></asp:Label>
<br />
<asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Filter" 
        Width="214px" Font-Size="25pt" Height="60px" />
    <br />
    <asp:Panel ID="Panel2" runat="server" Visible="False">
        <table style="width:100%; font-family: 'Courier New', Courier, monospace; font-size: 25px; font-weight: bolder; color: #000080;" 
            border="5" cellpadding="6" cellspacing="4">
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Arial Black" 
                        Font-Size="25pt" Text="Filter"></asp:Label>
                </td>
            </tr>
            <tr style="color: #000000; font-weight: bolder">
                <td class="style7">
                    Price</td>
                <td colspan="2">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="1">&lt; 5000</asp:ListItem>
                        <asp:ListItem Value="2">5000-10,000</asp:ListItem>
                        <asp:ListItem Value="3">10,000-20,000</asp:ListItem>
                        <asp:ListItem Value="4">20,000 +</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    Ram</td>
                <td colspan="2">
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="2 GB" />
                    &nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="4 GB" />
                    &nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton3" runat="server" Text="6 GB" />
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Submit" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
<asp:Panel ID="Panel1" runat="server" Height="519px">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" DataKeyField="P_id" ForeColor="Black" 
        GridLines="Both" RepeatColumns="2" Width="100%" 
        Font-Names="Algerian" Font-Size="30pt" 
        onitemcommand="DataList1_ItemCommand" Height="90%" CellSpacing="2">
        <FooterStyle BackColor="#CCCCCC" />
        <ItemStyle BackColor="White" />
        <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            <table>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        &nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("Version") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Image ID="Image1" runat="server" Height="150px" 
                            ImageUrl='<%# Eval("image") %>' Width="250px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="RAM"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Ram") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="left" colspan="2">
                        <asp:Button ID="Button1" runat="server" 
                            Text="Add to Cart" CommandArgument='<%# Eval("P_id") %>' 
                            CommandName="add" />
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:LinkButton ID="LinkButton1" runat="server" 
                            CommandArgument='<%# Eval("P_id") %>' CommandName="viewmore">View More</asp:LinkButton>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        
        SelectCommand="SELECT [P_id], [Name], [Version], [Ram], [Price], [image], [company] FROM [w_product] WHERE ([company] = @company)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label2" Name="company" PropertyName="Text" 
                Type="String" DefaultValue="apple" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Panel>
<br />
<br />
</asp:Content>


