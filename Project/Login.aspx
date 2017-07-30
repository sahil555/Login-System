<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 125%;
            height: 479px;
        }
        .auto-style4 {
            width: 822px;
            height: 413px;
        }
        .auto-style6 {
            width: 831px;
            height: 225px;
            text-align: center;
        }
        .auto-style7 {
            height: 225px;
            width: 678px;
            text-align: center;
        }
        .auto-style8 {
            margin-left: 29px;
        }
        .auto-style9 {
            margin-left: 53px;
        }
        .auto-style10 {
            color: #000099;
        }
        strong {
            font-family: "AR CENA";
        }
        .auto-style11 {
            margin-left: 24px;
        }
        .auto-style12 {
            margin-left: 0px;
        }
        .auto-style13 {
            font-size: xx-large;
            color: #FF0000;
            text-decoration: underline;
        }
        .auto-style15 {
            width: 639px;
            text-align: left;
        }
        .auto-style16 {
            text-align: center;
        }
        .auto-style17 {
            text-align: left;
        }
        .auto-style18 {
            text-align: center;
            width: 831px;
        }
        .auto-style19 {
            text-align: center;
            margin-left: 80px;
        }
        .auto-style20 {
            width: 152px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div ID="main">
        
        <div id="top" class="auto-style19">
              
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
            </div>

        <div id="center">
         <div ID="center_right" class="auto-style16">
             <div class="auto-style16">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style13"><strong>CLICK ON IMAGE FOR REGISTER&nbsp; </strong></span>&nbsp;&nbsp;&nbsp;
             </div>
             <table class="auto-style3">
                 <tr>
                     <td class="auto-style6">
                         <a href="Register.aspx"><img alt="register" class="auto-style4" src="Images/4.jpg" /></a></td>
                     <td class="auto-style20"> </td>
                     <td class="auto-style7">
                         <h1 class="auto-style17"><span class="auto-style10">SignIn From Here</span> </h1>
                             <div class="auto-style17">

                                 &nbsp;E-Mail&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; :<asp:TextBox ID="checkmail" runat="server" CssClass="auto-style8" Width="218px" TextMode="Email"></asp:TextBox>

                             &nbsp;<asp:Label ID="mail" runat="server" Text=" " ForeColor="Red"></asp:Label>

                             &nbsp;<asp:RequiredFieldValidator ID="req" runat="server" ControlToValidate="checkmail" ErrorMessage="Enter Your Email" ForeColor="Red" ValidationGroup="va , g1"></asp:RequiredFieldValidator>

                             &nbsp;<br />

                             </div>
                             <div class="auto-style15">

                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                 <br />
&nbsp;Password&nbsp;&nbsp;&nbsp; :
                                 <asp:TextBox ID="checkpasswd" runat="server" CssClass="auto-style11" Width="218px" TextMode="Password" ></asp:TextBox>
&nbsp;

                                 <asp:Label ID="Pass" runat="server" ForeColor="Red" Text=" "></asp:Label>

                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="checkpasswd" ErrorMessage="Enter the Password" ForeColor="Red" ValidationGroup="va"></asp:RequiredFieldValidator>

                             </div>
                            <div class="auto-style17">

                                &nbsp;<br />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Login" runat="server" CssClass="auto-style9" Text="Login" Width="91px" OnClick="LogIn_" ValidationGroup="va" />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Recover" runat="server" Text="Forgot Password" Width="110px" CssClass="auto-style12" OnClick="forgotpasswd" ValidationGroup="g1" />
                            &nbsp;&nbsp;&nbsp;
                                 <asp:Label ID="Lab1" runat="server" ForeColor="Red" Text=" "></asp:Label>

                            </div>

                        </form>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style18">
                         
                         &nbsp;</td>
                 </tr>
             </table>

         </div>
        </div>
        <div id="Bottom">

        </div>
    </div>
    
    </form>
    
    </form>
    
    </form>
    
    </form>
    
    </form>
    
</body>
</html>
