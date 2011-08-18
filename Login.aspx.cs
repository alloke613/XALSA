using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        AccessDataSource ads = new AccessDataSource();
        ads.DataFile = "~/App_Data/Xalsa.mdb";

        if (this.Username.Text.Length == 0 | this.Password.Text.Length == 0)
        {
            this.Label1.ForeColor = System.Drawing.Color.Red;
            this.Label1.Text = "Login failed!";
            this.Username.Text = "";
            this.Password.Text = "";
            return;
        }

        ads.SelectParameters.Add("Username", this.Username.Text);
        ads.SelectParameters.Add("Password", this.Password.Text);

        ads.SelectCommand = "SELECT * FROM [Login] WHERE [Username] = @Username AND [Password] = @Password";

        DataView dv = (DataView)ads.Select(DataSourceSelectArguments.Empty);

        if (dv.Count == 0)
        {
            this.Label1.ForeColor = System.Drawing.Color.Red;
            this.Label1.Text = "Account details does not exist. Please register.";
            this.Username.Text = "";
            this.Password.Text = "";
            return;
        }

        this.Session["Username"] = dv[0].Row["Username"].ToString();
        this.Session["UserType"] = dv[0].Row["UserType"].ToString();

        if (this.Session["UserType"].ToString().Equals("member"))
            Response.Redirect("MembersHome.aspx");
        else if (this.Session["UserType"].ToString().Equals("admin"))
            Response.Redirect("AdminHome.aspx");
    }
}
