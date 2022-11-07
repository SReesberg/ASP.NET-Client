<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="BillionBankInterface.CreateAccount" %>

<%@ Register src="Header.ascx" tagname="Header" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            text-align: right;
        }
        .newStyle7 {
            font-family: Stencil;
            color: #003366;
        }
        .newStyle8 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #003366;
        }
        .newStyle9 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
        }
        .newStyle10 {
            font-family: Stencil;
            color: #003366;
            border: 2px solid #003366;
        }
        .newStyle11 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #003366;
        }
        .newStyle12 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #003366;
        }
        .newStyle13 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #003366;
        }
        .auto-style7 {
            text-align: center;
        }
        .newStyle14 {
            font-family: Stencil;
            color: #003366;
        }
        .auto-style8 {
            font-family: Stencil;
            color: #003366;
            font-size: large;
        }
        .auto-style9 {
            text-align: right;
        }
        .newStyle15 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #003366;
        }
        .auto-style10 {
            width: 98px;
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
                <td class="auto-style7" colspan="4">
                    <h1 class="auto-style8">Account Creation</h1>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"><span class="newStyle15">Select account type:</span></td>
                <td class="auto-style10">
                    <asp:DropDownList ID="accountTypeDDL" runat="server" CssClass="newStyle9">
                        <asp:ListItem>Credit</asp:ListItem>
                        <asp:ListItem>Debit</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnCreate" runat="server" OnClick="btnCreate_Click" Text="Create Account" CssClass="newStyle10" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lblConf" runat="server" CssClass="newStyle9"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
