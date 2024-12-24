<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="newProject.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- search area -->
<div class="search-area">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<span class="close-btn"><i class="fas fa-window-close"></i></span>
				<div class="search-bar">
					<div class="search-bar-tablecell">
						<h3>Search For:</h3>
						<input type="text" placeholder="Keywords">
						<button type="submit">Search <i class="fas fa-search"></i></button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- end search area -->

<!-- hero area -->
<div class="hero-area hero-bg">
	<div class="container">
		<div class="row">
			<div class="col-lg-9 offset-lg-2 text-center">
				<div class="hero-text">
					<div class="hero-text-tablecell">
						<p class="subtitle">Fresh & Organic</p>
						<h1>Delicious Seasonal Fruits</h1>
						<div class="hero-btns">
							<%--<a href="shop.html" class="boxed-btn">Fruit Collection</a> --%>
                            <a href="fruits.aspx" class="boxed-btn">Fruit Collection</a>
							<%--<a href="contact.html" class="bordered-btn">Contact Us</a>--%>
                            <a href="contact.aspx" class="bordered-btn">Contact Us</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- end hero area -->

<!-- features list section -->
<div class="list-section pt-80 pb-80">
	<div class="container">

		<div class="row">
			<div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
				<div class="list-box d-flex align-items-center">
					<div class="list-icon">
						<i class="fas fa-shipping-fast"></i>
					</div>
					<div class="content">
						<h3>Free Shipping</h3>
						<p>When order over 100₹</p>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
				<div class="list-box d-flex align-items-center">
					<div class="list-icon">
						<i class="fas fa-phone-volume"></i>
					</div>
					<div class="content">
						<h3>24/7 Support</h3>
						<p>Get support all day</p>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-6">
				<div class="list-box d-flex justify-content-start align-items-center">
					<div class="list-icon">
						<i class="fas fa-sync"></i>
					</div>
					<div class="content">
						<h3>Refund</h3>
						<p>Get refund within 3 days!</p>
					</div>
				</div>
			</div>
		</div>

	</div>
</div>
<!-- end features list section -->

<!-- product section -->
<div class="product-section mt-150 mb-150">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 offset-lg-2 text-center">
				<div class="section-title">
					<h3><span class="orange-text">Our</span> Products</h3>
					<p>Our marketplace offers a wide array of fresh fruits and vegetables, carefully curated to meet the diverse tastes and needs of our customers. We pride ourselves on sourcing our produce from local farms and trusted growers, ensuring that every item is of the highest quality and peak freshness.</p>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-4 col-md-6 text-center">
				<div class="single-product-item">
					<div class="product-image">
						<%--<a href="single-product.html"><img src="assets/img/products/product-img-1.jpg" alt=""></a>--%>
						 <a href="#"><asp:Image ImageUrl="assets/img/products/product-img-1.jpg" runat="server"  style="height:200px"/></a>
					</div><br />
					<asp:Label ID="Label1" runat="server" Text=Strawberry></asp:Label><br />
					<%--<h3>Strawberry</h3>--%>
					<%--<p class="product-price"><span>Per Kg</span> 100₹ </p>--%>
					 <asp:Label ID="Label2" runat="server">100</asp:Label>/kg<br />
					 <asp:TextBox ID="TextBox1" runat="server" placeholder="quantity"></asp:TextBox>
					<br /><br />
					<%--<asp:Label ID="Label3" runat="server"><span>100₹</span></asp:Label><br /><br />--%>
					<%--<a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>--%>
					<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add to Cart" />
					<asp:Button ID="Button4" runat="server" Text="Buy Now" OnClick="Button4_Click" />
				</div>
			</div>
			<div class="col-lg-4 col-md-6 text-center">
				<div class="single-product-item">
					<div class="product-image">
						<%--<a href="singleproduct.aspx"><img src="assets/img/products/product-img-2.jpg" alt=""></a>--%>
						 <a href="#"><asp:Image ImageUrl="assets/img/products/product-img-2.jpg" runat="server"   style="height:220px"/></a>
					</div><br />
					<asp:Label ID="Label4" runat="server" Text=Berry></asp:Label><br />
					<%--<h3>Berry</h3>--%>
					<%--<p class="product-price"><span>Per Kg</span> 140₹ </p>--%>
					 <asp:Label ID="Label5" runat="server">140</asp:Label>/kg<br />
					 <asp:TextBox ID="TextBox2" runat="server" placeholder="quantity"></asp:TextBox>
<br /><br />
					<%--<asp:Label ID="Label6" runat="server"><span>140₹</span></asp:Label><br />--%>
				<%--	<a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>--%>
					<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add to Cart" />
					<asp:Button ID="Button5" runat="server" Text="Buy Now" OnClick="Button5_Click" />
				</div>
			</div>
			<div class="col-lg-4 col-md-6 offset-md-3 offset-lg-0 text-center">
	<div class="single-product-item">
		<div class="product-image">
			<%--<a href="singleproduct.aspx"><img src="assets/img/products/product-img-3.jpg" alt=""></a>--%>
			 <a href="#"><asp:Image ImageUrl="assets/img/products/product-img-3.jpg" runat="server"   style="height:220px"/></a>
		</div><br />
		<asp:Label ID="Label7" runat="server" Text=lemon></asp:Label><br />
		<%--<h3>Lemon</h3>--%>
		<%--<p class="product-price"><span>Per Kg</span> 70₹ </p>--%>
		 <asp:Label ID="Label8" runat="server">70</asp:Label>/kg<br />
		 <asp:TextBox ID="TextBox3" runat="server" placeholder="quantity"></asp:TextBox>
