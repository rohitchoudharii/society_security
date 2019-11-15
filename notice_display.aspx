<%@ Page Language="C#" AutoEventWireup="true" CodeFile="notice_display.aspx.cs" Inherits="notice_display" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style>
    .b
    {
        font-family: Arial;
        font-size: 20px;
    }
    .headerstyle
    {
        color: #FFFFFF;
        background-color: #571857;
        padding: 0.5em 0.5em 0.5em 0.5em;
        text-align: center;
    }
    .column
    {
        align: center;
        width: 50%;
        padding: 10px;
    }
</style>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <div class="headerstyle" id="ntcfor">
            <p class="b">
                <asp:Label ID="lblFor" runat="server" Text=""></asp:Label></p>
        </div>
        <div class="column">
            <p class="b">
                <asp:Label ID="lblReason" runat="server" Text="" align="center"></asp:Label></p>
        </div>
    </div>
    </form>
</body>
</html>