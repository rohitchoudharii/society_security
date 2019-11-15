using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class create_notice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void create_noticefun(object sender, System.EventArgs e)
    {
        string id=Request.QueryString["id"];
        string[] Values = new string[2];
        string[] ColumnNames = new string[2];
        DataSet ds = new DataSet("test");
        DLL objDLL = new DLL();
        Values[0] = nfor.Text;
        Values[1] = notice.Text;
        ColumnNames[0] = "ntcfor";
        ColumnNames[1] = "ntcreason";
        try
        {
            ds = objDLL.GrabValues("createntc", ColumnNames, Values);
        }
        catch
        {
        }
        Response.Redirect("admin.aspx?id=" + id);
    }
}