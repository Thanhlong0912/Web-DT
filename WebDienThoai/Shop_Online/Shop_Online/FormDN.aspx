<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormDN.aspx.cs" Inherits="Shop_Online.FormDN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
        .btn {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            width:150px;
            background-color:rgba(0, 0, 0, 0.11);
            font-family:Garamond;
            /*font-size:small;*/

            }
            .btn:hover {
                background-color:rgba(255, 255, 255, 0.58);
                transform:rotate3d();
            }
        body {
            background-image:url(../images/123.jpg);
            background-size:cover;
            background-position:top;
            
        }
        .txt {
            background-color:rgba(0, 0, 0, 0.00);
            border:none;
            margin-top:15px;
            float:left;
            margin-left:20px; 
            width: 414px;
            height:20px;
            color:white;
            outline:none;
        }

        .phong {
            font-family:Garamond;
            font-size:xx-large;
            color:white;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div style ="width:490px;height:300px;margin:auto;margin-top:100px;">
            <div style ="text-align:center;padding:10px;font-family:Calibri;padding-bottom:100px">
                <asp:Label ID="lblTieuDe" runat="server" Text="ĐĂNG NHẬP" CssClass="phong" Font-Bold="true"></asp:Label>
            </div>
            <div style="height:200px">
                <div style ="width:100%;height:50px;border-bottom:solid 2px white">
                    <asp:Image ID="img" runat="server" ImageUrl="../images/m.png" Style="margin-top:10px;float:left" />
                    <asp:TextBox ID="txtUserName" runat="server" CssClass="txt" ></asp:TextBox>        
                </div>
                <div style ="width:100%;height:50px;border-bottom:solid 2px white">
                    <asp:Image ID="Image1" runat="server" ImageUrl="../images/l.png" Style="margin-top:10px;float:left" />
                    <asp:TextBox ID="txtPW" runat="server" CssClass="txt" TextMode="Password" ></asp:TextBox>
                </div>
                <div style="margin-top:20px">
                    <asp:Label ID="lblThongBao" runat="server" Text="" ForeColor="Red" ></asp:Label> 
                </div>
                <div style="width:100%;height:100px;">
                    <asp:Button ID="btnDangNhap" runat="server" Text="ĐĂNG NHẬP" Font-Bold="true"  Style ="margin-left:0px; margin-top:37px" CssClass="btn" Height="46px" Width="490px" OnClick="btnDangNhap_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>

