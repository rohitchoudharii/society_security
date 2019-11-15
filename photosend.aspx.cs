using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Web.Services;

public partial class photosend : System.Web.UI.Page
{
    HttpCookie notify;
    protected void Page_Load(object sender, EventArgs e)
    {
        unme.Text = Request.QueryString["usid"];
        vid.Text = Request.QueryString["vid"];
        wf.Text = Request.QueryString["wingflat"];
        Session["vid"] = vid.Text.ToString();
        try
        {
            if (File.Exists(Server.MapPath("~/Images/" + vid.Text + ".jpeg"))) 
            {
                imgcap.ImageUrl = "~/Images/" + vid.Text + ".jpeg";
            }
            if ((Session["name" + vid.Text].ToString()) != null)
            {
                imgcap.ImageUrl = "~/Images/" + vid.Text + ".jpeg";
                reason.Text = Session["reason" + vid.Text].ToString();
                nme.Text = Session["name" + vid.Text].ToString();
                frm.Text = Session["from" + vid.Text].ToString();
            }
            Displaydetails();
        }
        catch { }
    }

    public void Displaydetails()
    {
        string[] Values = new string[1];
        string[] ColumnNames = new string[1];
        DataSet ds1 = new DataSet("test");
        DLL objDLL = new DLL();
        Values[0] = Session["vid"].ToString();
       ColumnNames[0] = "v_id";
        try
        {
            ds1 = objDLL.GrabValues("getack", ColumnNames, Values);
        }
        catch
        {
        }
        ack.Text = ds1.Tables[0].Rows[0][0].ToString();
    }
    public void Send_Msg(object sender, System.EventArgs e)
    {
        string[] Values = new string[5];
        string[] ColumnNames = new string[5];
        DataSet ds = new DataSet("test");
        DLL objDLL = new DLL();
        Session["name"+vid.Text]=nme.Text;
        Session["from"+vid.Text]=frm.Text;
        Session["reason"+vid.Text]=reason.Text;
        Values[0] = vid.Text;
        Values[1] = nme.Text;
        Values[2] = frm.Text;
        Values[3] = reason.Text;
        Values[4] = "~/Images/" + vid.Text + ".jpeg";
        ColumnNames[0] = "vid";
        ColumnNames[1] = "nme";
        ColumnNames[2] = "frm";
        ColumnNames[3] = "reason";
        ColumnNames[4] = "imurl";
        try
        {
            ds = objDLL.GrabValues("send", ColumnNames, Values);
        }
        catch
        {
        }
        imgcap.ImageUrl = "~/Images/" + vid.Text + ".jpeg";
    }

    protected void SecNAH_Click(object sender, EventArgs e)
    {
        string[] Values = new string[1];
        string[] ColumnNames = new string[1];
        DataSet ds = new DataSet("test");
        DLL objDLL = new DLL();
        Values[0] = vid.Text;
        ColumnNames[0] = "vid";
        try
        {
            ds = objDLL.GrabValues("NoResponse", ColumnNames, Values);
        }
        catch
        {
        }
    }
}