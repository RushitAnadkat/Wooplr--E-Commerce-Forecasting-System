<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Aboutus.aspx.cs" Inherits="Aboutus" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width:100%;">
    <tr>
        <td align="center">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                Font-Names="Arial Unicode MS" Font-Size="40pt" ForeColor="Lime" Text="About us"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="center" 
            style="font-size: 30px; color: #000080; text-transform: none; font-style: italic; font-weight: bolder; font-family: Batang; background-color: #00FFFF;" 
            valign="middle">
            <br />
            <br />
            Thank You For Visiting Our Website<br />
            We provide 24*7 Support<br />
            For Contact us :-<br />
            Helpline no. 89898989<br />
            Email :- <a href="mailto:Woolpr.support@gmail.com">Woolpr.support@gmail.com</a><br />
            Website :- Wooplr.in<br />
            <br />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Panel ID="Panel1" runat="server">
                <asp:DataList ID="DataList1" runat="server" BackColor="#CCCCCC" 
                    BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                    DataKeyField="Companyid" DataSourceID="SqlDataSource1" ForeColor="Black" 
                    GridLines="Both" RepeatColumns="2" Width="100%" CellSpacing="2">
                    <FooterStyle BackColor="#CCCCCC" />
                    <ItemStyle BackColor="White" />
                    <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <ItemTemplate>
                        <table style="width:100%; font-family: 'Arno Pro'; font-size: 25px;">
                            <tr>
                                <td rowspan="4">
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Company_logo") %>' 
                                        Width="81px" />
                                </td>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Company_nm") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Company_desc") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Comapny_addr") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("Company_logo") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Companyid], [Company_nm], [Company_desc], [Comapny_addr], [Company_helpno], [Company_logo], [path] FROM [w_company]">
                </asp:SqlDataSource>
            </asp:Panel>
        </td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

