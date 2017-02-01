using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    //defining variables to be used on page

    public string Name = "Nathan Hawkins";
    public List<string> Options = new List<string>
    {
        "Mays",
        "Nathan",
        "Scout",
        "Susie"
    };
    public string Winner = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            Name = Request.Form["Word"];
            Winner = Request.Form["Winner"];
        }
    }
}