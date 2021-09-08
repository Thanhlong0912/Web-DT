<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="TinTuc.aspx.cs" Inherits="Shop_Online.TinTuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="phHome" runat="server">
	<style type="text/css">
		

.banner{
	width: 1000px;
	height: auto;
	
}
.banner img{
	width: 1000px;
	height: auto;
	/*position: relative;*/
}
.banner h1{
	position: absolute;
	top: 100px;

}
.logo{
	width: 40%;
	height: auto;
}
.logo img{
	width: 400px;
	height: auto;
}
.menu{
	width: 60%;
	height: auto;
}
.menu ul{
	list-style: none;
}
.menu ul li{
	float: right;
	padding-left: 25px;
	color: #6fc2d2;
	font-size: 25px;
	margin-top: 55px;
}
.content{
	width: 1000px;
	height: auto;
	display: flex;
}
.left{
	width: 700px;
	height: auto;
}
.left p{
	font-size: 50px;
    font-weight: bold;
    font-family: sans-serif;
    color: #6fc2d2;
    margin-top: 15px;
    margin-bottom: 15px;
}
.title{
	width: 600px;
	font-size: 29px;
    color: #87b133;
}
.description{
	width: 600px;
	font-size: 19px;
	color: #6fc2d2;
}



.right{
	width: 300px;
	height: auto;
}
.right img{
	width: 270px;
	height: auto;
}
.right p{
	font-size: 28px;
    margin-bottom: 0px;
}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div class="container">
		<div class="banner">
 			<img src="images/dt12345.jpg" alt=""/>
			<br />
			<div>
				<a style="color:Highlight; font-size: 36px; font-family: Helvetica, Arial; font-weight:bold">Sam Sung Galaxy Z Fold3 | Flip3 5G</a>
			</div>
			<br />
 			<video width="1008" height="540" controls>
				 <source  src="images/tvc.mp4" type="video/mp4"/>
 			</video>
		</div>
		<div class="content">
			<div class="left">
				<p>Galaxy Z Fold3 | Flip3 5G</p>
				<div class="title">
					Gập Mở Linh Hoạt, Định Hình Xu Hướng Công Nghệ Tương Lai
				</div>
				<div class="description">
					Chiếc điện thoại Galaxy Fold gọn nhẹ nhất từ trước đến nay.Khi gập lại, nó là một điện thoại thông minh 6,2 inch cao cấp có thể cầm và thao tác chỉ với một tay.Khi mở , bạn sẽ có một giao diện lớn , mở ra những trải nghiệm đột phá mới. 
				</div>
				<br>
				<br>
				<br>
				<div class="title">
					Thiết Kế Thời Thượng Đầy Lôi Cuốn
				</div>
				<div class="description">
					Biểu tượng thời trang độc đáo nằm gọn trong túi khi gập cho bạn thỏa sức tham gia các hoạt động yêu thích ở bất cứ nơi dâu. Không chỉ là điện thoại, đó là một ngôn ngữ thời trang cá tính.
				</div>

			</div>
			<div class="right">
				<p>Chi tiết khuyến mãi</p>				
				<img src="images/samsung123.png" alt=""/>
				<img src="images/Boxqua(2)-592x303.png" alt=""/>
			</div>
		</div>
 </div>

</asp:Content>
