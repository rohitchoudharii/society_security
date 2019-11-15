<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="VisitorInfo.aspx.cs" Inherits="VisitorInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .b {
            font-family: Arial;
            font-size: 20px;
        }

        .GridviewDiv {
            font-size: 100%;
            font-family: 'Calibri', 'Lucida Sans Unicode', Verdana, Arial, Helevetica, sans-serif;
            color: #303933;
        }

        .headerstyle {
            color: #FFFFFF;
            font-size: 20px;
            background-color: #571857;
            padding: 0.5em 0.5em 0.5em 0.5em;
            text-align: center;
        }

        .header {
            background-color: #f1f1f1;
            padding: 20px;
            text-align: center;
            width: 111%;
        }

        .row:after {
            display: table;
            clear: both;
        }

        .btn {
            border-radius: 28px;
            font-family: Arial;
            color: #ffffff;
            font-size: 20px;
            background: #571857;
            padding: 5px 15px 5px 15px;
        }
    </style>
    <body>
        <div class="header">
            <asp:Label ID="Label1" runat="server" Text="VISITOR INFORMATION"></asp:Label>
        </div>
        <div class="row">
            <div>
                <table>
                    <tr>
                        <td>
                            <p class="b">Wing:</p>
                        </td>
                        <td>
                            <asp:TextBox ID="txtwing" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p class="b">Flat No:</p>
                        </td>
                        <td>
                            <asp:TextBox ID="txtflatno" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <asp:Button runat="server" class="btn" ID="Complain" Text="Get Details" OnClick="Complain_Click" />
                        </td>
                    </tr>
                </table>
            </div>
            <div class="GridviewDiv">
                <asp:GridView runat="server" ID="gvDetails" AllowPaging="false" AutoGenerateColumns="false"
                    Width="1200px" Height="100px">
                    <HeaderStyle CssClass="headerstyle" />
                    <Columns>
                        <asp:BoundField DataField="Visitor_Id" HeaderText="Visitor ID" />
                        <asp:BoundField DataField="Visitor_Name" HeaderText="Visitor Name" />
                        <asp:BoundField DataField="User_Id" HeaderText="UserName" />
                        <asp:BoundField DataField="Wing" HeaderText="Wing No" />
                        <asp:BoundField DataField="Flat_no" HeaderText="Flat No" />
                        <asp:BoundField DataField="ReqDate" HeaderText="Date" />
                        <asp:HyperLinkField DataTextField="hyperlink" DataNavigateUrlFields="Visitor_Id"
                            DataNavigateUrlFormatString="~/Visitor_Data.aspx?Id={0}" HeaderText="Check Details" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </body>
</asp:Content>
