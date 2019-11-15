<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="admin.aspx.cs" Inherits="admin" %>

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
            padding: 10px 30px 10px 30px;
        }

        .btn1 {
            border-radius: 28px;
            font-family: Arial;
            color: #ffffff;
            font-size: 20px;
            background: #571857;
            padding: 10px 30px 10px 30px;
        }

        .btn2 {
            border-radius: 28px;
            font-family: Arial;
            color: #ffffff;
            font-size: 20px;
            background: #571857;
            padding: 10px 45px 10px 45px;
        }

        .GridviewDiv {
            font-size: 100%;
            font-family: 'Calibri', 'Lucida Sans Unicode', Verdana, Arial, Helevetica, sans-serif;
            color: #303933;
        }

        .headerstyle {
            color: #FFFFFF;
            background-color: #571857;
            padding: 0.5em 0.5em 0.5em 0.5em;
            text-align: center;
        }

        .column {
            float: left;
            width: 20%;
            padding: 15px;
        }

        .column1 {
            float: left;
            width: 70%;
            padding: 15px;
        }

        .header {
            background-color: #f1f1f1;
            padding: 20px;
            text-align: center;
        }

        .row:after {
            display: table;
            clear: both;
        }
    </style>
    <body>
        <div class="header">
            <p class="b">
                Admin:
                <asp:Label runat="server" ID="uname"></asp:Label>
            </p>
        </div>
        <div class="row">
            <div>
                <div class="column1">
                    <div class="GridviewDiv">
                        <asp:GridView runat="server" ID="gvDetails" AllowPaging="false" AutoGenerateColumns="false"
                            Width="900px" Height="100px">
                            <HeaderStyle CssClass="headerstyle" />
                            <Columns>
                                <asp:BoundField DataField="Notice_No" HeaderText="Notice No" />
                                <asp:BoundField DataField="Notice_For" HeaderText="Notice For" />
                                <asp:BoundField DataField="Notice_Date" HeaderText="Date" />
                                <asp:HyperLinkField DataTextField="HyperLink" DataNavigateUrlFields="Notice_No" DataNavigateUrlFormatString="~/notice_display.aspx?Id={0}"
                                    HeaderText="Check Details" />
                            </Columns>
                        </asp:GridView>

                    </div>
                </div>
                <div class="column">
                    <table>
                        <tr>
                            <td height="100">
                                <asp:Button ID="Create_Notice" runat="server" class="btn" Text="Create notice" OnClick="createnew"></asp:Button>
                            </td>
                        </tr>
                        <tr>
                            <td height="100">
                                <asp:Button ID="Complain_Box" runat="server" class="btn1" Text="Complain Box" OnClick="cmpbox"></asp:Button>
                            </td>
                        </tr>
                        <tr>
                            <td height="100">
                                <asp:Button ID="Button1" runat="server" class="btn2" Text="Visitor Box" OnClick="Visitor_Data"></asp:Button>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </body>
</asp:Content>
