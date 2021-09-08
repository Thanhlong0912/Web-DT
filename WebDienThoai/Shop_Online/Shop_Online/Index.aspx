<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Shop_Online.Index1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="phHome" runat="server">
	</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
	<!--//////////////////////////////////////////////////-->
	<!--///////////////////HomePage///////////////////////-->
	<!--//////////////////////////////////////////////////-->
	<div id="page-content" class="home-page">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<!-- Carousel -->
					<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators hidden-xs">
							<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						</ol>
						<!-- Wrapper for slides -->
						<div class="carousel-inner">
							<div class="item active">
								<img src="images/spnb1.png" alt="First slide">
								<!-- Static Header -->
								<div class="header-text hidden-xs">
									<div class="col-md-12 text-center">
									</div>
								</div><!-- /header-text -->
							</div>
							<div class="item">
								<img src="images/spnb2.png" alt="Second slide">
								<!-- Static Header -->
								<div class="header-text hidden-xs">
									<div class="col-md-12 text-center">
									</div>
								</div><!-- /header-text -->
							</div>
							<div class="item">
								<img src="images/spnb3.png" alt="Third slide">
								<!-- Static Header -->
								<div class="header-text hidden-xs">
									<div class="col-md-12 text-center">
									</div>
								</div><!-- /header-text -->
							</div>
						</div>
						<!-- Controls -->
						<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
							<span class="glyphicon glyphicon-chevron-left"></span>
						</a>
						<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
							<span class="glyphicon glyphicon-chevron-right"></span>
						</a>
					</div><!-- /carousel -->
				</div>
			</div>
			<div class="row">
				<div class="heading"><h2>CHUYÊN TRANG THƯƠNG HIỆU</h2></div>
				<div class="banner">
					<div class="col-sm-4">
						<img src="images/sub-banner11.png" />
					</div>
					<div class="col-sm-4">
						<img src="images/sub-banner22.png" />
					</div>
					<div class="col-sm-4">
						<img src="images/sub-banner33.png" />
					</div>
				</div>
			</div>
			<div class="row">
				<div class="heading"><h2>SẢN PHẨM MỚI</h2></div>
				<div class="banner">
					<div class="col-sm-4">
						<img src="images/sub-banner4.jpg" />
					</div>
					<div class="col-sm-4">
						<img src="images/sub-banner5.jpg" />
					</div>
					<div class="col-sm-4">
						<img src="images/sub-banner6.jpg" />
					</div>
				</div>
			</div>	
		</div>
	</div>
</asp:Content>
	

