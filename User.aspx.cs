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


public partial class User : System.Web.UI.Page
{
    int notify1, notify2;
    int checkdetails1, checkdetails2, checkdetails3;
    int nov;
    HttpCookie collect, collect1, collect2;
    protected void Page_Load(object sender, EventArgs e)
    {

        uname.Text = Request.QueryString["id"];
        if (Request.Cookies["collector"] != null)
        {
            HttpCookie insert = Request.Cookies["collector"];
            checkdetails2 = Int32.Parse(insert.Value);
        }
        lbltext.Text = "0";
        
        gvDetails.ControlStyle.Font.Size = 20;

        if (Request.Cookies["collector1"] != null)
        {
            HttpCookie insert1 = Request.Cookies["collector1"];
            notify1 = Int32.Parse(insert1.Value);
        }

        BindGridview();
        if (nov != 1)
        {
            
            if (checkdetails1 > checkdetails2)
            {
                tgmeta.Attributes["content"] = "17";
                lbltext.Text = "1";
            }
        }
        string[] UserName = new string[1];
        string[] ColumnNames = new string[1];
        DataSet ds = new DataSet("test");
        DLL objDLL = new DLL();
        ColumnNames[0] = "username";
        UserName[0] = uname.Text;
        ds = objDLL.GrabValues("ntcnotification", ColumnNames, UserName);
        try
        {
            notify2 = Int32.Parse(ds.Tables[0].Rows[0][0].ToString());
        }
        catch { }
        if (notify1 < notify2)
        {
            int index = notify2 - notify1;
            Notice.Text = "Notice(" + index + ")";
        }
    }
    public void BindGridview()
    {
        string[] UserName = new string[1];
        string[] ColumnNames = new string[1];
        DataSet ds = new DataSet("test");
        DLL objDLL = new DLL();
        ColumnNames[0] = "UserName";
        UserName[0] = uname.Text;

        ds = objDLL.GrabValues("VisitorList", ColumnNames, UserName);

        gvDetails.DataSource = ds;
        gvDetails.DataBind();


        try
        {

            checkdetails1 = Int32.Parse(ds.Tables[0].Rows[0][0].ToString());
            if (Request.Cookies["collector"] != null)
            {
                collect = Request.Cookies["collector"];
                int nval = Int32.Parse(collect.Value);
                if (checkdetails1 > nval)
                {
                    collect.Value = checkdetails1.ToString();
                    collect.Expires = DateTime.Now.AddDays(10);
                    Response.Cookies.Add(collect);
                }
            }
            else
            {
                HttpCookie createcookie = new HttpCookie("collector");
                createcookie.Value = checkdetails1.ToString();
                createcookie.Expires = DateTime.Now.AddDays(10);
                Response.Cookies.Add(createcookie);
            }
        }
        catch
        {
            nov = 1;
            NoVisitor.Text = "No Visitor , Have a Nice Day";
        }

    }
    protected void gvDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            gvDetails.PageIndex = e.NewPageIndex;
            BindGridview();
        }
        catch
        {
            NoVisitor.Text = "No Visitor , Have a Nice Day";
        }
    }
    protected void Notice_Click(object sender, EventArgs e)
    {
        collect1 = new HttpCookie("collector1");
        collect1.Value = notify2.ToString();
        collect1.Expires = DateTime.Now.AddDays(1);
        Response.Cookies.Add(collect1);
       
        Response.Redirect("notice_board.aspx");
    }
    protected void Complain_Click(object sender, EventArgs e)
    {
        Response.Redirect("createcomplain.aspx?id=" + uname.Text);
    }
}