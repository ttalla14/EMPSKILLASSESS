using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class UpdateSupervisor : System.Web.UI.Page
{
    private string strcon = WebConfigurationManager.ConnectionStrings["Azureserver"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            TextBox1.Text = Session["supervisorname"].ToString();
            TextBox2.Text = Session["password"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strcon);
        SqlCommand cmd = new SqlCommand("Update Supervisors set SupervisorName=@name, Password=@pw where SupervisorId=@sid", con);
        cmd.Parameters.AddWithValue("@sid", Session["supervisorid"].ToString());
        cmd.Parameters.AddWithValue("@name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@pw", TextBox2.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        successLbl.Text = "Record Updated. Change will occur in the next Login";
    }
}