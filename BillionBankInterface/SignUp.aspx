<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="BillionBankInterface.SignUp" %>

<%@ Register src="Header.ascx" tagname="Header" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            height: 40px;
        }
        .auto-style4 {
            width: 517px;
        }
        .auto-style5 {
            height: 40px;
            width: 517px;
            text-align: right;
        }
        .auto-style8 {
            height: 50px;
        }
        .auto-style10 {
            height: 128px;
        }
        .auto-style11 {
            width: 100%;
            height: 313px;
        }
        .auto-style12 {
            text-align: justify;
        }
        .auto-style13 {
            width: 727px;
            text-align: justify;
        }
        .auto-style14 {
            height: 128px;
            text-align: left;
            width: 1455px;
        }
        .auto-style15 {
            height: 50px;
            text-align: left;
            width: 1455px;
        }
        .auto-style16 {
            height: 40px;
            text-align: left;
            width: 1455px;
        }
        .newStyle7 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #003366;
        }
        .auto-style20 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #003366;
            text-align: right;
            width: 727px;
        }
        .newStyle8 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #003366;
        }
        .auto-style21 {
            text-align: left;
        }
        .newStyle9 {
            font-family: Stencil;
            color: #003366;
        }
        .auto-style23 {
            height: 40px;
            text-align: center;
        }
        .auto-style24 {
            height: 44px;
        }
        .auto-style25 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #003366;
            width: 727px;
        }
        .auto-style27 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #003366;
            text-align: right;
            width: 727px;
            height: 50px;
        }
        .auto-style28 {
            text-align: justify;
            width: 495px;
        }
        .auto-style29 {
            height: 40px;
            text-align: left;
            width: 495px;
        }
        .auto-style30 {
            text-align: left;
            width: 495px;
        }
        .auto-style31 {
            height: 50px;
            text-align: left;
            width: 495px;
        }
        .auto-style32 {
            height: 128px;
            text-align: left;
            width: 495px;
        }
        .auto-style33 {
            text-align: justify;
            width: 1455px;
        }
        .auto-style34 {
            text-align: left;
            width: 1455px;
        }
        .newStyle10 {
            font-family: Stencil;
            color: #003366;
            border-style: solid;
            border-color: #003366;
        }
        .newStyle11 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #999999;
        }
        .newStyle12 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
            <uc1:Header ID="Header1" runat="server" />
        </div>
        <table class="auto-style11">
            <tr>
                <td class="auto-style24" colspan="3">
                    <h4 class="auto-style21"><span class="newStyle9">Please enter the requested details:</span></h4>
                </td>
                <td class="auto-style33">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25" style="text-align: right">Name:</td>
                <td class="auto-style23"></td>
                <td class="auto-style29">
                    <asp:TextBox ID="tbName" runat="server" Width="438px"></asp:TextBox>
                    &nbsp;
                    </td>
                <td class="auto-style16">
                    <asp:RequiredFieldValidator ID="NameValidator" runat="server" ControlToValidate="tbName" ErrorMessage="Please enter your name!" ForeColor="Black" Display="Dynamic" CssClass="newStyle11"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RENameVal" runat="server" ControlToValidate="tbName" ErrorMessage="Capitalize, only letters!" ValidationExpression="^[A-Z]+[a-z]*$" Display="Dynamic" ForeColor="Red" CssClass="newStyle12"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">Surname:</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style30">
                    <asp:TextBox ID="tbSurname" runat="server" Width="438px"></asp:TextBox>
                    &nbsp;
                    </td>
                <td class="auto-style34">
                    <asp:RequiredFieldValidator ID="SurnameValidator" runat="server" ControlToValidate="tbSurname" ErrorMessage="Please enter your surname!" ForeColor="Black" Display="Dynamic" CssClass="newStyle11"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RESurnameVal" runat="server" ControlToValidate="tbSurname" ErrorMessage="Capitalize, only letters!" ValidationExpression="^[A-Z]+[a-z]*$" Display="Dynamic" ForeColor="Red" CssClass="newStyle12"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">Identification Number:</td>
                <td class="auto-style23"></td>
                <td class="auto-style29">
                    <asp:TextBox ID="tbID" runat="server" Width="438px"></asp:TextBox>
                    &nbsp;
                    </td>
                <td class="auto-style16">
                    <asp:RequiredFieldValidator ID="IDValidator" runat="server" ControlToValidate="tbID" ErrorMessage="Please enter your ID number!" ForeColor="Black" Display="Dynamic" CssClass="newStyle11"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REIDVal" runat="server" ControlToValidate="tbID" ErrorMessage="ID must be 13 digits in length!" ValidationExpression="\b[0-9]{13}\b*" Display="Dynamic" ForeColor="Red" CssClass="newStyle12"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">E-mail Address:</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style30">
                    <asp:TextBox ID="tbEmail" runat="server" Width="438px"></asp:TextBox>
                    &nbsp;
                    &nbsp;
                    </td>
                <td class="auto-style34">
                    <asp:RequiredFieldValidator ID="EmailValidator" runat="server" ControlToValidate="tbEmail" ErrorMessage="Please enter your e-mail address!" ForeColor="Black" Display="Dynamic" CssClass="newStyle11"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REmailVal" runat="server" ControlToValidate="tbEmail" ErrorMessage="Please enter a valid e-mail address!" ValidationExpression="[A-Za-z0-9]*@[A-Za-z0-9]*[.][A-Za-z0-9]*" Display="Dynamic" ForeColor="Red" CssClass="newStyle12"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">Contact Number:</td>
                <td class="auto-style8"></td>
                <td class="auto-style31">
                    <asp:TextBox ID="tbConNum" runat="server" Width="438px"></asp:TextBox>
                    &nbsp;
                    &nbsp;
                    </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="ContactNumValidator" runat="server" ControlToValidate="tbConNum" ErrorMessage="Please enter your cellphone number!" ForeColor="Black" Display="Dynamic" CssClass="newStyle11"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RECNVal" runat="server" ControlToValidate="tbConNum" ErrorMessage="Number must be 10 digits in length!" ValidationExpression="\b[0-9]{10}\b*" Display="Dynamic" ForeColor="Red" CssClass="newStyle12"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">Your Secret Question:</td>
                <td class="auto-style10"></td>
                <td class="auto-style32">
                    <asp:TextBox ID="tbSecretQuestion" runat="server" Height="110px" Width="438px"></asp:TextBox>
                    &nbsp;
                    </td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="SecretQValidator" runat="server" ControlToValidate="tbSecretQuestion" ErrorMessage="Please enter a secret question!" ForeColor="Black" Display="Dynamic" CssClass="newStyle11"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">Your Secret Answer:</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style30">
                    <asp:TextBox ID="tbSecretAnswer" runat="server" Width="438px"></asp:TextBox>
                    &nbsp;
                    </td>
                <td class="auto-style34">
                    <asp:RequiredFieldValidator ID="SecretAValidator" runat="server" ControlToValidate="tbSecretAnswer" ErrorMessage="Please enter an answer to your question!" ForeColor="Black" Display="Dynamic" CssClass="newStyle11"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">Your Physical Address:</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style30">
                    <asp:TextBox ID="tbPhysAdd" runat="server" Width="438px"></asp:TextBox>
                    &nbsp;
                    &nbsp;
                    </td>
                <td class="auto-style34">
                    <asp:RequiredFieldValidator ID="PhysAddValidator" runat="server" ControlToValidate="tbPhysAdd" ErrorMessage="Please enter your physical address!" ForeColor="Black" Display="Dynamic" CssClass="newStyle11"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REPhysAddVal" runat="server" ControlToValidate="tbPhysAdd" ErrorMessage="Please enter a valid address! Ex: 12 Name Street" ValidationExpression="^[a-zA-Z0-9_ ]*$" Display="Dynamic" ForeColor="Red" CssClass="newStyle12"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">Password:</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style30">
                    <asp:TextBox ID="tbPassword" runat="server" Width="438px" TextMode="Password"></asp:TextBox>
                    &nbsp;
                    &nbsp;
                    </td>
                <td class="auto-style34">
                    <asp:RequiredFieldValidator ID="ReqPassValidator" runat="server" ControlToValidate="tbPassword" ErrorMessage="Please enter a password!" ForeColor="Black" Display="Dynamic" CssClass="newStyle11"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REPassVal" runat="server" ControlToValidate="tbPassword" ValidationExpression="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$ %^&amp;*-]).{8,}$" Display="Dynamic" ForeColor="Red" CssClass="newStyle12">Min 8 characters, 1 upper case letter, 1 lower case letter, 1 number and 1 special character.</asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style20">Confirm Password:</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style30">
                    <asp:TextBox ID="tbConfPassword" runat="server" Width="438px" TextMode="Password"></asp:TextBox>
                    &nbsp;
                    &nbsp;
                    </td>
                <td class="auto-style34">
                    <asp:RequiredFieldValidator ID="ReqConfPassValidator" runat="server" ControlToValidate="tbConfPassword" ErrorMessage="Please confirm your password!" ForeColor="Black" Display="Dynamic" CssClass="newStyle11"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="ComparePassValidator" runat="server" ControlToCompare="tbPassword" ControlToValidate="tbConfPassword" ErrorMessage="Passwords must match!" Display="Dynamic" ForeColor="Red" CssClass="newStyle12"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style28">
                    <asp:Button ID="btnSignUp" runat="server" OnClick="btnSignUp_Click" Text="Sign Up" Width="150px" CssClass="newStyle10" />
                </td>
                <td class="auto-style33">
                    <asp:Label ID="errorLabel" runat="server" CssClass="newStyle12"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
