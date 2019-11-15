using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class VisitorInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Complain_Click(object sender, EventArgs e)
    {
        string[] Values = new string[2];
        string[] ColumnNames = new string[2];
        DataSet ds = new DataSet("test");
        DLL objDLL = new DLL();
        Values[0] = txtwing.Text;
        ColumnNames[0] = "wing_no";
        Values[1] = txtflatno.Text;
        ColumnNames[1] = "flat_no";
        ds = objDLL.GrabValues("vlist", ColumnNames,Values);
        
        gvDetails.DataSource = ds;
        gvDetails.DataBind();
        gvDetails.ControlStyle.Font.Size = 20;
    }
}