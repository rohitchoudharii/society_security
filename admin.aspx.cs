using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class admin : System.Web.UI.Page
{
    int notify1, notify2;
    HttpCookie collect1;
    protected void Page_Load(object sender, EventArgs e)
    {
        uname.Text = Request.QueryString["id"];
        BindGridview();
        if (Request.Cookies["cmpnotify"] != null)
        {
            HttpCookie insert1 = Request.Cookies["cmpnotify"];
            notify1 = Int32.Parse(insert1.Value);
        }
        string[] UserName = new string[1];
        string[] ColumnNames = new string[1];
        DataSet ds = new DataSet("test");
        DLL objDLL = new DLL();
        ColumnNames[0] = "username";
        UserName[0] = uname.Text;
        ds = objDLL.GrabValues("cmpnotification", ColumnNames, UserName);
        try
        {
            notify2 = Int32.Parse(ds.Tables[0].Rows[0][0].ToString());
            
        }
        catch { }
        if (notify1 < notify2)
        {
            int index = notify2 - notify1;
            Complain_Box.Text = "Complain(" + index + ")";
        }
    }
    public void BindGridview()
    {
       
        string[] UserName = new string[1];
        string[] ColumnNames = new string[1];
        DataSet ds = new DataSet("test");
        DLL objDLL = new DLL();
        ColumnNames[0] = "usname";
        UserName[0] = uname.Text;
        ds = objDLL.GrabValues("ntc", ColumnNames, UserName);
        gvDetails.DataSource = ds;
        gvDetails.DataBind();
    }
    protected void gvDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvDetails.PageIndex = e.NewPageIndex;
        BindGridview();
    }
    public void createnew(object sender, System.EventArgs e)
    {
        Response.Redirect("Create_Notice.aspx?id="+uname.Text);
    }
    public void cmpbox(object sender, System.EventArgs e)
    {
        collect1 = new HttpCookie("cmpnotify");
        collect1.Value = notify2.ToString();
        collect1.Expires = DateTime.Now.AddDays(1);
        Response.Cookies.Add(collect1);
        Response.Redirect("complain_box.aspx?id=" + uname.Text);
    }
    public void Visitor_Data(object sender, System.EventArgs e)
    {
        Response.Redirect("VisitorInfo.aspx?id=" + uname.Text);
    }

}