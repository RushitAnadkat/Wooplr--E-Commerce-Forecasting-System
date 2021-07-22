<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">

        .style1
        {
            height: 65px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <table align="center" 
                    style="width: 50%; font-family: Arial, Helvetica, sans-serif; background-color: #99FF99; color: #660066;">
                    <tr>
                        <td align="center" class="style1">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                                Text="Login"></asp:Label>
                            <br />
                            <asp:Label ID="Label17"  runat="server" ForeColor="Red" ></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label2" runat="server" Text="Username:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBox1" ErrorMessage="Please Enter Mobile no/E mail ">*</asp:RequiredFieldValidator>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                ControlToValidate="TextBox1" ErrorMessage="RegularExpressionValidator" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Enter 
                            proper email</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TextBox2" ErrorMessage="Please Enter Password">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr align="center">
                        <td>
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                            &nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" Text="Cancel" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                onclick="LinkButton1_Click">Forget Password?</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            OR</td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                onclick="LinkButton2_Click">Create 
                            New User</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </asp:View>
            <br />
            <asp:View ID="View2" runat="server">
                <table style="width: 100%;">
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Enter Email:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="g1"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" 
                                ValidationGroup="g1">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="TextBox3" ErrorMessage="RegularExpressionValidator" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Enter 
                            proper email</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="Button3" runat="server" onclick="Button2_Click" Text="Submit" 
                                ValidationGroup="g1" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <br />
            <asp:View ID="View3" runat="server">
                <table style="width: 100%;">
                    <tr>
                        <td>
                            <asp:Label ID="Label10" runat="server" Text="Email:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Question"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="Answer"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="OK" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <br />
            <asp:View ID="View4" runat="server">
                <table style="width: 100%;">
                    <tr>
                        <td>
                            <asp:Label ID="Label11" runat="server" Text="Email:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label12" runat="server" Text="Question"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label14" runat="server" Text="Answer"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox9" runat="server" Enabled="False"></asp:TextBox>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="Enter New Password:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" 
                                ToolTip="minimum 1 capital,small character,number,special character and no space must between 8 to 15 ch."></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="TextBox6" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                ControlToValidate="TextBox6" ErrorMessage="RegularExpressionValidator" 
                                ValidationExpression="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\S).{8,15}">Enter 
                            password in proper format</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text="Confirm Password:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="TextBox6" ControlToValidate="TextBox5" 
                                ErrorMessage="password and confirm password are different:"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="Submit" />
                            <asp:Button ID="Button6" runat="server" Text="Cancel" />
                        </td>
                    </tr>
                </table>
                <br />
            </asp:View>
            <br />
            <asp:View ID="View5" runat="server">
                <table align="center" border="1" 
                    
                    
                    style="border-color: #008000; width:65%; font-family: Arial, Helvetica, sans-serif; color: #FF6600; background-color: #00FFFF;">
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="15pt" 
                                ForeColor="#FF0066" Text="Sign Up"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblUname" runat="server" Text="Name: "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="UsernameRequired" runat="server" 
                                ControlToValidate="txtUname" ErrorMessage="Enter User Name">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                ControlToValidate="txtUname" ErrorMessage="RegularExpressionValidator" 
                                ValidationExpression="[a-zA-Z\S]+">Enter proper Name</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblEmail" runat="server" Text="Email Id :"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="EmailIdRequierd" runat="server" 
                                ControlToValidate="txtEmail" ErrorMessage="Enter Email Id">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="txtEmail" ErrorMessage="plz enter valid email" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblMobile" runat="server" Text="Mobile No. :"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="MobileRequierd" runat="server" 
                                ControlToValidate="txtMobile" ErrorMessage="Enter Mobile No.">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                                ControlToValidate="txtMobile" ErrorMessage="RegularExpressionValidator" 
                                ValidationExpression="[0-9]{10}">Enter valid mobile number</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblPwd" runat="server" Text="Password :"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" 
                                ToolTip="minimum 1 capital,small character,number,special character and no space must between 8 to 15 ch."></asp:TextBox>
                            <asp:RequiredFieldValidator ID="PasswordRequierd" runat="server" 
                                ControlToValidate="txtPwd" ErrorMessage="Enter Password">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                                ControlToValidate="txtPwd" ErrorMessage="RegularExpressionValidator" 
                                ValidationExpression="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\S).{8,15}">Enter 
                            password in proper format</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblCpwd" runat="server" Text="Confirm Password :"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtCPwd" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                                ControlToValidate="txtCPwd" ErrorMessage="Enter Confirm Password">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblQue" runat="server" Text="Security Question:"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlQue" runat="server">
                                <asp:ListItem Value="0">Select</asp:ListItem>
                                <asp:ListItem Value="1">Your First Phone Number ?</asp:ListItem>
                                <asp:ListItem Value="2">Your School Name ?</asp:ListItem>
                                <asp:ListItem Value="3">Your Vehicle Number Plate</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" 
                                ControlToValidate="ddlQue" ErrorMessage="Enter Security Question">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblAns" runat="server" Text="Security Answer:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtAns" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" 
                                ControlToValidate="txtAns" ErrorMessage="Enter Secueity Answer">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:CompareValidator ID="passwordCompareValidation" runat="server" 
                                ControlToCompare="txtPwd" ControlToValidate="txtCPwd" 
                                ErrorMessage="Password and Confirm Password Does not Match"></asp:CompareValidator>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                                Text="Submit" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnCancel" runat="server" onclick="btnCancel_Click" 
                                Text="Cancel" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <br />
                            <asp:LinkButton ID="lbtnLogin" runat="server" CausesValidation="False" 
                                onclick="lbtnLogin_Click">Already Has a AccountAlready Has a Account</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
        <br />
    
    </div>
    </form>
</body>
</html>
