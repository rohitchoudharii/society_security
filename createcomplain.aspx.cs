using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class createcomplain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void create_cmp(object sender, System.EventArgs e)
    {
        string id= Request.QueryString["id"];
        string[] Values = new string[3];
        string[] ColumnNames = new string[3];
        DataSet ds = new DataSet("test");
        DLL objDLL = new DLL();
        Values[0] = cfor.Text;
        Values[1] = complain.Text;
        Values[2]=id;
        ColumnNames[0] = "CompFor";
        ColumnNames[1] = "CompReason";
        ColumnNames[2] = "uid";
        try
        {
            ds = objDLL.GrabValues("createcmp", ColumnNames, Values);
        }
        catch
        {
        }
        Response.Redirect("User.aspx?id=" + id);
    }
}