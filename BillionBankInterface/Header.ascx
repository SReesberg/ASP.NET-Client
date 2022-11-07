<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="BillionBankInterface.WebUserControl1" %>
<style type="text/css">
    .auto-style2 {
        font-size: xx-large;
        color: #000000;
        text-align: center;
        font-family: "Engravers MT";
    }
    .auto-style3 {
        text-align: center;
        height: 40px;
    }
    .newStyle1 {
        font-family: Stencil;
        color: #003366;
        font-size: xx-large;
    }
    Hyperlink custom {
        border-style: solid;
        font-family: stencil;
    }
    .HyperlinkNew {
        font-family: Stencil;
        font-size: medium;
        border: 6px solid #003366;
        color: #003366;
        padding: 5px;
        background-color: #C0C0C0;
        text-align: center;
        letter-spacing: 2px;
    }
    .newStyle2 {
        border-style: solid solid none solid;
        border-top-color: #003366;
    }
    .newStyle3 {
        border-left-style: solid;
        border-bottom-style: solid;
        border-right-style: solid;
        border-color: #003366;
    }
    .newStyle4 {
        border-right-style: none;
        border-left-style: solid;
        text-align: center;
        border-left-color: #003366;
        border-right-color: #003366;
        border-top-color: #003366;
        border-bottom-color: #003366;
    }
    .newStyle2 {
        border-left-style: solid;
        border-color: #003366;
    }
    .newStyle5 {
        border-right-style: solid;
        text-align: center;
        border-left-color: #003366;
        border-right-color: #003366;
        border-top-color: #003366;
        border-bottom-color: #003366;
    }
    .newStyle6 {
        font-family: Stencil;
        font-size: 3ex;
        color: #003366;
        letter-spacing: 0px;
        text-align: right;
    }
    .auto-style4 {
        height: 44px;
    }
    .auto-style5 {
        font-family: Stencil;
        font-size: 2ex;
        color: #003366;
        letter-spacing: 0px;
        text-align: center;
    }
    .auto-style6 {
        font-family: Stencil;
        font-size: medium;
        border: 6px solid #003366;
        color: #003366;
        padding: 5px;
        background-color: #C0C0C0;
        text-align: center;
        letter-spacing: 2px;
        text-decoration: none;
    }
</style>

<table style="width:100%;" align="center">
    <tr>
        <td colspan="4">
            <h1 class="auto-style2">
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style5">Billion</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Image ID="Image2" runat="server" Height="217px" ImageUrl="~/Bank.jfif" style="text-align: left" Width="384px" />
                        </td>
                    </tr>
                </table>
            </h1>
        </td>
    </tr>
    <tr>
        <td colspan="4" class="newStyle2">&nbsp;</td>
    </tr>
    <tr>
        <td class="newStyle4">
            <asp:HyperLink ID="hlSignUp" runat="server" NavigateUrl="~/SignUp.aspx" BackColor="#999999" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style6" Width="172px">Sign Up</asp:HyperLink>
        </td>
        <td class="auto-style3">
            <asp:HyperLink ID="hlLogIn" runat="server" NavigateUrl="~/LogIn.aspx" BackColor="#999999" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style6" Width="172px">Log In</asp:HyperLink>
        </td>
        <td class="auto-style3">
            <asp:HyperLink ID="hlAccount" runat="server" NavigateUrl="~/AccountPage.aspx" BackColor="#999999" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style6" Width="172px">Account</asp:HyperLink>
        </td>
        <td class="newStyle5">
            <asp:HyperLink ID="hlLogOut" runat="server" NavigateUrl="~/LogOut.aspx" BackColor="#999999" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style6" Width="172px">Log Out</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td colspan="4" class="newStyle3">&nbsp;</td>
    </tr>
</table>

