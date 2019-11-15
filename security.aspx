<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="security.aspx.cs" Inherits="security" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .b
        {
            font-family: Arial;
            font-size: 20px;
        }
        .btn
        {
            border-radius: 28px;
            font-family: Arial;
            color: #ffffff;
            font-size: 20px;
            background: #571857;
            padding: 2px 50px 2px 50px;
        }
        .btn1
        {
            border-radius: 28px;
            font-family: Arial;
            color: #ffffff;
            font-size: 20px;
            background: #571857;
            padding: 2px 5px 2px 5px;
            
        }
    </style>
    <p class="a">
        <table width="20%" bottom="10%" align="center">
            <tr>
                <td colspan="3">
                    <center>
                        <p class="b"> SECURITY</p>
                </td>
            </tr>
            <tr>
                <td>
                    Wing:
                </td>
                <td>
                    <asp:TextBox ID="Wing" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Flat no:
                </td>
                <td>
                    <asp:TextBox ID="Flat_no" runat="server"></asp:TextBox>
                </td>
            </tr>
        
            <tr>
                <td colspan="2" align="center">
                    
                        <asp:Button ID="Send" runat="server" Text="Send"  class="btn" OnClick="Send_To"></asp:Button>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
