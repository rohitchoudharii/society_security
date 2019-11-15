<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<script src="Scripts/jquery-3.3.1.min.js" type="text/javascript"></script>
<script type="text/javascript">

    $(document).ready(function () {
        value = $("#lbltext").text();
        if (value == "1") {
            document.getElementById("sound").innerHTML = '<audio autoplay="autoplay"><source src="Visitor_Alert.mp3" type="audio/mpeg" /><source src="Visitor_Alert.ogg" type="audio/ogg" /><embed hidden="true" autostart="true" loop="false" src="Visitor_Alert.mp3" /></audio>';

        }

    });
</script>

<style>
    .v {
        font-family: Arial;
        font-size: 40px;
    }

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
        padding: 10px 57px 10px 57px;
    }

    .btnchange {
        border-radius: 28px;
        font-family: Arial;
        color: #ffffff;
        font-size: 20px;
        background: #571857;
        padding: 10px 57px 10px 57px;
    }

    .btn1 {
        border-radius: 28px;
        font-family: Arial;
        color: #ffffff;
        font-size: 20px;
        background: #571857;
        padding: 10px 38px 10px 38px;
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

    .column {
        float: left;
        width: 20%;
        padding: 10px;
    }

    .column1 {
        float: left;
        width: 70%;
        padding: 10px;
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
</style>
<body>
    <%-- <button onclick="playSound('Visitor_Alert')" runat="server" id="soundclick">play</button>--%>
    <meta id="tgmeta" http-equiv="refresh" runat="server" content="5" />

    <div id="sound"></div>
    <form id="formm1" runat="server">
        <div class="header">
            <p class="b">
                <asp:Label runat="server" ID="uname"></asp:Label>
            </p>
        </div>
        <div class="row">
            <div class="column">
                <table>
                    <tr>
                        <td height="100">
                            <asp:Button runat="server" class="btn" ID="Notice" Text="Notice" OnClick="Notice_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td height="100">
                            <asp:Button runat="server" class="btn1" ID="Complain" Text="Complain" OnClick="Complain_Click" />
                        </td>
                    </tr>
                </table>
            </div>
            <div class="column1">
                <div class="GridviewDiv">
                    <asp:GridView runat="server" ID="gvDetails" AllowPaging="false" AutoGenerateColumns="false"
                        Width="850px" Height="100px">
                        <HeaderStyle CssClass="headerstyle" />
                        <Columns>
                            <asp:BoundField DataField="Visitor_Id" HeaderText="Visitor ID" />
                            <asp:BoundField DataField="Visitor_Name" HeaderText="Visitor Name" />
                            <asp:BoundField DataField="From_Where" HeaderText="From" />
                            <asp:BoundField DataField="Reviewed" HeaderText="Reviewed?" />
                            <asp:BoundField DataField="ReqDate" HeaderText="Date" />
                            <asp:HyperLinkField DataTextField="HyperLink" DataNavigateUrlFields="Visitor_Id"
                                DataNavigateUrlFormatString="~/Visitor_Details.aspx?Id={0}" HeaderText="Visit Here" />
                        </Columns>
                    </asp:GridView>
                </div>
                <br />
                <p align="center">
                    <asp:Label runat="server" class="v" ID="NoVisitor"></asp:Label>
                </p>
            </div>
        </div>
       <font color="white"> <asp:Label runat="server"  ID="lbltext" Text=""></asp:Label></font>
    </form>


</body>
</html>
