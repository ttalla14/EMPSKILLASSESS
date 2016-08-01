using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

public partial class Login : System.Web.UI.Page
{
    private string strcon = WebConfigurationManager.ConnectionStrings["Azureserver"].ConnectionString;
    
    protected void Page_Load(object sender, EventArgs e)
    {
       if(!IsPostBack)
       {
            if (Request.Cookies["UName"] != null)
                TextBox1.Text = Request.Cookies["UName"].Value;
            if (Request.Cookies["PWD"] != null)
                TextBox2.Attributes["Value"] = Request.Cookies["PWD"].Value;
            if (Request.Cookies["UName"] != null && Request.Cookies["PWD"] != null)
                CheckBox1.Checked = true;
      }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strcon);
        SqlCommand cmd = new SqlCommand("Select SupervisorId  from Supervisors where SupervisorName=@sname and Password=@pw", con);
        cmd.Parameters.AddWithValue("@sname", TextBox1.Text);
        cmd.Parameters.AddWithValue("@pw", TextBox2.Text);
        con.Open();
        var supervisorId  = cmd.ExecuteScalar().ToString();
        con.Close();
        if (supervisorId == null)
            Label1.Text = "Sorry Invalid Supervisor ID or Password!";
        else
        {
            if (CheckBox1.Checked)
            {
                Response.Cookies["UName"].Value = TextBox1.Text;
                Response.Cookies["PWD"].Value = TextBox2.Text;
                Response.Cookies["UName"].Expires = DateTime.Now.AddMonths(2);
                Response.Cookies["PWD"].Expires = DateTime.Now.AddMonths(2);
            }
            Session.Add("supervisorname", TextBox1.Text);
            Session.Add("supervisorid", supervisorId);
            Session.Add("password", TextBox2.Text);
            FormsAuthentication.RedirectFromLoginPage(supervisorId, false);
           // string namefromsession = Session["supervisorname"].ToString();
        }
    }
}