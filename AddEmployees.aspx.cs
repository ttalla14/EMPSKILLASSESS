using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class AddEmployees : System.Web.UI.Page
{
    string strcon = WebConfigurationManager.ConnectionStrings["Azureserver"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Label2.Text = Session["studid"].ToString();
        Label2.Text = Session["supervisorid"].ToString();

        //Label3.Text = DateTime.Now.ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        if (Page.IsValid)
        {

            SqlConnection con = new SqlConnection(strcon);
            //SqlCommand cmd = new SqlCommand("Insert into AddEmployee (Supervisorid,EmployeeName=@name, DateOfBirth=@dob, WorkAuthorization=@wa, ContactNumber=@cn, Ssn=@sn, TrainingAvailableDate=@td, MarketingAvailableDate=@md, EmailAddress=@ea, EducationDeatils=@ed, HighestEducationUniversityName=@heun, InterestedTechnology=@it, PreviousYearOfExp=@pyoe, CommunicationSkillsRating=@csr, AdditionalSkills=@as where EmployeeId=@eid", con);
            SqlCommand cmd = new SqlCommand("Insert into AddEmployee(Supervisorid ,EmployeeName, DateOfBirth, WorkAuthorization, ContactNumber, Ssn, TrainingAvailableDate, MarketingAvailableDate, EmailAddress, EducationDetails, HighestEducationUniversityName, InterestedTechnology, PreviousYearOfExp, CommunicationSkillsRating, AdditionalSkills, Status) VALUES (@sid, @name, @dob, @wa, @cn, @sn, @td, @md, @ea, @ed, @heun, @it, @pyoe, @csr, @as, @s)", con);
            cmd.Parameters.AddWithValue("@sid", Label2.Text);
            //cmd.Parameters.AddWithValue("@d", Convert.ToDateTime(Label3.Text));
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@dob", TextBox8.Text);
            cmd.Parameters.AddWithValue("@wa", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@cn", TextBox3.Text);

            cmd.Parameters.AddWithValue("@sn", DropDownList5.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@td", TextBox9.Text);
            cmd.Parameters.AddWithValue("@md", TextBox10.Text);

            cmd.Parameters.AddWithValue("@ea", TextBox5.Text);
            cmd.Parameters.AddWithValue("@ed", TextBox2.Text);
            cmd.Parameters.AddWithValue("@heun", TextBox6.Text);
            cmd.Parameters.AddWithValue("@it", DropDownList3.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@pyoe", DropDownList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@csr", DropDownList4.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@as", TextBox4.Text);
            cmd.Parameters.AddWithValue("@s", ddlName.SelectedItem.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            successLbl.Text = "1 Record Added";
        }
        else
        {
            successLbl.Text = "please enter the required fields and try again..";
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}