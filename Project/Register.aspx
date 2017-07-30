<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .new{
            background-color:indianred;
           
        }
        .auto-style1 {
            width: 379px;
            margin-left: 644px;
            text-align: left;
        }
        .auto-style2 {
            width: 737px;
            height: 386px;
            border: 5px solid #0000FF;
            margin-left: 417px;
            background-color: #C0C0C0;
        }
        .auto-style3 {
            font-family: Arial, Helvetica, sans-serif;
         
            width: 167px;
            font-size: medium;
            text-align: right;
        }
        .auto-style4 {
            width: 167px;
            font-size: large;
            text-align: right;
        }
        .auto-style5 {
            width: 229px;
            text-align: left;
        }
        .auto-style6 {
            width: 173px;
            text-align: left;
        }
        .auto-style7 {
            margin-left: 711px;
            border-bottom-style:ridge;
        }
        .auto-style8 {
            margin-left: 728px;
            border-bottom-style: ridge;
            margin-top: 0px;
        }
        .new1{
            background-image:url("Images/2.jpg");
        }
        .auto-style9 {
            color: #FF0000;
        }
        .auto-style10 {
            width: 173px;
            color: #FF0000;
            text-align: left;
        }
        .auto-style11 {
            width: 167px;
            
            font-size: large;
            text-align: right;
            height: 44px;
        }
        .auto-style12 {
            width: 229px;
            height: 44px;
            text-align: left;
        }
        .auto-style13 {
            width: 173px;
            height: 44px;
            text-align: left;
        }
        .auto-style14 {
            text-align: right;
            font-size: large;
            height: 45px;
        }
        .auto-style15 {
            text-align: center;
             border: 5px solid #000000;
        }
        .auto-style16 {
            text-align: left;
        }
        .auto-style17 {
            color: #FF0000;
            text-align: left;
            height: 45px;
        }
        .auto-style18 {
            text-align: left;
            height: 45px;
        }
        .auto-style19 {
            text-align: left;
            width: 1238px;
        }
    </style>
