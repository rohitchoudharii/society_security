using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class complain_box : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindGridview();
        gvDetails.ControlStyle.Font.Size = 20;
    }
    public void BindGridview()
    {
        
        string[] UserName = new string[1];
        string[] ColumnNames = new string[1];
        DataSet ds = new DataSet("test");
        DLL objDLL = new DLL();
        ColumnNames[0] = "usname";
        UserName[0] = "user";
        ds = objDLL.GrabValues("cmp", ColumnNames, UserName);
        gvDetails.DataSource = ds;
        gvDetails.DataBind();
    }
    protected void gvDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvDetails.PageIndex = e.NewPageIndex;
        BindGridview();
    }
}