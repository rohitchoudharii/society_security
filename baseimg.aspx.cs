using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;
using System.Drawing;
using System.Data.SqlClient;

public partial class WebCam_baseimg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        

        StreamReader reader = new StreamReader(Request.InputStream); 
        String Data = Server.UrlDecode(reader.ReadToEnd());
        reader.Close();
        string flnme = Session["vid"].ToString();
        
        Session["capturedImageURL"] = Server.MapPath("~/Images/") + flnme + ".jpeg";  

        Session["Imagename"] = flnme + ".jpeg"; 
        
        drawimg(Data.Replace("imgBase64=data:image/png;base64,", String.Empty), Session["capturedImageURL"].ToString());
       
    }

    public void drawimg(string base64, string filename) 
    {
        using (FileStream fs = new FileStream(filename, FileMode.OpenOrCreate, FileAccess.Write))
        {
            using (BinaryWriter bw = new BinaryWriter(fs))
            {
                byte[] data = Convert.FromBase64String(base64);
                bw.Write(data);
                bw.Close();
            }
        }
    }

}
