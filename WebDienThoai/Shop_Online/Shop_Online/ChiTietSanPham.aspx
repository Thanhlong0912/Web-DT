<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeFile="ChiTietSanPham.aspx.cs" Inherits="Shop_Online.ChiTietSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="phHome" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <style>
        .set-img{
            width:250px;
            height:350px;
        }
        .setlbl-giaban{
            font-weight:bold;
            font-size:20px;
            color:red;
        }
        .setlbl-thongtinSP{
            font-weight:bold;
            font-size:16px;
        }
        .set-table-border{
            border: 3px solid black;
            -moz-border-radius: 10px;
            -webkit-border-radius: 10px;
            -ms-border-radius: 10px;
            -o-border-radius: 10px;
            border-radius: 20px;
        }
        .set-table-border:hover{
            border: 3px solid red;
            -moz-border-radius: 10px;
            -webkit-border-radius: 10px;
            -ms-border-radius: 10px;
            -o-border-radius: 10px;
            border-radius: 20px;
        }
    
        #menudrop ul {           
            width: 250px;
            padding: 0;
            list-style-type: none;
            text-align: left;
        }
        #menudrop li {
            width: auto;
            height: 40px;
            line-height: 40px;
            border-bottom: 1px solid #e8e8e8;
            padding: 0 1em;
        }
        #menudrop li a {
            text-decoration: none;
            color: black;
            font-weight: bold;
            display: block;
        }
        
        #menudrop ul li:hover > a {
            color: gray;            
        }
        #menudrop ul li {
            position: relative;
        }
        #menudrop .sub-menu {
            position: absolute;  
            left:0%;     
        }
        #menudrop .sub-menu {
            position: absolute; 
            display: none;
        }
        #menudrop li:hover .sub-menu {
            display: block;
        }
    </style>
    

    <div>
        <center>
            <table style="width: 100%; border-spacing: 20px;" >
                <tr>
                    <td style="text-align:center;vertical-align:top;width:50%;">
                        <asp:Image ID="ImgSP" runat="server" Width="420" Height="560" zoom="true"></asp:Image>
                    </td>
                    <td style="text-align:left; vertical-align:top;">
                        <asp:Label ID="lblTenSp" runat="server" Font-Bold="true" Font-Size="18"></asp:Label> <br /><br />
                        <asp:Label ID="lblMaSp" runat="server" ForeColor="gray"></asp:Label> <br /><br />
                        <asp:Label ID="lblGiaBan" runat="server" Font-Bold="true" Font-Size="17"></asp:Label><br /><br />
                        
                        <table style="width: 70%;border-spacing: 10px;">
                            <tr>
                                <td style="text-align:center; background:rgba(207,211,203,.15);border:1px solid rgba(101,101,101,.15);">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-truck" viewBox="0 0 16 16">
                                        <path d="M0 3.5A1.5 1.5 0 0 1 1.5 2h9A1.5 1.5 0 0 1 12 3.5V5h1.02a1.5 1.5 0 0 1 1.17.563l1.481 1.85a1.5 1.5 0 0 1 .329.938V10.5a1.5 1.5 0 0 1-1.5 1.5H14a2 2 0 1 1-4 0H5a2 2 0 1 1-3.998-.085A1.5 1.5 0 0 1 0 10.5v-7zm1.294 7.456A1.999 1.999 0 0 1 4.732 11h5.536a2.01 2.01 0 0 1 .732-.732V3.5a.5.5 0 0 0-.5-.5h-9a.5.5 0 0 0-.5.5v7a.5.5 0 0 0 .294.456zM12 10a2 2 0 0 1 1.732 1h.768a.5.5 0 0 0 .5-.5V8.35a.5.5 0 0 0-.11-.312l-1.48-1.85A.5.5 0 0 0 13.02 6H12v4zm-9 1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm9 0a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"/>
                                    </svg>
                                    <asp:Label ID="Label2" runat="server" Text="QUÀ TẶNG ĐẶC BIỆT" Font-Bold="true" Font-Size="10"></asp:Label><br />
                                    <asp:Label ID="Label3" runat="server" Text="Tất cả các đơn hàng" ForeColor="Gray" Font-Size="9"></asp:Label>
                                </td>
                                <td style="text-align:center; background:rgba(207,211,203,.15);border:1px solid rgba(101,101,101,.15);">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-gift" viewBox="0 0 16 16">
                                      <path d="M3 2.5a2.5 2.5 0 0 1 5 0 2.5 2.5 0 0 1 5 0v.006c0 .07 0 .27-.038.494H15a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1v7.5a1.5 1.5 0 0 1-1.5 1.5h-11A1.5 1.5 0 0 1 1 14.5V7a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h2.038A2.968 2.968 0 0 1 3 2.506V2.5zm1.068.5H7v-.5a1.5 1.5 0 1 0-3 0c0 .085.002.274.045.43a.522.522 0 0 0 .023.07zM9 3h2.932a.56.56 0 0 0 .023-.07c.043-.156.045-.345.045-.43a1.5 1.5 0 0 0-3 0V3zM1 4v2h6V4H1zm8 0v2h6V4H9zm5 3H9v8h4.5a.5.5 0 0 0 .5-.5V7zm-7 8V7H2v7.5a.5.5 0 0 0 .5.5H7z"/>
                                    </svg>
                                    <asp:Label ID="Label4" runat="server" Text="FREESHIP MỌI ĐƠN HÀNG" Font-Bold="true" Font-Size="10"></asp:Label><br />
                                    <asp:Label ID="Label5" runat="server" Text="Áp dụng đơn từ 599k" ForeColor="Gray" Font-Size="9"></asp:Label>
                                </td>                                
                            </tr>                            
                        </table>     <br />                        
                        <asp:Button ID="btnThemVaoGioHang" runat="server" Text="THÊM VÀO GIỎ HÀNG"  Font-Bold="true" BackColor="Black" ForeColor="White" Width="420" Height="40" OnClick="btnThemVaoGioHang_Click"></asp:Button> <br /><br />
                        <p><strong>_______________________Mô Tả________________________</strong></p>
                        <asp:TextBox ID="txtMoTa" runat="server" TextMode="MultiLine" ReadOnly="True" Width="420" Height="200" BorderColor="White" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </center>
    </div>
           
</asp:Content>