<br /><br />
		<%--<asp:Label ID="Label9" runat="server"><span>70₹</span></asp:Label><br />--%>
		<%--<a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>--%>
		<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Add to Cart" />
		<asp:Button ID="Button6" runat="server" Text="Buy Now" OnClick="Button6_Click" />
	</div>
</div>
			<%--<div class="col-lg-4 col-md-6 offset-md-3 offset-lg-0 text-center">
	<div class="single-product-item">
		<div class="product-image">
			<a href="singleproduct.aspx"><img src="assets/img/products/product-img-3.jpg" alt=""></a>
		</div>
		<h3>Lemon</h3>
		<p class="product-price"><span>Per Kg</span> 70₹ </p>
		<a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
	</div>
</div>
			<div class="col-lg-4 col-md-6 offset-md-3 offset-lg-0 text-center">
	<div class="single-product-item">
		<div class="product-image">
			<a href="singleproduct.aspx"><img src="assets/img/products/product-img-3.jpg" alt=""></a>
		</div>
		<h3>Lemon</h3>
		<p class="product-price"><span>Per Kg</span> 70₹ </p>
		<a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
	</div>
</div>
		</div>
	</div>
</div>--%>
<!-- end product section -->

<!-- cart banner section -->
<section class="cart-banner pt-100 pb-100">
	<div class="container">
		<div class="row clearfix">
			<!--Image Column-->
			<div class="image-column col-lg-6">
				<div class="image">
					<div class="price-box">
						<div class="inner-price">
							<span class="price">
								<strong>30%</strong> <br> off per kg
							</span>
						</div>
					</div>
					<img src="assets/img/a.jpg" alt="">
				</div>
			</div>
			<!--Content Column-->
			<div class="content-column col-lg-6">
				<h3><span class="orange-text">Deal</span> of the month</h3>
				<h4>Hikan Strwaberry</h4>
				<div class="text">We can provide deal which you can called deal of the month that we can provide the
					offers like discounts and you can take fruit
				</div>
				<!--Countdown Timer-->
				<!-- <div class="time-counter">
					<div class="time-countdown clearfix" data-countdown="2020/2/01">
						<div class="counter-column">
							<div class="inner"><span class="count">00</span>Days</div>
						</div>
						<div class="counter-column">
							<div class="inner"><span class="count">00</span>Hours</div>
						</div>
						<div class="counter-column">
							<div class="inner"><span class="count">00</span>Mins</div>
						</div>
						<div class="counter-column">
							<div class="inner"><span class="count">00</span>Secs</div>
						</div>
					</div>
				</div> -->
				<a href="cart.aspx" class="cart-btn mt-3"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
			</div>
		</div>
	</div>
</section>
<!-- end cart banner section -->

<!-- testimonail-section -->
<!-- <div class="testimonail-section mt-150 mb-150">
	<div class="container">
		<div class="row">
			<div class="col-lg-10 offset-lg-1 text-center">
				<div class="testimonial-sliders">
					<div class="single-testimonial-slider">
						<div class="client-avater">
							<img src="assets/img/avaters/avatar1.png" alt="">
						</div>
						<div class="client-meta">
							<h3>Saira Hakim <span>Local shop owner</span></h3>
							<p class="testimonial-body">
								" Sed ut perspiciatis unde omnis iste natus error veritatis et  quasi architecto beatae vitae dict eaque ipsa quae ab illo inventore Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium "
							</p>
							<div class="last-icon">
								<i class="fas fa-quote-right"></i>
							</div>
						</div>
					</div>
					<div class="single-testimonial-slider">
						<div class="client-avater">
							<img src="assets/img/avaters/avatar2.png" alt="">
						</div>
						<div class="client-meta">
							<h3>David Niph <span>Local shop owner</span></h3>
							<p class="testimonial-body">
								" Sed ut perspiciatis unde omnis iste natus error veritatis et  quasi architecto beatae vitae dict eaque ipsa quae ab illo inventore Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium "
							</p>
							<div class="last-icon">
								<i class="fas fa-quote-right"></i>
							</div>
						</div>
					</div>
					<div class="single-testimonial-slider">
						<div class="client-avater">
							<img src="assets/img/avaters/avatar3.png" alt="">
						</div>
						<div class="client-meta">
							<h3>Jacob Sikim <span>Local shop owner</span></h3>
							<p class="testimonial-body">
								" Sed ut perspiciatis unde omnis iste natus error veritatis et  quasi architecto beatae vitae dict eaque ipsa quae ab illo inventore Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium "
							</p>
							<div class="last-icon">
								<i class="fas fa-quote-right"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div> -->
