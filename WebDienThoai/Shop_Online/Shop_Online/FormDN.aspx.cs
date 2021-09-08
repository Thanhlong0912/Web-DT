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
    public partial class FormDN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            string sql;
            int row;

            SqlConnection connect = new SqlConnection();
            connect.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\WebDienThoai.mdf;Integrated Security=True";

            connect.Open();

            sql  = "select count(*) from [TaiKhoan] where [User] = @username and [Password] = @password";
            SqlCommand cmd = new SqlCommand(sql, connect);
            cmd.Parameters.AddWithValue("@username", txtUserName.Text);
            cmd.Parameters.AddWithValue("@password", txtPW.Text);
            row=(int)cmd.ExecuteScalar();
            connect.Close();
            if (row > 0)
            {
                Session["name"] = txtUserName.Text;
                lblThongBao.Text = "Successful .... !!";
                Response.Redirect("Index.aspx");

            }
            else
            {
                lblThongBao.Text = "UserName or Password không dược bỏ trống !!";
            }
        }
    }
}