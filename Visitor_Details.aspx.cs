using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Media;

public partial class Visitor_Details : System.Web.UI.Page
{
    int c;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblVisitorID.Text = Request.QueryString["Id"];
        Retriew_Visitor_Data();
        getSecCheck();
        if(c==1)
        {
            string[] Values2 = new string[1];
            string[] ColumnNames2 = new string[1];
            DataSet ds2 = new DataSet("test");
            DLL objDLL = new DLL();
            Values2[0] = lblVisitorID.Text;
            ColumnNames2[0] = "v_id";
            ds2 = objDLL.GrabValues("makerev", ColumnNames2, Values2);
 
        }
    }
    public void getSecCheck()
    {
        string[] Values1 = new string[1];
        string[] ColumnNames1 = new string[1];
        DataSet ds1 = new DataSet("test");
        DLL objDLL = new DLL();
        Values1[0] = lblVisitorID.Text;
        ColumnNames1[0] = "v_id";
        ds1 = objDLL.GrabValues("seccheck", ColumnNames1, Values1);
        int a = Int32.Parse(ds1.Tables[0].Rows[0][0].ToString());
        if (a == 0)
        {
            hide.Attributes["class"] = "hidden";
            c = 1;
        }
    }
    public void Retriew_Visitor_Data()
    {
        string[] Values = new string[1];
        string[] ColumnNames = new string[1];
        DataSet ds = new DataSet("test");
        DLL objDLL = new DLL();
        Values[0] = lblVisitorID.Text;
        ColumnNames[0] = "V_Id";
        try
        {
            ds = objDLL.GrabValues("VisitorDetails", ColumnNames, Values);
            lblVisitorID.Text = ds.Tables[0].Rows[0][0].ToString();
            lblVisitorName.Text = ds.Tables[0].Rows[0][1].ToString();
            lblUserID.Text = ds.Tables[0].Rows[0][2].ToString();
            lblFrom.Text = ds.Tables[0].Rows[0][3].ToString();
            lblReason.Text = ds.Tables[0].Rows[0][4].ToString();
            lblReviewed.Text = ds.Tables[0].Rows[0][5].ToString();
            lblDate.Text = ds.Tables[0].Rows[0][6].ToString();
            imgVisitorPhoto.ImageUrl = ds.Tables[0].Rows[0][7].ToString();
            imgVisitorPhoto.Width = 350;
            imgVisitorPhoto.Height = 350;
        }
        catch
        {
        }
    }
    public void Accept(object sender, System.EventArgs e)
    {
        string uid = lblUserID.Text;
        string[] Values = new string[2];
        string[] ColumnNames = new string[2];
        DLL objDLL = new DLL();
        Values[0] = lblVisitorID.Text;
        Values[1] = "YES";

        ColumnNames[0] = "v_id";
        ColumnNames[1] = "action";

        try
        {
            DataSet ds = new DataSet("test");
            ds = objDLL.GrabValues("ack", ColumnNames, Values);
        }
        catch { }
        Response.Redirect("User.aspx?id=" + uid);
    }

    public void Decline(object sender, System.EventArgs e)
    {
        string uid = lblUserID.Text;
        string[] Values = new string[2];
        string[] ColumnNames = new string[2];
        DLL objDLL = new DLL();
        Values[0] = lblVisitorID.Text;
        Values[1] = "NO";

        ColumnNames[0] = "v_id";
        ColumnNames[1] = "action";

        try
        {
            DataSet ds = new DataSet("test");
            ds = objDLL.GrabValues("ack", ColumnNames, Values);
        }
        catch { }
        Response.Redirect("User.aspx?id=" + uid);
    }
    public void NAH(object sender, System.EventArgs e)
    {
        string uid = lblUserID.Text;
        string[] Values = new string[2];
        string[] ColumnNames = new string[2];
        DLL objDLL = new DLL();
        Values[0] = lblVisitorID.Text;
        Values[1] = "NAH";

        ColumnNames[0] = "v_id";
        ColumnNames[1] = "action";

        try
        {
            DataSet ds = new DataSet("test");
            ds = objDLL.GrabValues("ack", ColumnNames, Values);
        }
        catch { }
        Response.Redirect("User.aspx?id=" + uid);
    }
    public void Homebtn(object sender, System.EventArgs e)
    {
        string uid = lblUserID.Text;
        Response.Redirect("User.aspx?id=" + uid);
    }
}