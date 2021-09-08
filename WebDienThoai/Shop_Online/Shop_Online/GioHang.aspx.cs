using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop_Online
{
    public partial class GioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCapNhat_Click(object sender, ImageClickEventArgs e)
        {
            int rowthis = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;

            Label lblMSP = (Label)(QLGioHang.Rows[rowthis].Cells[0].Controls[1]);
            TextBox txtSL = (TextBox)(QLGioHang.Rows[rowthis].Cells[4].Controls[1]);

            if (int.Parse(txtSL.Text) > 0)
            {
                DataGioHang.UpdateParameters["SoLuongSP"].DefaultValue = txtSL.Text;
                DataGioHang.UpdateParameters["MaSP"].DefaultValue = lblMSP.Text;
                DataGioHang.UpdateParameters["username"].DefaultValue = Session["name"].ToString();
            }
        }

        protected void btnXoa_Click(object sender, ImageClickEventArgs e)
        {
            int rowthis = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;

            Label lblMSP = (Label)(QLGioHang.Rows[rowthis].Cells[0].Controls[1]);
            DataGioHang.DeleteParameters["MaSP"].DefaultValue = lblMSP.Text;
            DataGioHang.DeleteParameters["username"].DefaultValue = Session["name"].ToString();
        }

        int total = 0;
        protected void QLGioHang_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lblamount = (Label)e.Row.FindControl("lblTong");
                total += int.Parse(lblamount.Text);
            }
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                Label lblttt = (Label)e.Row.FindControl("lbltt");
                lblttt.Text = total.ToString();
            }
        }
    }
}