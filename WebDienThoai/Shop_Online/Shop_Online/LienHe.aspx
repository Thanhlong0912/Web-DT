<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="LienHe.aspx.cs" Inherits="Shop_Online.LienHe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="phHome" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 1054px;
            margin-left: 226px;
        }
        .auto-style5 {
            width: 502px;
            height: 105px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div class="container">
        <div id="thantrang">   
                <div id="hotro">
                    <div class="row">
                   <div cl="pichotro">
                        <h3 style="text-align:center">Hỗ trợ trực tuyến</h3>
                    </div>
                    <div class="col-sm-6">
                        <img src="images/lienhe.jpg"/>
                    </div>
                    <div class="col-sm-6">
                        <div class="text-center">
                            <p>
                                <span class="supp-name" style="color:crimson; font-size: 32px; font-family: Helvetica, Arial">Minh Quang</span>
                                <br />                    
                                <span class="phone" style="color:navy; font-size: 28px; font-family:Helvetica, Arial; font-style:italic">090.2234.456</span>
                            </p>                    
                        </div>
                        <div class="text-center">
                            <p>
                                <span class="supp-name" style="color:crimson; font-size: 32px; font-family:Helvetica, Arial; font-style:italic">Mỹ Linh</span>
                                <br />
                                <span class="phone" style="color:navy; font-size: 28px; font-family:Helvetica, Arial; font-style:italic">096.2234.678</span>
                            </p>                            
                        </div>
                        <div class="text-center">
                            <p>
                                <span class="supp-name" style="color:dodgerblue; font-size: 32px; font-family: Helvetica, Arial">Thời gian làm việc</span>
                                <br />
                                <span class="phone" style="color:deepskyblue; font-size: 30px; font-family: Helvetica, Arial">24/24</span>
                            </p>
                        </div>
                    </div>
                    </div>
                </div>
            <br />
                <div id="thanhtoan" class="auto-style2">
                    <div class="title-thanhtoan">
                        <a style="color:Highlight; font-size: 36px; font-family: Helvetica, Arial; font-weight:bold">THÔNG TIN GIAO DỊCH</a>
                    </div>
                    <div class="thongtinnganhang">
                        <div class="nganhang">
                            <img src="images/vcb.jpg" class="auto-style5" />
                            <p>
                                <strong>Ngân hàng Vietcombank</strong>
                                <br>
                                Số TK: 0011 0031 12345
                                <br>
                                Chủ TK: Thành Long
                                <br>
                                Chi nhánh Hội sở - Tp.Hồ Chí Minh</p>
                        </div>
                        <div class="nganhang">
                            <img src="images/arb.jpg" class="auto-style5" />
                            <p>
                                <strong>Ngân hàng Agribank</strong>
                                <br>
                                Số TK: 0011 0031 56789
                                <br>
                                Chủ TK: Thành Long
                                <br>
                                Chi nhánh Hội sở - Tp.Hồ Chí Minh</p>
                        </div>
                        <div class="nganhang">
                            <img src="images/vtb.png" class="auto-style5" />
                            <p>
                                <strong>Ngân hàng Vietincombank</strong>
                                <br>
                                Số TK: 0011 0031 34567
                                <br>
                                Chủ TK: Thành Long
                                <br>
                                Chi nhánh Hội sở - Tp.Hồ Chí Minh</p>
                        </div>
                    </div>                   
                </div>
            </div>
        </div>

</asp:Content>
