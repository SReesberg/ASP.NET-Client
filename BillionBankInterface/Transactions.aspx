<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transactions.aspx.cs" Inherits="BillionBankInterface.Transactions" %>

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
            text-align: center;
        }
        .auto-style7 {
            text-align: center;
            height: 44px;
            font-size: large;
        }
        .newStyle7 {
            font-family: Stencil;
            color: #003366;
        }
        .newStyle8 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
        }
        .newStyle9 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #003366;
        }
        .newStyle10 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #003366;
        }
        .newStyle11 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #003366;
        }
        .newStyle12 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
        }
        .newStyle13 {
            font-family: Stencil;
            color: #003366;
            border-style: solid;
            border-color: #003366;
        }
        .auto-style8 {
            width: 616px;
        }
        .auto-style9 {
            width: 13px;
        }
        .auto-style10 {
            width: 683px;
        }
        .auto-style11 {
            width: 616px;
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
                <td class="auto-style3" colspan="3">
                    <h1 class="auto-style7"><span class="newStyle7">Transaction Options</span></h1>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11"><span class="newStyle9">Please select the source account:</span><asp:DropDownList ID="accountsDDLSource" runat="server" CssClass="newStyle8">
                    <asp:ListItem>Selection</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10"><span class="newStyle10">Please select the destination account:</span><asp:DropDownList ID="accountsDDLDest" runat="server" CssClass="newStyle8">
                    <asp:ListItem>Selection</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11"><span class="newStyle11">Amount to transfer: R</span><asp:TextBox ID="tbTransferAmount" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">
                    <asp:Button ID="btnTransfer" runat="server" OnClick="btnTransfer_Click" Text="Transfer Money" CssClass="newStyle13" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="lblError" runat="server" CssClass="newStyle12"></asp:Label>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
