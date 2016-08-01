<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateSupervisor.aspx.cs" Inherits="UpdateSupervisor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 137px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Update My Record</h2>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">SupervisorName:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Password:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" Width="83px" />
            </td>
            <td>
                <asp:Label ID="successLbl" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
</asp:Content>

