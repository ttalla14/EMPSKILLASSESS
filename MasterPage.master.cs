using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["supervisorname"] == null) Response.Redirect("Login.aspx");
        else Label1.Text = Session["supervisorname"].ToString();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("Login.aspx");
    }
    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {

    }
}
