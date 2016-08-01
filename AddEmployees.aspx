<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddEmployees.aspx.cs" Inherits="AddEmployees" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 190px;
        }

        .auto-style3 {
            width: 190px;
            height: 23px;
        }

        .auto-style4 {
            height: 23px;
        }

        .auto-style5 {
            width: 21%;
            height: 26px;
        }

        .auto-style6 {
            height: 26px;
        }

        .auto-style7 {
            width: 21%;
            height: 33px;
        }

        .auto-style8 {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <h2>Add Employee</h2>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Supervisor Id:</td>
            <td class="auto-style4">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Employee Name:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" MaxLength="50" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Employee Name Required " ForeColor="Red" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="CustomValidator" ForeColor="Red"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Date of Birth:</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/Image/13.jpg" />
                <ajaxToolkit:CalendarExtender ID="CalendarExtender3" runat="server" TargetControlID="TextBox8" />
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RFVtxbox8" runat="server" ErrorMessage="Date of Birth Required" ControlToValidate="TextBox8" ForeColor="Red" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
            </td>


        </tr>
        <tr>
            <td class="auto-style2">Work Authorization:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Value="1" Selected="True">Select</asp:ListItem>
                    <asp:ListItem>F1-CPT</asp:ListItem>
                    <asp:ListItem>F1-OPT</asp:ListItem>
                    <asp:ListItem>F1-OPT_EXT</asp:ListItem>
                    <asp:ListItem>H1</asp:ListItem>
                    <asp:ListItem>B1</asp:ListItem>
                    <asp:ListItem>L1</asp:ListItem>
                    <asp:ListItem>GreenCard EAD</asp:ListItem>
                    <asp:ListItem>US Citizen</asp:ListItem>

                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RFV3" runat="server" InitialValue="1" ErrorMessage="Work Authorization Required" ControlToValidate="DropDownList1" ForeColor="Red" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Contact Number:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RFV7" runat="server" ErrorMessage="Contact Number Required" ControlToValidate="TextBox3" ForeColor="Red" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid phone number" ForeColor="Red" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">SSN:</td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownList5" runat="server">
                    <asp:ListItem Value="1" Selected="True">Select</asp:ListItem>
                    <asp:ListItem>YES</asp:ListItem>
                    <asp:ListItem>NO</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RFVSSN" runat="server" InitialValue="1" ErrorMessage="SSN Required" ControlToValidate="DropDownList5" ForeColor="Red" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style5">Training Date:</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                &nbsp;<asp:Image ID="Image2" runat="server" ImageUrl="~/Image/13.jpg" />
                <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox9" />
            </td>

            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RFVTextBox9" runat="server" ErrorMessage="Training Date Required" ControlToValidate="TextBox9" ForeColor="Red" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Marketing Date:</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                &nbsp;<asp:Image ID="Image3" runat="server" ImageUrl="~/Image/13.jpg" />
                <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="TextBox10" />
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RFVTextBox10" runat="server" ErrorMessage="Marketing Date Required" ControlToValidate="TextBox10" ForeColor="Red" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">SSN last 4 Digits: </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="SSN Number Required" ControlToValidate="TextBox7" ForeColor="Red" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter valid SSN number" ForeColor="Red" ValidationExpression="\d{3}-\d{2}-\d{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Email Address:</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Required Field"ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                <asp:RequiredFieldValidator ID="rfvEmailRequired" runat="server" ErrorMessage="Email Address Required" ControlToValidate="TextBox5" ForeColor="Red" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email Address" ControlToValidate="TextBox5" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Education Details:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="87px" MaxLength="500" Width="411px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Education Details Required" ControlToValidate="TextBox2" ForeColor="Red" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Highest Education University Name:</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Width="411px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="University Name Required" ControlToValidate="TextBox6" ForeColor="Red" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Interested Technology:</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                    <asp:ListItem Value="1" Selected="True">Select</asp:ListItem>
                    <asp:ListItem>.NET</asp:ListItem>
                    <asp:ListItem>JAVA</asp:ListItem>
                    <asp:ListItem>DEV OPS</asp:ListItem>
                    <asp:ListItem>PROD SUPPORT</asp:ListItem>
                    <asp:ListItem>SHARE POINT</asp:ListItem>
                    <asp:ListItem>HADOOP</asp:ListItem>
                    <asp:ListItem>INFORMATICA</asp:ListItem>
                    <asp:ListItem>TESTING</asp:ListItem>

                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" InitialValue="1" ErrorMessage="Interested Technology Required" ControlToValidate="DropDownList3" ForeColor="Red" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Previous Years of Exp:</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem Value="1" Selected="True">Select</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10+</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" InitialValue="1" ErrorMessage="Previous Years of Exp Required" ControlToValidate="DropDownList2" ForeColor="Red" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Communication Skills Rating:</td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server">
                    <asp:ListItem Value="1" Selected="True">Select</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" InitialValue="1" ErrorMessage="Rating Required" ControlToValidate="DropDownList4" ForeColor="Red" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Additional Skills:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="98px" MaxLength="500" Width="415px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Additional Skills Required" ControlToValidate="TextBox4" ForeColor="Red" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Status:</td>
            <td>
                <asp:DropDownList ID="ddlName" runat="server">
                    <asp:ListItem Value="1" Selected="True">Select</asp:ListItem>
                    <asp:ListItem>Active</asp:ListItem>
                    <asp:ListItem>Not Active</asp:ListItem>

                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" InitialValue="1" ErrorMessage="Status Required" ControlToValidate="ddlName" ForeColor="Red" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Label ID="successLbl" runat="server" Text=""></asp:Label>

            </td>
        </tr>
    </table>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" Height="40px" Width="100px" EnableTheming="False" CausesValidation="true" ValidationGroup="AllValidators" />
</asp:Content>

