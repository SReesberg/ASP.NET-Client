<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangeUserInfo.aspx.cs" Inherits="BillionBankInterface.ChangeUserInfo" %>

<%@ Register src="Header.ascx" tagname="Header" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style4 {
            width: 517px;
        }
        .auto-style5 {
            height: 40px;
            width: 517px;
            text-align: right;
        }
        .auto-style3 {
            height: 40px;
        }
        .auto-style6 {
            width: 517px;
            text-align: right;
        }
        .newStyle7 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #003366;
        }
        .auto-style7 {
            width: 374px;
        }
        .auto-style8 {
            width: 374px;
            text-align: right;
        }
        .auto-style11 {
            height: 42px;
            width: 22px;
        }
        .newStyle8 {
            font-family: Stencil;
            color: #003366;
        }
        .newStyle9 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #003366;
        }
        .auto-style13 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #003366;
            width: 374px;
            text-align: right;
        }
        .newStyle10 {
            font-family: Stencil;
            color: #003366;
            border: 2px solid #003366;
        }
        .newStyle11 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
        }
        .newStyle12 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
        }
        .auto-style14 {
            width: 1187px;
        }
        .auto-style15 {
            height: 42px;
            width: 1187px;
        }
        .auto-style16 {
            width: 22px;
        }
        .auto-style18 {
            width: 24px;
        }
        .auto-style19 {
            height: 42px;
            width: 24px;
        }
        .auto-style21 {
            height: 42px;
            width: 5px;
        }
        .auto-style22 {
            width: 5px;
        }
        .auto-style23 {
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            color: #003366;
            width: 374px;
            text-align: right;
            height: 42px;
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
                <td colspan="4"><span class="newStyle8">Please fill out the form in order to update your personal information</span></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23">Name:</td>
                <td class="auto-style11"></td>
                <td class="auto-style21">
                    <asp:TextBox ID="tbName" runat="server" Width="438px"></asp:TextBox>
                    </td>
                <td class="auto-style19"></td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="NameValidator" runat="server" ControlToValidate="tbName" ErrorMessage="Please enter your name!" CssClass="newStyle11" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RENameVal" runat="server" ControlToValidate="tbName" ErrorMessage="Capitalize, only letters!" ValidationExpression="^[A-Z]+[a-z]*$" CssClass="newStyle12" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Surname:</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style22">
                    <asp:TextBox ID="tbSurname" runat="server" Width="438px"></asp:TextBox>
                    </td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="SurnameValidator" runat="server" ControlToValidate="tbSurname" ErrorMessage="Please enter your surname!" CssClass="newStyle11" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RESurnameVal" runat="server" ControlToValidate="tbSurname" ErrorMessage="Capitalize, only letters!" ValidationExpression="^[A-Z]+[a-z]*$" CssClass="newStyle12" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">E-Mail Address:</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style22">
                    <asp:TextBox ID="tbEmail" runat="server" Width="438px"></asp:TextBox>
                    </td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="EmailValidator" runat="server" ControlToValidate="tbEmail" ErrorMessage="Please enter your e-mail address!" CssClass="newStyle11" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REmailVal" runat="server" ControlToValidate="tbEmail" ErrorMessage="Please enter a valid e-mail address!" ValidationExpression="[A-Za-z0-9]*@[A-Za-z0-9]*[.][A-Za-z0-9]*" CssClass="newStyle12" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Contact Number:</td>
                <td class="auto-style11"></td>
                <td class="auto-style21">
                    <asp:TextBox ID="tbConNum" runat="server" Width="438px"></asp:TextBox>
                    </td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="ContactNumValidator" runat="server" ControlToValidate="tbConNum" ErrorMessage="Please enter your cellphone number!" CssClass="newStyle11" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RECNVal" runat="server" ControlToValidate="tbConNum" ErrorMessage="Number must be 10 digits in length!" ValidationExpression="\b[0-9]{10}\b*" CssClass="newStyle12" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Your Secret Question:</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style22">
                    <asp:TextBox ID="tbSecretQuestion" runat="server" Height="110px" Width="438px"></asp:TextBox>
                    </td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="SecretQValidator" runat="server" ControlToValidate="tbSecretQuestion" ErrorMessage="Please enter a secret question!" CssClass="newStyle11" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Your Secret Answer:</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style22">
                    <asp:TextBox ID="tbSecretAnswer" runat="server" Width="438px"></asp:TextBox>
                    </td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="SecretAValidator" runat="server" ControlToValidate="tbSecretAnswer" ErrorMessage="Please enter an answer to your question!" CssClass="newStyle11" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Your Physical Address:</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style22">
                    <asp:TextBox ID="tbPhysAdd" runat="server" Width="438px"></asp:TextBox>
                    </td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="PhysAddValidator" runat="server" ControlToValidate="tbPhysAdd" ErrorMessage="Please enter your physical address!" CssClass="newStyle11" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REPhysAddVal" runat="server" ControlToValidate="tbPhysAdd" ErrorMessage="Please enter a valid address! Ex: 12 Name Street" ValidationExpression="^[a-zA-Z0-9_ ]*$" CssClass="newStyle12" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style22">
                    <asp:Button ID="btnUpdateDetails" runat="server" OnClick="btnSignUp_Click" Text="Change Details" Width="235px" CssClass="newStyle10" />
                </td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
