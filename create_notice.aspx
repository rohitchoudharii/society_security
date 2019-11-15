<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="create_notice.aspx.cs" Inherits="create_notice" %>

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
    <body>
        <table height="30%" width="50%" align="center">
            <tr>
                <td>
                    <p class="b">Notice For:</p>
                </td>
                <td>
                    <asp:TextBox ID="nfor" runat="server" Width="365px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <p class="b">Notice:</p>
                </td>
                <td>
                    <asp:TextBox ID="notice" TextMode="multiline" Columns="30" Rows="10" runat="server"
                        Height="247px" Width="366px" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Create_Notice" runat="server" class="btn" Text="Create" OnClick="create_noticefun"></asp:Button>
                </td>
            </tr>
        </table>
    </body>
</asp:Content>
