using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Shop_Online
{
    public partial class FormDK : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btDangKy_Click(object sender, EventArgs e)
        {
            string User = txtUser.Text;
            string Password = txtMatKhau.Text;

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\WebDienThoai.mdf;Integrated Security=True";
            conn.Open();
            string sql = "Select * From TaiKhoan Where [User]=@User";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@User", User);
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                lblThongBao.Text = "User đã tồn tại";
                conn.Close();
                return;
            }
            reader.Close();

            try
            {
                sql = "Insert Into TaiKhoan ([User],[Password]) Values (@User,@Password)";
                SqlCommand cmd2 = new SqlCommand(sql, conn);
                cmd2.Parameters.AddWithValue("@User", User);
                cmd2.Parameters.AddWithValue("@Password", Password);
                cmd2.ExecuteNonQuery();
                lblThongBao.Text = "Register Successfully";
            }
            catch (Exception ex)
            {
                lblThongBao.Text = "Error :" + ex.Message;
            }

            conn.Close();
            if (User.Length > 0 && Password.Length > 0)
            {

            }
            else 
            {
                lblThongBao.Text = "User and password cannot be empty!!";
            }
            
        }
    }
}