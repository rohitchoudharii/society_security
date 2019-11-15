<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Visitor_Details.aspx.cs" Inherits="Visitor_Details" %>

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
            padding: 10px 77px 10px 77px;
        }

        .btn1 {
            border-radius: 28px;
            font-family: Arial;
            color: #ffffff;
            font-size: 20px;
            background: #571857;
            padding: 10px 53px 10px 53px;
        }


        .btn2 {
            border-radius: 28px;
            font-family: Arial;
            color: #ffffff;
            font-size: 20px;
            background: #571857;
            padding: 10px 80px 10px 80px;
        }
        .column {
            float: left;
            width: 33%;
            padding: 15px;
        }

        .column1 {
            align: center;
            float: right;
            width: 60%;
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

        .hidden {
            visibility: hidden;
        }
    </style>
    <body>
        <div class="row">
            <div class="column">
                <asp:Image ID="imgVisitorPhoto" runat="server" ImageUrl="" />
                <br />

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
                </table>
            </div>
            <div class="column1" id="hide1" runat="server">
                <asp:Button ID="Homepage" runat="server" Text="Home" class="btn2" OnClick="Homebtn" />
            </div>
            <div class="column1" id="hide" runat="server">
                <br />
                <asp:Button ID="btnAccept" runat="server" Text="Accept" class="btn" OnClick="Accept" />
                <br />
                &nbsp
                <br />
                <asp:Button ID="btnDecline" runat="server" Text="Decline" class="btn" OnClick="Decline" />
                <br />
                &nbsp
                <br />
                <asp:Button ID="btnNAH" runat="server" Text="Not At Home" class="btn1" OnClick="NAH" />
            </div>


        </div>
    </body>
</asp:Content>
