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

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Day.Enabled = false; //Initially disable day due to logical reasons

        for (int i = 1950; i <= 2008; i++)
            this.Year.Items.Add(i.ToString());
    }
    protected void Month_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.Day.Enabled = false; //Initial disable day

        short MAX_DAYS = 0;
        short mon = System.Int16.Parse(this.Month.SelectedValue);
        switch (mon)
        {
            case 2:
                MAX_DAYS = 29;
                break;
            case 1:
            case 3:
            case 5:
            case 7:
            case 8:
            case 10:
            case 12:
                MAX_DAYS = 31;
                break;
            case 4:
            case 6:
            case 9:
            case 11:
                MAX_DAYS = 30;
                break;
        }

        for (short i = 1; i <= MAX_DAYS; i++)
            this.Day.Items.Add(i.ToString());
        this.Day.Enabled = true; //Enable days
    }
    protected void Password_TextChanged(object sender, EventArgs e)
    {
        this.Password.TextMode = TextBoxMode.Password;
    }
    protected void PasswordConfirm_TextChanged(object sender, EventArgs e)
    {
        this.PasswordConfirm.TextMode = TextBoxMode.Password;
    }
}