<!-- end testimonail-section -->

<!-- advertisement section -->
<div class="abt-section mb-150">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-12">
				<div class="abt-bg">
					<%--<a href="https://www.youtube.com/watch?v=DBLlFWYcIGQ" class="video-play-btn popup-youtube"><i
							class="fas fa-play"></i></a>--%>
				</div>
			</div>
			<div class="col-lg-6 col-md-12">
				<div class="abt-text">
					<p class="top-sub">Since Year 1999</p>
					<h2>We are <span class="orange-text">Green Basket</span></h2>
					<p>Discover a vibrant selection of locally sourced and exotic fruits and vegetables, all guaranteed to be fresh and flavorful. Our commitment to sustainability means you can shop confidently while supporting responsible farming practices.</p>
					<%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente facilis illo repellat
						veritatis minus, et labore minima mollitia qui ducimus.</p>--%>
					<!-- <a href="about.html" class="boxed-btn mt-4">know more</a> -->
				</div>
			</div>
		</div>
	</div>
</div>
<!-- end advertisement section -->

<!-- shop banner -->
<section class="shop-banner">
	<div class="container">
		<h3>December sale is on! <br> with big <span class="orange-text">Discount...</span></h3>
		<div class="sale-percent"><span>Sale! <br> Upto</span>50% <span>off</span></div>
		<a href="shop.aspx" class="cart-btn btn-lg">Shop Now</a>
	</div>
</section>
<!-- end shop banner -->

<!-- latest news -->
<!-- <div class="latest-news pt-150 pb-150">
	<div class="container">

		<div class="row">
			<div class="col-lg-8 offset-lg-2 text-center">
				<div class="section-title">	
					<h3><span class="orange-text">Our</span> News</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, fuga quas itaque eveniet beatae optio.</p>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-4 col-md-6">
				<div class="single-latest-news">
					<a href="single-news.html"><div class="latest-news-bg news-bg-1"></div></a>
					<div class="news-text-box">
						<h3><a href="single-news.html">You will vainly look for fruit on it in autumn.</a></h3>
						<p class="blog-meta">
							<span class="author"><i class="fas fa-user"></i> Admin</span>
							<span class="date"><i class="fas fa-calendar"></i> 27 December, 2019</span>
						</p>
						<p class="excerpt">Vivamus lacus enim, pulvinar vel nulla sed, scelerisque rhoncus nisi. Praesent vitae mattis nunc, egestas viverra eros.</p>
						<a href="single-news.html" class="read-more-btn">read more <i class="fas fa-angle-right"></i></a>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-6">
				<div class="single-latest-news">
					<a href="single-news.html"><div class="latest-news-bg news-bg-2"></div></a>
					<div class="news-text-box">
						<h3><a href="single-news.html">A man's worth has its season, like tomato.</a></h3>
						<p class="blog-meta">
							<span class="author"><i class="fas fa-user"></i> Admin</span>
							<span class="date"><i class="fas fa-calendar"></i> 27 December, 2019</span>
						</p>
						<p class="excerpt">Vivamus lacus enim, pulvinar vel nulla sed, scelerisque rhoncus nisi. Praesent vitae mattis nunc, egestas viverra eros.</p>
						<a href="single-news.html" class="read-more-btn">read more <i class="fas fa-angle-right"></i></a>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-6 offset-md-3 offset-lg-0">
				<div class="single-latest-news">
					<a href="single-news.html"><div class="latest-news-bg news-bg-3"></div></a>
					<div class="news-text-box">
						<h3><a href="single-news.html">Good thoughts bear good fresh juicy fruit.</a></h3>
						<p class="blog-meta">
							<span class="author"><i class="fas fa-user"></i> Admin</span>
							<span class="date"><i class="fas fa-calendar"></i> 27 December, 2019</span>
						</p>
						<p class="excerpt">Vivamus lacus enim, pulvinar vel nulla sed, scelerisque rhoncus nisi. Praesent vitae mattis nunc, egestas viverra eros.</p>
						<a href="single-news.html" class="read-more-btn">read more <i class="fas fa-angle-right"></i></a>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 text-center">
				<a href="news.html" class="boxed-btn">More News</a>
			</div>
		</div>
	</div>
</div> -->
<!-- end latest news -->

<!-- logo carousel -->
<!-- <div class="logo-carousel-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="logo-carousel-inner">
					<div class="single-logo-item">
						<img src="assets/img/company-logos/1.png" alt="">
					</div>
					<div class="single-logo-item">
						<img src="assets/img/company-logos/2.png" alt="">
					</div>
					<div class="single-logo-item">
						<img src="assets/img/company-logos/3.png" alt="">
					</div>
					<div class="single-logo-item">
						<img src="assets/img/company-logos/4.png" alt="">
					</div>
					<div class="single-logo-item">
						<img src="assets/img/company-logos/5.png" alt="">
					</div>
				</div>
			</div>
		</div>
	</div>
</div> -->
<!-- end logo carousel -->
        </div>
        </div>
        </div>
</asp:Content>
