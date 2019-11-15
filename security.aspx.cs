using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
public partial class security : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
	}
    protected void Send_To(object sender, EventArgs e)
    {
        string usid;
        string[] Values = new string[2];
        string[] ColumnNames = new string[2];
        DataSet ds1 = new DataSet("test");
        DLL objDLL = new DLL();
        Values[0] = Wing.Text;
        Values[1] = Flat_no.Text;
        ColumnNames[0] = "wing";
        ColumnNames[1] = "Flat";
        try
        {
            ds1 = objDLL.GrabValues("get_uid", ColumnNames, Values);
        }
        catch
        {
        }
        usid = ds1.Tables[0].Rows[0][0].ToString();
        DateTime localDate = DateTime.Now;
        string[] Values1 = new string[3];
        string[] ColumnNames1 = new string[3];
        DataSet ds = new DataSet("test1");
        Values1[0] = usid;
        Values1[1] = Wing.Text;
        Values1[2] = Flat_no.Text;
        ColumnNames1[0] = "uname";
        ColumnNames1[1] = "wing";
        ColumnNames1[2] = "Flat";
        try
        {
            ds = objDLL.GrabValues("getvid", ColumnNames1, Values1);
        }
        catch
        {

        }
        Response.Redirect("photosend.aspx?usid=" + ds1.Tables[0].Rows[0][0].ToString() + "&vid=" + ds.Tables[0].Rows[0][0].ToString()+"&wingflat="+Wing.Text+"-"+Flat_no.Text);
    }
}
