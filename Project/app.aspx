<%@ Page Language="C#" AutoEventWireup="true" CodeFile="app.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            color: #FF0066;
             border: 5px solid #ff6a00;
            height: 440px;
            margin-top: 26px;
        }
        .auto-style3 {
            margin-left: 912px;
            height: 13px;
        }
        .auto-style5 {
            width: 229px;
        }
        .auto-style9 {
            color: #FF0000;
        }
        .auto-style4 {
            width: 167px;
            font-weight: bold;
            font-size: large;
            text-align: right;
        }
        .auto-style11 {
            margin-left: 0px;
        }
        .auto-style14 {
            font-size: large;
            text-align: right;
            height: 116px;
        }
        .auto-style15 {
            text-align: center;
            width: 229px;
            height: 116px;
        }
        .auto-style16 {
            margin-left: 2px;
        }
        .auto-style17 {
            text-align: center;
            color: #FF3300;
        }
        .auto-style18 {
            width: 264px;
            text-align: left;
        }
        .auto-style19 {
            width: 229px;
            height: 13px;
        }
        .auto-style20 {
            width: 264px;
            text-align: left;
            height: 13px;
        }
        .auto-style21 {
            margin-top: 6px;
        }
        .auto-style22 {
            width: 264px;
            text-align: left;
            height: 116px;
        }
        .auto-style23 {
            text-align: center;
            margin-top: 167px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
    <div>
         <div class="auto-style23">
             <h1>
             <strong>
             <asp:Label ID="himsg" runat="server" Text="hello ! MSG " text-allign="Center" CssClass="auto-style17"></asp:Label>
         &nbsp;</h1>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
         </div>
    </div>
            <strong>
        <asp:Label ID="Lab" runat="server" Text="Click On Button to UPDATE Your Details."></asp:Label>
            </strong>
        <br />
        <br />
        <asp:Button ID="update" runat="server" CssClass="auto-style11" Text="Update" Width="122px" OnClick="updateP" />

           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="LogOut" Width="78px" />

           <table align="center" ID="tab" cellpadding="3" cellspacing="3" class="auto-style2" runat="server">
               <tr>
                   <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h4 class="auto-style21"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; First Name&nbsp; </strong></h4>
                   </td>
                   <td class="auto-style19">
                       <asp:TextBox ID="FName" runat="server" Width="207px"></asp:TextBox>
                   </td>
                   <td class="auto-style20">
                       <asp:RequiredFieldValidator ID="RFValidatorName" runat="server" ErrorMessage="First Name Required" ControlToValidate="FName" CssClass="auto-style9" ValidationGroup="g1"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style4">Mobile Number</td>
                   <td class="auto-style5">
                       <asp:TextBox ID="Mnum" runat="server" Width="209px" TextMode="Number" style="height: 22px"></asp:TextBox>
                   </td>
                   <td class="auto-style18">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Mobile Number" ControlToValidate="Mnum" CssClass="auto-style9" ValidationGroup="g1"></asp:RequiredFieldValidator>
                       <br class="auto-style9" />
                   </td>
               </tr>
               <tr>
                   <td class="auto-style4">E-Mail Address</td>
                   <td class="auto-style5">
                       <asp:TextBox ID="Email" runat="server" Width="206px" TextMode="Email"></asp:TextBox>
                   </td>
                   <td class="auto-style18">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="E-mail is Required" CssClass="auto-style9" ControlToValidate="Email" ValidationGroup="g1"></asp:RequiredFieldValidator>
                       <br class="auto-style9" />
                   </td>
               </tr>
               <tr>
                   <td class="auto-style4">Date Of&nbsp; Birth</td>
                   <td class="auto-style5">
                       <asp:TextBox ID="Date" runat="server" TextMode="Date" Width="205px" Text=" "></asp:TextBox>
                   </td>
                   <td class="auto-style18">
                       <asp:RequiredFieldValidator ID="DOB" runat="server" ErrorMessage="D.O.B. is Required" ControlToValidate="Date" CssClass="auto-style9" ValidationGroup="g1"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style14"><strong>Address </strong> </td>
                   <td class="auto-style15">
                       <asp:TextBox ID="addres" runat="server" CssClass="auto-style16" Height="45px" Width="207px" Text=" "></asp:TextBox>

                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                   </td>
                   <td class="auto-style22">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter the Address" ControlToValidate="addres" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style4">&nbsp;</td>
                   <td class="auto-style5">
                       <asp:Button ID="but" runat="server" OnClick="but_Click" Text="SUBMIT" Width="126px" ValidationGroup="g1" />
                   </td>
                   <td class="auto-style18">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="auto-style4">&nbsp;</td>
                   <td class="auto-style5">
                       &nbsp;</td>
                   <td class="auto-style18">
                       <br />
                       
                   </td>
               </tr>
           </table>

        </div>

    </form>
    <p>
        l</p>
</body>
</html>