</head>
<body Cssclass="new" style="margin-left: 131px; margin-right: 163px">
    <form id="form1" runat="server">
   <div class="auto-style15">
       <div class="auto-style16">
       </div>
       <h1 class="auto-style1">&nbsp; Registeration Page</h1>
       <div>

           <table align="center" cellpadding="3" cellspacing="3" class="auto-style2">
               <tr>
                   <td class="auto-style3">First Name&nbsp; </td>
                   <td class="auto-style5">
                       <asp:TextBox ID="FName" runat="server" Width="207px"></asp:TextBox>
                   </td>
                   <td class="auto-style6">
                       <strong><em>
                       <asp:RequiredFieldValidator ID="RFValidatorName" runat="server" ErrorMessage="First Name Required" ControlToValidate="FName" CssClass="auto-style9" ValidationGroup="g2"></asp:RequiredFieldValidator>
                       </em></strong>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style4">Last Name</td>
                   <td class="auto-style5">
                       <asp:TextBox ID="Lname" runat="server" Width="208px"></asp:TextBox>
                   </td>
                   <td class="auto-style10">&nbsp;</td>
               </tr>
               <tr>
                   <td class="auto-style4">Mobile Number</td>
                   <td class="auto-style5">
                       <asp:TextBox ID="Mnum" runat="server" Width="209px" TextMode="Number" style="height: 22px"></asp:TextBox>
                   </td>
                   <td class="auto-style6">
                       <strong><em>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Mobile Number" ControlToValidate="Mnum" CssClass="auto-style9" ValidationGroup="g2"></asp:RequiredFieldValidator>
                       <br class="auto-style9" />
                       </em></strong>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style4">E-Mail Address</td>
                   <td class="auto-style5">
                       <asp:TextBox ID="Email" runat="server" Width="206px" TextMode="Email"></asp:TextBox>
                   </td>
                   <td class="auto-style6">
                       <strong><em>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="E-mail is Required" CssClass="auto-style9" ControlToValidate="Email" ValidationGroup="g2"></asp:RequiredFieldValidator>
                       <br class="auto-style9" />
                       </em></strong>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style4">Password</td>
                   <td class="auto-style5">
                       <asp:TextBox ID="passwd" runat="server" Width="207px" TextMode="Password" MiniLength="8" MaxLength="16"></asp:TextBox>
                   </td>
                   <td class="auto-style6">
                       <strong><em>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password is Required" ControlToValidate="passwd" CssClass="auto-style9" ValidationGroup="g2"></asp:RequiredFieldValidator>
                       <br class="auto-style9" />
                       </em></strong>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style4">Confirm Password</td>
                   <td class="auto-style5">
                       <asp:TextBox ID="Cpasswd" runat="server" Width="207px"  TextMode="Password"></asp:TextBox>
                   </td>
                   <td class="auto-style6">
                       <strong><em>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Confirm Password is Required" ControlToValidate="Cpasswd" CssClass="auto-style9" ValidationGroup="g2"></asp:RequiredFieldValidator>
                       <br class="auto-style9" />
                       <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Does not Matched" CssClass="auto-style9" ControlToCompare="passwd" ControlToValidate="Cpasswd" ValueToCompare="g2"></asp:CompareValidator>
                       </em></strong>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style4">Date Of&nbsp; Birth</td>
                   <td class="auto-style5">
                       <asp:TextBox ID="Date" runat="server" TextMode="Date" Width="205px"></asp:TextBox>
                   </td>
                   <td class="auto-style6">
                       <strong><em>
                       <asp:RequiredFieldValidator ID="DOB" runat="server" ErrorMessage="D.O.B. is Required" ControlToValidate="Date" CssClass="auto-style9" ValidationGroup="g2"></asp:RequiredFieldValidator>
                       </em></strong>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style11">Gender</td>
                   <td class="auto-style12">
                       &nbsp;&nbsp;
                       <asp:DropDownList ID="gend" runat="server" Height="16px" Width="142px">
                           <asp:ListItem Selected="True">None</asp:ListItem>
                           <asp:ListItem>Male</asp:ListItem>
                           <asp:ListItem>Female</asp:ListItem>
                           <asp:ListItem>Others</asp:ListItem>
                       </asp:DropDownList>
                   </td>
                   <td class="auto-style13">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="gend" ErrorMessage="Select Your Gender" ForeColor="Red" ValidationGroup="g2"></asp:RequiredFieldValidator>
                       <strong><em><br class="auto-style9" />
                       
                       </em></strong>
                       
                   </td>
               </tr>
               <tr>
                   <td class="auto-style14"><strong>Address </strong> </td>
                   <td class="auto-style18">
                       <asp:TextBox ID="addres" runat="server" TextMode="MultiLine"></asp:TextBox>

                   </td>
                   <td class="auto-style17">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="addres" runat="server" ErrorMessage="Enter the Address" ValidationGroup="g2"></asp:RequiredFieldValidator>
                   </td>
               </tr>
           </table>

       </div>
       <div class="auto-style16">
           <br />
       </div>
       <div class="auto-style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="msg" runat="server" Visible="true" ForeColor="Green" Text="Message !"></asp:Label></div>
       <div class="auto-style16">
           <br />
       </div>
       <div class="auto-style16">
           <asp:Button ID="registr" runat="server" CssClass="auto-style7" Text=" REGISTER " Width="214px" OnClick="Register" ValidationGroup="g2" />
           <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
           
       &nbsp;</div>
       <div Cssclass="new" class="auto-style16">
           <asp:Button ID="LoginPage" runat="server" CssClass="auto-style8" Text="Go To LOGIN PAGE." PostBackUrl = "~/Login.aspx"/>
           <br />
           <br />
           <br />
           <br />
           <br />
       </div>
   </div>
    </form>
</body>
</html>
