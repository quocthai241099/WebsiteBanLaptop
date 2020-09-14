using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TrangChinh : System.Web.UI.MasterPage
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["tendn"] != null)
        {
            Button1.Visible = true;
            Label1.Visible = false;
           
        }
        else
        {
            Label1.Visible = true;
            Button1.Visible = false;
        }
      
    }
    public static void abc(){
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("~/Laptop.aspx");
    }
    
}
