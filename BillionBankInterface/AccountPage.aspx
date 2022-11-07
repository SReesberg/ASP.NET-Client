<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountPage.aspx.cs" Inherits="BillionBankInterface.AccountPage" %>

<%@ Register src="Header.ascx" tagname="Header" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle7 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #003366;
            text-decoration: underline;
        }
        .newStyle8 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            font-size: large;
            color: #003366;
            background-color: #FFFFFF;
        }
        .newStyle9 {
            font-family: Stencil;
            font-size: x-large;
            color: #003366;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:Header ID="Header1" runat="server" />
        </div>
        <br />
        <span class="newStyle9">Account Options</span><br />
        <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" CssClass="newStyle8" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#B5C7DE" />
            <DynamicSelectedStyle BackColor="#507CD1" />
            <Items>
                <asp:MenuItem Text="View Account" Value="View Account" NavigateUrl="~/ViewAccount.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Create Account" Value="Create Account" NavigateUrl="~/CreateAccount.aspx"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Transactions.aspx" Text="Perform Transaction" Value="Perform Transaction"></asp:MenuItem>
                <asp:MenuItem Text="Update Personal Information" Value="Update Personal Information" NavigateUrl="~/ChangeUserInfo.aspx"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#507CD1" />
        </asp:Menu>
    </form>
</body>
</html>
