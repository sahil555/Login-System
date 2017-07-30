<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgotpasswd.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style {
            width: 100%;
            margin-left: 74px;
        }
         .auto-style1 {
            width: 100%;
            border: 5px solid #FF0000;
            background-color: #C0C0C0;
        }
        .auto-style2 {
            font-size: xx-large;
            color: #FF0000;
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            margin-left: 23px;
        }
        .auto-style6 {
            text-align: center;
            height: 60px;
        }
        .auto-style7 {
            text-align: center;
            height: 23px;
        }
    </style>
    <script src="Scripts.jquery-1.9.1.js"></script>
</head>
<body style="margin-left: 96px; margin-right: 208px">
    <form id="form1" runat="server">
    <div>
        
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <h1 class="auto-style3"><strong>Forgot Password</strong></h1>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Enter Mobile<span class="auto-style4"> Number</span>&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="recovMnumb" runat="server" Width="202px"></asp:TextBox>
                &nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="RecMsg" runat="server" Text="Welcome to Recovery Mode !" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style5" Text="Recovery Page" Width="150px" OnClick="reset" />
                    
                </td>
            </tr>
        </table>
        
    </div>
    
    </form>
    
</body>
</html>
