<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master"
    CodeFile="photosend.aspx.cs" Inherits="photosend" %>

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
            padding: 2px 50px 2px 50px;
        }

        .btn1 {
            border-radius: 28px;
            font-family: Arial;
            color: #ffffff;
            font-size: 20px;
            background: #571857;
            padding: 2px 40px 2px 40px;
        }
        .GridviewDiv {
            font-size: 100%;
            font-family: 'Calibri', 'Lucida Sans Unicode', Verdana, Arial, Helevetica, sans-serif;
            color: #303933;
        }

        
        .column {
            float: left;
            width: 30%;
            padding: 15px;
        }

        .column1 {
            float: right;
            width: 30%;
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
    <script type="text/javascript">
        function Openpop() {
            window.open("Captureimage.aspx", "mywindow", "width=800,height=800");
        } function btnState_onclick() {

        }

    </script>
    <div class="header">
        <p class="b">
            Send To
        <asp:Label ID="wf" runat="server" Text=""></asp:Label>
        </p>
    </div>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <asp:Button ID="SecNAH" runat="server" class="btn" Text="No Response" OnClick="SecNAH_Click" ></asp:Button>
    <div class="row">
        <div class="column">
            <table>
                <tr>
                    <td>
                        <p class="b">
                            Visitor Id:<asp:Label ID="vid" runat="server" Text=""></asp:Label>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image runat="server" ID="imgcap" ImageUrl='~/reqimage/person.png' Width="258px" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <input type="button" id="btnState" class="btn" value="Capture image" onclick="Openpop();" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <p class="b">
                            Acknowledge:
                        </p>
                    </td>
                </tr>
            </table>
            <div id="ackdiv">
                <p class="b">
                    <asp:Label ID="ack" runat="server" Text=""></asp:Label>
                </p>
            </div>
        </div>
        <div class="column1">
            <table class="b">
                <tr>
                    <td>UserName:
                        
                    </td>
                    <td>
                        <asp:Label ID="unme" runat="server" Width="251px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Visitor Name:
                        
                    </td>
                    <td>
                        <asp:TextBox ID="nme" runat="server" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Visitor From:
                    </td>
                    <td>
                        <asp:TextBox ID="frm" runat="server" Width="252px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Reason
                        
                    </td>
                    <td>
                        <asp:TextBox ID="reason" TextMode="multiline" Columns="30" Rows="10" runat="server"
                            Height="250px" Width="261px" /></textarea>
                    </td>
                </tr>
            </table>
            <table>
                <tr>
                    <td>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" class="btn" Text="Send" OnClick="Send_Msg"></asp:Button>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
