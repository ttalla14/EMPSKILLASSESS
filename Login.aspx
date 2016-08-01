<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.9.1.js"></script>
    <link href="Styles/StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 166px;
        }
        .auto-style3 {
            width: 274px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="header">
    Employee Skill Assessment
        <h2>&nbsp;</h2>
        <h2>&nbsp;</h2>
      
    </div>
                <h2>Login</h2>
       <p>
            &nbsp;</p>

        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Supervisor ID:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 1px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Me" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click"/>
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </form>
</body>
</html>
