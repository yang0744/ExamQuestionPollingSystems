<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendEmail.aspx.cs" Inherits="Online_Quiz.SendEmail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>send Email</title>
    <style>
        .myDiv{
            color:brown;
            font-family:'Franklin Gothic Medium', sans-serif;
            background-color:aquamarine;
          
        }
        h1{
            color:burlywood;
            stress:25;
        }
    </style>
</head>
<body>
    <div class="myDiv">
    <form id="form1" runat="server">
        <div>
            <h1 align="center">Mailing Systems</h1>
        </div>
        <table align="center" style="width:60%;" >
        <tr>
            <td>To </td>
            <td>
                <asp:TextBox ID="txtTo" runat="server" TextMode="Email"></asp:TextBox>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidatorTo" runat="server" ControlToValidate="txtTo" ErrorMessage="please enter a correct email" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTo" runat="server" ControlToValidate="txtTo" ErrorMessage="to email is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
            <tr>
            <td>From </td>
            <td>
                <asp:TextBox ID="txtFrom" runat="server" TextMode="Email"></asp:TextBox>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidatorFrom" runat="server" ControlToValidate="txtFrom" ErrorMessage="please enter correct email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#FF3300"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorFrom" runat="server" ControlToValidate="txtFrom" ErrorMessage="from Email is required"></asp:RequiredFieldValidator>
                </td>
            
        </tr>

            <tr>
            <td>Subject </td>
            <td>
                <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
                </td>
            
        </tr>

            <tr>
            <td>Body </td>
            <td>
                <asp:TextBox ID="txtBody" runat="server" Height="91px" TextMode="MultiLine" Width="288px"></asp:TextBox>
                </td>
            
        </tr>

            <tr>
            <td>&nbsp;<asp:Label ID="lblStatus" runat="server" Text="*" Font-Size="X-Large"></asp:Label>
                </td>
            <td>
                <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnBack" runat="server" Text="Back" CausesValidation="False" />
                <br />
                </td>
            
        </tr>
        
    </table>
    </form>
    </div>
</body>
</html>
