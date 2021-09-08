using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Shop_Online
{
    public partial class Index : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Session["name"].ToString(); 
            lblxinchao.Text = "Welcome " + name + "";
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            string sChuoi = txtSearch.Text;
            Response.Redirect("~/TimKiem.aspx?TenSP=" + sChuoi + "");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sChuoi = txtSearch.Text;
            Response.Redirect("~/TimKiem.aspx?TenSP=" + sChuoi + "");
        }
    }
}