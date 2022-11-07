<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogOut.aspx.cs" Inherits="BillionBankInterface.LogOut" %>

<%@ Register src="Header.ascx" tagname="Header" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
        .newStyle7 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #003366;
        }
        .newStyle8 {
            font-family: Stencil;
            color: #003366;
            border: 2px solid #003366;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:Header ID="Header1" runat="server" />
        </div>
        <div class="auto-style3">
            <span class="newStyle7">
            <br />
            <span class="auto-style8">Thank you for using Billion Bank Web Services!</span><br />
            </span>
        </div>
        <p class="auto-style7">
            &nbsp;</p>
        <p class="auto-style7">
            <asp:Button ID="btnLogOut" runat="server" OnClick="btnLogOut_Click" Text="Log Out Now" CssClass="newStyle8" Height="34px" />
        </p>
    </form>
</body>
</html>
