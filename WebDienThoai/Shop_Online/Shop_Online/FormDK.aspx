<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="FormDK.aspx.cs" Inherits="Shop_Online.FormDK" %>
<asp:Content ID="Content1" ContentPlaceHolderID="phHome" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 1065px;
            height: 550px;
            margin-left: 224px;
            margin-right: 502px;
        }
        .auto-style2 {
            width: 861px
        }
        .auto-style3 {
            width: 860px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div style="text-align:center">
        <h1 style="color:#0026ff">ĐĂNG KÝ</h1>
        <div style="background:#90dff4;text-align:left;" class="auto-style1">
            <p style="background:#0085ff;text-align:center;margin-left:10px;margin-top:10px;margin-right:10px;font-size:27px;color:white">
                THÔNG TIN CÁ NHÂN
            </p>
            <table>
                <tr>
                    <td  style="width:202px">Mã khách hàng</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtMaKH" runat="server" Height="31px" Width="445px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width:202px">Tên KH</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtTenKH" runat="server" Height="31px" Width="445px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width:202px">Điện thoại</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtDienThoai" runat="server" Height="31px" Width="445px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width:202px">Giới tính</td>
                    <td class="auto-style3">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="2">
                            <asp:ListItem Selected="True">Nam</asp:ListItem>
                            <asp:ListItem>Nữ</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td style="width:202px">Sở thích</td>
                    <td class="auto-style3">
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="2">
                            <asp:ListItem>Music</asp:ListItem>
                            <asp:ListItem>Sport</asp:ListItem>
                            <asp:ListItem>Watching TV</asp:ListItem>
                            <asp:ListItem>Shopping</asp:ListItem>
                            <asp:ListItem>Cooking</asp:ListItem>
                            <asp:ListItem>Sufering Iternet</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
            </table>

            <p style="background:#0085ff;text-align:center;margin-left:10px;margin-top:10px;margin-right:10px;font-size:27px;color:white">
                THÔNG TIN ĐĂNG NHẬP
            </p>
             <table>
                <tr>
                    <td style="width:202px">User</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtUser" runat="server" Height="31px" Width="445px"></asp:TextBox><br />
                        <asp:Label ID="lblThongBao" runat="server" ForeColor="Red" Font-Bold="true"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width:202px">Mật khẩu</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtMatKhau" runat="server" Height="31px" Width="445px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width:202px">Nhập lại mật khẩu</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtNhapLai" runat="server" Height="31px" Width="445px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                     <td></td>
                     <td class="auto-style2">
                         <asp:Button ID="btDangKy" runat="server" Text="Đăng ký" Height="39px" Width="450px" BackColor="#FF3300" OnClick="btDangKy_Click" />
                     </td>
                 </tr>
              </table>
            <br />
        </div>
        <br />
    </div>
</asp:Content>
