<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ContentPlaceHolderID="head" ID="Home1" runat="server"></asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder2" ID="Content1" runat="server">
     <table style="width:100%; height: 50px;" align="center">
    <tr>
        <td align="center">
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/ad.xml" 
                Height="350px" Width="50%" />
        </td>
    </tr>
    </table>
     <br />
     <asp:Label ID="category_name" runat="server" Font-Bold="True" 
         Font-Names="Arial Black" Font-Size="35pt" ForeColor="#3399FF">SAMSUNG</asp:Label>
     <hr  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Panel 
         ID="Panel1" runat="server" BorderStyle="Solid">
         <asp:DataList ID="DataList1" runat="server" DataKeyField="P_id" 
             DataSourceID="SqlDataSource1" 
             CellPadding="4" Font-Names="Arial Black" Font-Size="25pt" ForeColor="#333333" 
             RepeatColumns="3" RepeatDirection="Horizontal" Width="100%" 
             onitemcommand="DataList1_ItemCommand">
             <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
             <ItemTemplate>
                 <table style="width:100%;">
                     <tr>
                         <td colspan="2">
                             <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                             &nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("Version") %>'></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td colspan="2">
                             <asp:Image ID="Image1" runat="server" Height="120px" 
                                 ImageUrl='<%# Eval("image") %>' Width="200px" />
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
                             <asp:Button ID="Button1" runat="server" Text="Add to Cart" 
                                 CommandArgument='<%# Eval("P_id") %>' CommandName="add" />
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
             </ItemTemplate>
             <AlternatingItemStyle BackColor="White" />
             <ItemStyle BackColor="#EFF3FB" />
             <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
             <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
         </asp:DataList>
         <br />
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
             
             SelectCommand="SELECT * FROM [w_product] WHERE ([company] = @company) ORDER BY [Price] DESC">
             <SelectParameters>
                 <asp:ControlParameter ControlID="category_name" DefaultValue="Samsung" 
                     Name="company" PropertyName="Text" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>
         <table style="width:100%;">
             <tr>
                 <td align="right">
                     <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" 
                         Font-Names="Arial Black" Font-Size="18pt" ForeColor="#6600FF" 
                         onclick="LinkButton2_Click">View More</asp:LinkButton>
                 </td>
             </tr>
         </table>
         <br />
         <asp:Label ID="Label8" runat="server" Text="01" Visible="False"></asp:Label>
         <asp:Label ID="Label9" runat="server" Text="06" Visible="False"></asp:Label>
         <asp:Label ID="Label10" runat="server" Text="21" Visible="False"></asp:Label>
         <br />
         <br />
     </asp:Panel>
     &nbsp;<br />
     &nbsp;<asp:Label ID="Label7" runat="server" Font-Bold="True" 
         Font-Names="Arial Black" Font-Size="35pt" ForeColor="#0099FF" Text="Apple"></asp:Label>
     &nbsp;<br /><hr  />
     &nbsp; &nbsp;&nbsp;<br />
     &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Panel ID="Panel2" runat="server" 
         BorderColor="Black" BorderStyle="Solid">
         <asp:DataList ID="DataList2" runat="server" CellPadding="4" 
             DataKeyField="P_id" DataSourceID="SqlDataSource2" Font-Bold="True" 
             Font-Names="Arial Black" Font-Size="28pt" ForeColor="#333333" 
             RepeatColumns="3" Width="100%" RepeatDirection="Horizontal" 
             onitemcommand="DataList2_ItemCommand">
             <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
             <AlternatingItemStyle BackColor="White" />
             <ItemStyle BackColor="#EFF3FB" />
             <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
             <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
             <ItemTemplate>
                 <table style="width:100%;">
                     <tr>
                         <td colspan="2">
                             <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                             &nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("Version") %>'></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td colspan="2">
                             <asp:Image ID="Image1" runat="server" Height="120px" 
                                 ImageUrl='<%# Eval("image") %>' Width="200px" />
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
                             <asp:Button ID="Button1" runat="server" Height="50px" Text="Add to Cart" 
                                 Width="300px" CommandArgument='<%# Eval("P_id") %>' CommandName="add" />
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
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
             SelectCommand="SELECT [P_id], [Name], [Version], [Ram], [Price], [company], [image] FROM [w_product] WHERE ([company] = @company) ORDER BY [Price] DESC">
             <SelectParameters>
                 <asp:ControlParameter ControlID="Label7" DefaultValue="Apple" Name="company" 
                     PropertyName="Text" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>
         <br />
         <table style="width:100%;">
             <tr>
                 <td align="right">
                     <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" 
                         Font-Names="Arial Black" Font-Size="18pt" ForeColor="#6600FF" 
                         onclick="LinkButton3_Click">View More</asp:LinkButton>
                 </td>
             </tr>
         </table>
     </asp:Panel>
     &nbsp;   
</asp:Content>

