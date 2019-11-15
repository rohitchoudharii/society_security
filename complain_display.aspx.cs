using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class complain_display : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string cid = Request.QueryString["id"];
        string[] Values = new string[1];
        string[] ColumnNames = new string[1];
        DataSet ds = new DataSet("test");
        DLL objDLL = new DLL();
        Values[0] = cid;
        ColumnNames[0] = "complain_id";
        ds = objDLL.GrabValues("cmp_display", ColumnNames, Values);
        lblReason.Text = ds.Tables[0].Rows[0][2].ToString();
        lblFor.Text = ds.Tables[0].Rows[0][1].ToString();
    }
}
