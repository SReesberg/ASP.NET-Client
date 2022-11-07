<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="BillionBankInterface.LogIn" %>

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
            height: 42px;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style7 {
            text-align: right;
            width: 354px;
        }
        .newStyle7 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #003366;
            border-style: solid;
            border-color: #003366;
        }
        .newStyle8 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #003366;
        }
        .auto-style9 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #003366;
            text-align: right;
            width: 354px;
        }
        .newStyle9 {
            font-family: Stencil;
            color: #003366;
            border-style: solid;
            border-color: #003366;
        }
        Stefan Doc {
            font-family: Stencil;
            color: #003366;
            border-style: solid;
            border-width: 2px;
            text-decoration: none;
        }
        .newStyle10 {
            font-family: Stencil;
            color: #003366;
            text-decoration: none;
            border: 2px solid #003366;
        }
        .auto-style10 {
            text-align: center;
            font-family: Stencil;
            font-size: x-large;
            color: #003366;
            letter-spacing: 0px;
        }
        .newStyle11 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
        }
        .auto-style11 {
            height: 44px;
            width: 4px;
        }
        .auto-style13 {
            width: 100%;
        }
        .newStyle12 {
            font-family: Stencil;
            color: #003366;
            border-style: solid;
        }
        .newStyle13 {
            font-family: Stencil;
            color: #003366;
            border-style: solid;
            border-color: #003366;
        }
        .auto-style15 {
            height: 44px;
            width: 354px;
            text-align: left;
        }
        .auto-style16 {
            width: 354px;
        }
        .auto-style17 {
            width: 354px;
            text-align: left;
        }
        .auto-style18 {
            width: 4px;
        }
        .newStyle14 {
            font-family: Stencil;
            color: #003366;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:Header ID="Header1" runat="server" />
        </div>
        <table class="auto-style13">
            <tr>
                <td class="auto-style3" colspan="4">
                    <h1 class="auto-style10">Log in</h1>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="4"></td>
            </tr>
            <tr>
                <td class="auto-style9">E-mail Address:</td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="auto-style15">
                    <asp:TextBox ID="tbLogInEmail" runat="server" Width="346px"></asp:TextBox>
                    </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="EmailVal" runat="server" ErrorMessage="Please enter your e-mail address!" ControlToValidate="tbLogInEmail" CssClass="newStyle11"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Password:</td>
                <td class="auto-style18">
                    &nbsp;</td>
                <td class="auto-style17">
                    <asp:TextBox ID="tbLogInPassword" runat="server" Width="346px" TextMode="Password"></asp:TextBox>
                    </td>
                <td>
                    <asp:RequiredFieldValidator ID="PasswordVal" runat="server" ErrorMessage="Please enter your password!" ControlToValidate="tbLogInPassword" CssClass="newStyle11"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style16">
                    <asp:Label ID="errorLabel" runat="server" CssClass="newStyle11"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
                <td class="auto-style16">
                    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Log In" CssClass="newStyle9" Height="32px" Width="125px" />
                </td>
                <td>
                    <asp:HyperLink ID="hlForgot" runat="server" NavigateUrl="~/ChangePasswordCheck.aspx" CssClass="newStyle14">Forgot password?</asp:HyperLink>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
