<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="complain_box.aspx.cs" Inherits="complain_box" %>

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
            width: 111%;
        }
        
        .row:after
        {
            display: table;
            clear: both;
        }
    </style>
    <body>
        <div class="header">
        <p class="b">   Complain: <asp:Label ID="Label1" runat="server" ></asp:Label></p>
        </div>
        <div class="row">
                <div class="GridviewDiv">
                    <asp:GridView runat="server" ID="gvDetails" AllowPaging="false" AutoGenerateColumns="false"
                        Width="1350px"  Height="100px">
                        <HeaderStyle CssClass="headerstyle" />
                        <Columns>
                            <asp:BoundField DataField="Complain_No" HeaderText="Complain No" />
							<asp:BoundField DataField="Complain_For" HeaderText="Complain For" />
                            <asp:BoundField DataField="Complain_Date" HeaderText="Date" /> 
                            <asp:BoundField DataField="wing" HeaderText="Wing" />
                            <asp:BoundField DataField="flatno" HeaderText="Flat No" />
                             <asp:HyperLinkField DataTextField="HyperLink" DataNavigateUrlFields="Complain_No" DataNavigateUrlFormatString="~/complain_display.aspx?Id={0}"
                            HeaderText="Check Details" />
                         </Columns>
                    </asp:GridView>
                </div>
            </div>
</body>
</asp:Content>
