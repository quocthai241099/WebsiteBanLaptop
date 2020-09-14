using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MainBoard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "1")
            SqlDataSource1.SelectCommand = "SELECT * FROM SANPHAM WHERE MALOAI=4 ORDER BY TENSP ASC";
        else if (DropDownList1.SelectedValue == "2")
            SqlDataSource1.SelectCommand = "SELECT * FROM SANPHAM WHERE MALOAI=4 ORDER BY TENSP DESC";
        else if (DropDownList1.SelectedValue == "3")
            SqlDataSource1.SelectCommand = "SELECT * FROM SANPHAM WHERE MALOAI=4 ORDER BY DONGIA ASC";
        else
            SqlDataSource1.SelectCommand = "SELECT * FROM SANPHAM WHERE MALOAI=4 ORDER BY DONGIA DESC";
    }
}