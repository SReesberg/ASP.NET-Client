<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAccount.aspx.cs" Inherits="BillionBankInterface.ViewAccount" %>

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
            font-family: Stencil;
            color: #003366;
        }
        .newStyle9 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #003366;
        }
        .newStyle10 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
        }
        .newStyle11 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #999999;
        }
        .newStyle12 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #333333;
        }
        .newStyle13 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #666666;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:Header ID="Header1" runat="server" />
        </div>
        <span class="newStyle8">Account number:</span>
        <asp:DropDownList ID="accountDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="accountDropDownList_SelectedIndexChanged" CssClass="newStyle9">
            <asp:ListItem>Please select an account:</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="lblError" runat="server" CssClass="newStyle7"></asp:Label>
        <br />
        <asp:ListBox ID="detailsListBox" runat="server" Height="266px" Width="540px" CssClass="newStyle13"></asp:ListBox>
        <asp:ListBox ID="recentTransactionLB" runat="server" Height="266px" Width="540px" CssClass="newStyle13">
            <asp:ListItem>Account&#39;s most recent transaction:</asp:ListItem>
        </asp:ListBox>
    </form>
</body>
</html>
