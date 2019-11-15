<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Visitor_Data.aspx.cs" Inherits="Visitor_Data" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .b
        {
            font-family: Arial;
            font-size: 20px;
        }

        .column {
            float: left;
            width: 33%;
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
        <div class="row">
            <div class="column">
                 <asp:Image ID="imgVisitorPhoto" runat="server" ImageUrl="" />
            </div>
            <div class="column">
               
                
               <table class="b">
                    <tr>
                        <td>Visitor Id:</td>
                        <td>
                            <asp:Label ID="lblVisitorID" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Visitor Name:</td>
                        <td>
                            <asp:Label ID="lblVisitorName" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>User name:</td>
                        <td>
                            <asp:Label ID="lblUserID" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>From</td>
                        <td>
                            <asp:Label ID="lblFrom" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Reason:</td>
                        <td>
                            <asp:Label ID="lblReason" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Reviewed:</td>
                        <td>
                            <asp:Label ID="lblReviewed" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Date:</td>
                        <td>
                            <asp:Label ID="lblDate" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Status:</td>
                        <td>
                            <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label></td>
                    </tr>
                </table>
            </div>
        </div>
    </body>
</asp:Content>
