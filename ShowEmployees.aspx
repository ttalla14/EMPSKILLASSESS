<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShowEmployees.aspx.cs" Inherits="ShowEmployees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Show All Employees</h2>
    <p>&nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" DataKeyNames="EmployeeId" BorderColor="#CCCCCC" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" BorderStyle="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="EmployeeId" HeaderText="EmployeeId" InsertVisible="False" ReadOnly="True" SortExpression="EmployeeId" />
                <asp:BoundField DataField="SupervisorId" HeaderText="SupervisorId" SortExpression="SupervisorId" />
                <asp:BoundField DataField="EmployeeName" HeaderText="EmployeeName" SortExpression="EmployeeName" />
                <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
                <asp:BoundField DataField="WorkAuthorization" HeaderText="WorkAuthorization" SortExpression="WorkAuthorization" />
                <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
                <asp:BoundField DataField="Ssn" HeaderText="Ssn" SortExpression="Ssn" />
                <asp:BoundField DataField="TrainingAvailableDate" HeaderText="TrainingAvailableDate" SortExpression="TrainingAvailableDate" />
                <asp:BoundField DataField="MarketingAvailableDate" HeaderText="MarketingAvailableDate" SortExpression="MarketingAvailableDate" />
                <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
                <asp:BoundField DataField="EducationDetails" HeaderText="EducationDetails" SortExpression="EducationDetails" />
                <asp:BoundField DataField="HighestEducationUniversityName" HeaderText="HighestEducationUniversityName" SortExpression="HighestEducationUniversityName" />
                <asp:BoundField DataField="InterestedTechnology" HeaderText="InterestedTechnology" SortExpression="InterestedTechnology" />
                <asp:BoundField DataField="PreviousYearOfExp" HeaderText="PreviousYearOfExp" SortExpression="PreviousYearOfExp" />
                <asp:BoundField DataField="CommunicationSkillsRating" HeaderText="CommunicationSkillsRating" SortExpression="CommunicationSkillsRating" />
                <asp:BoundField DataField="AdditionalSkills" HeaderText="AdditionalSkills" SortExpression="AdditionalSkills" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" ForeColor="White" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeeSkillConnectionString2 %>" SelectCommand="SELECT * FROM [AddEmployee]" DeleteCommand="DELETE FROM [AddEmployee] WHERE [EmployeeId] = @EmployeeId" InsertCommand="INSERT INTO [AddEmployee] ([SupervisorId], [EmployeeName], [DateOfBirth], [WorkAuthorization], [ContactNumber], [Ssn], [TrainingAvailableDate], [MarketingAvailableDate], [EmailAddress], [EducationDetails], [HighestEducationUniversityName], [InterestedTechnology], [PreviousYearOfExp], [CommunicationSkillsRating], [AdditionalSkills], [Status]) VALUES (@SupervisorId, @EmployeeName, @DateOfBirth, @WorkAuthorization, @ContactNumber, @Ssn, @TrainingAvailableDate, @MarketingAvailableDate, @EmailAddress, @EducationDetails, @HighestEducationUniversityName, @InterestedTechnology, @PreviousYearOfExp, @CommunicationSkillsRating, @AdditionalSkills, @Status)" UpdateCommand="UPDATE [AddEmployee] SET [SupervisorId] = @SupervisorId, [EmployeeName] = @EmployeeName, [DateOfBirth] = @DateOfBirth, [WorkAuthorization] = @WorkAuthorization, [ContactNumber] = @ContactNumber, [Ssn] = @Ssn, [TrainingAvailableDate] = @TrainingAvailableDate, [MarketingAvailableDate] = @MarketingAvailableDate, [EmailAddress] = @EmailAddress, [EducationDetails] = @EducationDetails, [HighestEducationUniversityName] = @HighestEducationUniversityName, [InterestedTechnology] = @InterestedTechnology, [PreviousYearOfExp] = @PreviousYearOfExp, [CommunicationSkillsRating] = @CommunicationSkillsRating, [AdditionalSkills] = @AdditionalSkills, [Status] = @Status WHERE [EmployeeId] = @EmployeeId">
            <DeleteParameters>
                <asp:Parameter Name="EmployeeId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SupervisorId" Type="Int32" />
                <asp:Parameter Name="EmployeeName" Type="String" />
                <asp:Parameter Name="DateOfBirth" Type="DateTime" />
                <asp:Parameter Name="WorkAuthorization" Type="String" />
                <asp:Parameter Name="ContactNumber" Type="String" />
                <asp:Parameter Name="Ssn" Type="String" />
                <asp:Parameter Name="TrainingAvailableDate" Type="DateTime" />
                <asp:Parameter Name="MarketingAvailableDate" Type="DateTime" />
                <asp:Parameter Name="EmailAddress" Type="String" />
                <asp:Parameter Name="EducationDetails" Type="String" />
                <asp:Parameter Name="HighestEducationUniversityName" Type="String" />
                <asp:Parameter Name="InterestedTechnology" Type="String" />
                <asp:Parameter Name="PreviousYearOfExp" Type="String" />
                <asp:Parameter Name="CommunicationSkillsRating" Type="Int32" />
                <asp:Parameter Name="AdditionalSkills" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="SupervisorId" Type="Int32" />
                <asp:Parameter Name="EmployeeName" Type="String" />
                <asp:Parameter Name="DateOfBirth" Type="DateTime" />
                <asp:Parameter Name="WorkAuthorization" Type="String" />
                <asp:Parameter Name="ContactNumber" Type="String" />
                <asp:Parameter Name="Ssn" Type="String" />
                <asp:Parameter Name="TrainingAvailableDate" Type="DateTime" />
                <asp:Parameter Name="MarketingAvailableDate" Type="DateTime" />
                <asp:Parameter Name="EmailAddress" Type="String" />
                <asp:Parameter Name="EducationDetails" Type="String" />
                <asp:Parameter Name="HighestEducationUniversityName" Type="String" />
                <asp:Parameter Name="InterestedTechnology" Type="String" />
                <asp:Parameter Name="PreviousYearOfExp" Type="String" />
                <asp:Parameter Name="CommunicationSkillsRating" Type="Int32" />
                <asp:Parameter Name="AdditionalSkills" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="EmployeeId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
</asp:Content>

