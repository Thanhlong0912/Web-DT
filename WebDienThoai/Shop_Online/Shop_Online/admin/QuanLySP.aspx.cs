using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Shop_Online
{
    public partial class QuanLyTK : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\WebDienThoai.mdf;Integrated Security=True");

        private void DisplayData()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * From SanPham", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            conn.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                grvThongtin.DataSource = ds;
                grvThongtin.DataBind();
            }
            else
            {
                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                grvThongtin.DataSource = ds;
                grvThongtin.DataBind();
                int columnCount = grvThongtin.Rows[0].Cells.Count;
                grvThongtin.Rows[0].Cells.Clear();
                grvThongtin.Rows[0].Cells.Add(new TableCell());
                grvThongtin.Rows[0].Cells[0].ColumnSpan=columnCount;
                grvThongtin.Rows[0].Cells[0].Text="No records found";
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DisplayData();
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            conn.Open();
            string sql = "Insert Into SanPham([MaSP],[TenSP],[Tien],[Image],[MoTa]) Values(@masp,@tensp,@tien,@image,@mota)";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@masp", txtMaSP.Text);
            cmd.Parameters.AddWithValue("@tensp", txtTen.Text);
            cmd.Parameters.AddWithValue("@tien", txtTien.Text);
            cmd.Parameters.AddWithValue("@image", txtAnh.Text);
            cmd.Parameters.AddWithValue("@mota", txtMoTa.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            DisplayData();
        }

        protected void grvThongtin_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grvThongtin.EditIndex = e.NewEditIndex;
            DisplayData();
        }

        protected void grvThongtin_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = (GridViewRow)grvThongtin.Rows[e.RowIndex];
            int MaSP = Convert.ToInt32(row.Cells[0].Text);
            TextBox txtTen = (TextBox)row.Cells[1].Controls[0];
            TextBox txtTien = (TextBox)row.Cells[2].Controls[0];
            TextBox txtAnh = (TextBox)row.Cells[3].Controls[0];
            TextBox txtMoTa = (TextBox)row.Cells[4].Controls[0];
            grvThongtin.EditIndex = -1;

            conn.Open();
            string sql = "Update SanPham set [TenSP]=@tensp, [Tien]=@tien, [Image]=@image, [MoTa]=@mota where [MaSP]=@masp";
            SqlCommand cmd = new SqlCommand(sql,conn);
            cmd.Parameters.AddWithValue("@masp",MaSP);
            cmd.Parameters.AddWithValue("@tensp",txtTen.Text);
            cmd.Parameters.AddWithValue("@tien", txtTien.Text);
            cmd.Parameters.AddWithValue("@image", txtAnh.Text);
            cmd.Parameters.AddWithValue("@mota", txtMoTa.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            DisplayData();
        }

        protected void grvThongtin_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grvThongtin.EditIndex = -1;
            DisplayData();
        }

        protected void grvThongtin_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)grvThongtin.Rows[e.RowIndex];
            int MaSP = Convert.ToInt32(row.Cells[0].Text);
            conn.Open();
            string sql = "Delete From SanPham where [MaSP]=@masp";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@masp", MaSP);
            cmd.ExecuteNonQuery();
            conn.Close();
            DisplayData();
        }
    }
}