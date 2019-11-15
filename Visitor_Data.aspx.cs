using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Visitor_Data : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        lblVisitorID.Text = Request.QueryString["Id"];
        getinfo();
    }
    public void getinfo()
    {
        string[] Values = new string[1];
        string[] ColumnNames = new string[1];
        DataSet ds = new DataSet("test");
        DLL objDLL = new DLL();
        Values[0] = lblVisitorID.Text;
        ColumnNames[0] = "vid";
        try
        {
            ds = objDLL.GrabValues("vdata", ColumnNames, Values);
            lblVisitorID.Text = ds.Tables[0].Rows[0][0].ToString();
            lblVisitorName.Text = ds.Tables[0].Rows[0][1].ToString();
            lblUserID.Text = ds.Tables[0].Rows[0][2].ToString();
            lblFrom.Text = ds.Tables[0].Rows[0][3].ToString();
            lblReason.Text = ds.Tables[0].Rows[0][4].ToString();
            lblReviewed.Text = ds.Tables[0].Rows[0][5].ToString();
            lblDate.Text = ds.Tables[0].Rows[0][6].ToString();
            imgVisitorPhoto.ImageUrl = ds.Tables[0].Rows[0][7].ToString();
            imgVisitorPhoto.Width = 450;
            imgVisitorPhoto.Height = 350;
            lblStatus.Text = ds.Tables[0].Rows[0][8].ToString();
        }
        catch
        {
        }
    }
}