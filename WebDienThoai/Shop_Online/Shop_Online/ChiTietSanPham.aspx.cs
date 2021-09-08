using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop_Online
{
    public partial class ChiTietSanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand("select * from sanpham where masp = @masp", con);
                cmd.Parameters.AddWithValue("@masp", Convert.ToInt32(Request.QueryString["MaSP"]));

                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                lblTenSp.Text = "Tên Sản Phẩm: ";
                lblMaSp.Text = "Mã Sản Phẩm: ";
                lblGiaBan.Text = "Giá Bán: ";
                while (dr.Read())
                {
                    lblTenSp.Text += dr["TenSP"].ToString().Trim() + " ";
                    lblMaSp.Text += dr["MaSP"].ToString().Trim() + " ";
                    lblGiaBan.Text += dr["Tien"].ToString().Trim() + "đ";
                    txtMoTa.Text = dr["MoTa"].ToString().Trim();
                    ImgSP.ImageUrl = "admin/images/" + dr["Image"].ToString().Trim();
                }
                dr.Close();
                con.Close();
            }
        }

        protected void btnThemVaoGioHang_Click(object sender, EventArgs e)
        {
            if (Session["name"] == null)
            {
                Response.Redirect("FormDK.aspx");
            }
            else
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand("select * from GioHang where UserName = @name and MaSANPHAM = @masp", con);
                cmd.Parameters.AddWithValue("@name", Session["name"].ToString());
                cmd.Parameters.AddWithValue("@masp", Request.QueryString["MaSP"].ToString());

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                con.Open();
                int i = cmd.ExecuteNonQuery();
                con.Close();

                if (dt.Rows.Count > 0)
                {
                    SqlCommand cmdUpdate = new SqlCommand("UPDATE GioHang " 
                                            +"set SoLuong = 1 + (select SoLuong from GioHang where MaSANPHAM = @masp and UserName = @UserName) " 
                                            + "where MaSANPHAM = @masp and UserName = @UserName", con);
                    cmdUpdate.Parameters.AddWithValue("@UserName", Session["name"].ToString());
                    cmdUpdate.Parameters.AddWithValue("@masp", Request.QueryString["MaSP"].ToString());
                    con.Open();
                    i = cmdUpdate.ExecuteNonQuery();
                    con.Close();
                }
                else
                {
                    SqlCommand cmdInsert = new SqlCommand("INSERT INTO GIOHANG VALUES(@UserName, @MaSP, 1)", con);

                    cmdInsert.Parameters.AddWithValue("@UserName", Session["name"].ToString());
                    cmdInsert.Parameters.AddWithValue("@MaSP", Request.QueryString["MaSP"].ToString());
                    con.Open();
                    int rs = cmdInsert.ExecuteNonQuery();
                    con.Close();
                }
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Thông báo", "<script>alert('Thêm vào giỏ hàng thành công');</script>");
            }
        }
    }
}