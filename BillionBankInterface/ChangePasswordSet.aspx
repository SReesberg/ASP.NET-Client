<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePasswordSet.aspx.cs" Inherits="BillionBankInterface.ChangePasswordSet" %>

<%@ Register src="Header.ascx" tagname="Header" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle7 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
        }
        .newStyle8 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #003366;
        }
        .newStyle9 {
            font-family: Stencil;
            color: #003366;
            border: 2px solid #003366;
        }
        .auto-style7 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:Header ID="Header1" runat="server" />
        </div>
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7"><span class="newStyle8">Please enter your new password:</span></td>
                <td>
                    <asp:TextBox ID="tbNewPass" runat="server" Width="470px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ReqPWVal" runat="server" ControlToValidate="tbNewPass" ErrorMessage="Please enter a password!" CssClass="newStyle7" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="PasswordREVal" runat="server" ControlToValidate="tbNewPass" ValidationExpression="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$ %^&amp;*-]).{8,}$" CssClass="newStyle7" Display="Dynamic" ForeColor="Red">Min 8 characters, 1 upper case  letter, 1 lower case letter, 1 number ,1 special character.</asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnConfirm" runat="server" OnClick="btnConfirm_Click" Text="Confirm" CssClass="newStyle9" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
