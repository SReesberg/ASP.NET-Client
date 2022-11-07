<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePasswordCheck.aspx.cs" Inherits="BillionBankInterface.ChangePasswordCheck" %>

<%@ Register src="Header.ascx" tagname="Header" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            text-align: right;
        }
        .auto-style7 {
            text-align: right;
        }
        .newStyle7 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #003366;
        }
        .auto-style8 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #003366;
            text-align: right;
        }
        .newStyle8 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
        }
        .auto-style9 {
            height: 40px;
            text-align: right;
        }
        .newStyle9 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #003366;
            border-style: solid;
            border-width: 2px;
        }
        .newStyle10 {
            font-family: Stencil;
            color: #003366;
            border: 2px solid #003366;
        }
        .newStyle11 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #003366;
            border: 2px solid #003366;
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
                <td class="auto-style8">Please enter your e-mail address:</td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="tbEmail" runat="server" Width="455px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="btnRevealQ" runat="server" OnClick="btnRevealQ_Click" Text="Reveal Question" CssClass="newStyle11" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="tbDisplayQuestion" runat="server" Width="455px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Please enter the answer to your secret question:</td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="tbAnswer" runat="server" Width="455px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="errorLabel" runat="server" CssClass="newStyle8"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmitAnswer" runat="server" OnClick="btnSubmitAnswer_Click" Text="Submit" CssClass="newStyle10" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
