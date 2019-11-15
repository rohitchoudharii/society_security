<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .btn
        {
            border-radius: 28px;
            font-family: Arial;
            color: #ffffff;
            font-size: 20px;
            background: #571857;
            padding: 4px 50px 4px 50px;
        }
        .a
        {
            font-family: Arial;
        }
    </style>
    <table  buttom="10%" align="center">
        <tr>
            <td colspan="2" class="a">
                <center>
                    <font size="5"><b>MEMBER LOG IN</b></font></center>
            </td>
        </tr>
        <tr>
            <td class="a">
                Username:
            </td>
            <td>
                <asp:TextBox ID="userid" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="a">
                Password:
            </td>
            <td>
                <asp:TextBox ID="pswd" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <center>
                    <asp:Button ID="Logins" class="btn" runat="server" Text="Login" OnClick="Login1">
                    </asp:Button><br />
                    &nbsp<br />
                    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
