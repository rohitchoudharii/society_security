<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="notice_board.aspx.cs" Inherits="notice_board" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .b
        {
            font-family: Arial;
            font-size: 20px;
        }
        .GridviewDiv
        {
            font-size: 100%;
            font-family: 'Calibri' , 'Lucida Sans Unicode' , Verdana, Arial, Helevetica, sans-serif;
            color: #303933;
        }
        .headerstyle
        {
            color: #FFFFFF;
            font-size: 20px;
            background-color: #571857;
            padding: 0.5em 0.5em 0.5em 0.5em;
            text-align: center;
        }
        .header
        {
            background-color: #f1f1f1;
            padding: 20px;
            text-align: center;
            width: 109%;
        }
        
        .row:after
        {
            display: table;
            clear: both;
        }
    </style>
    <body>
        <div class="header">
            <p class="b"> <asp:Label ID="Label1" runat="server" Text="NOTICE BOARD"></asp:Label></p>
        </div>
        <div class="row">
            <div class="GridviewDiv">
                <asp:GridView runat="server" ID="gvDetails" AllowPaging="false" AutoGenerateColumns="false"
                    Width="1090px" Height="100px">
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
    </body>
</asp:Content>
