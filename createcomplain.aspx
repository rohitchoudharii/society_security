<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="createcomplain.aspx.cs" Inherits="createcomplain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .b {
            font-family: Arial;
            font-size: 20px;
        }

        .btn {
            border-radius: 28px;
            font-family: Arial;
            color: #ffffff;
            font-size: 20px;
            background: #571857;
            padding: 10px 40px 10px 40px;
        }
    </style>

        <table id="Table1" height="30%" width="55%" runat="server" align="center">
            <tr>
                <td>
                    <p class="b">Complain For:</p>
                </td>
                <td>
                    <asp:TextBox ID="cfor" runat="server" Width="428px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <p class="b">Complain:</p>
                </td>
                <td>
                    <asp:TextBox ID="complain" TextMode="multiline" Columns="30" Rows="10"
                        runat="server" Height="283px" Width="436px" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Create_cmp" runat="server" class="btn" Text="Create" OnClick="create_cmp"></asp:Button>
                </td>
            </tr>
        </table>

</asp:Content>
