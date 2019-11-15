using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void Login1(object sender, System.EventArgs e)
    {
        string[] Values = new string[2];
        string[] ColumnNames = new string[2];
        DLL objDLL = new DLL();
        Values[0] = userid.Text;
        Values[1] = pswd.Text;

        ColumnNames[0] = "username";
        ColumnNames[1] = "pass";

        lblError.Text = "";

        try
        {
            DataSet ds = new DataSet("test");
            ds = objDLL.GrabValues("LogInCheck", ColumnNames, Values);



            if (ds.Tables[0].Rows[0][0].ToString() == "user")
            {
                Response.Redirect("User.aspx?id=" + Values[0]);

            }
            else if (ds.Tables[0].Rows[0][0].ToString() == "admin")
            {
                Response.Redirect("Admin.aspx?id=" + Values[0]);
            }
            else if (ds.Tables[0].Rows[0][0].ToString() == "sec")
            {
                Response.Redirect("security.aspx?id=" + Values[0]);
            }
        }
        catch
        {
            lblError.Text = "Wrong Username or Password.!!";
        }
    }

}