<%@ Page Title="" Language="C#" MasterPageFile="/Site1.Master" AutoEventWireup="true" CodeBehind="vegetable.aspx.cs" Inherits="newProject.vegetable" %>
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
	<!-- end search arewa -->
<br />
	<br />

	<!-- products Items Start -->
<div class="row product-lists">
    <div class="col-lg-4 col-md-6 text-center strawberry">
        <div class="single-product-item">
            <div class="product-image">
                <%--<a href="singleproduct.aspx"><img src="assets/img/products/potato1.jpg" alt=""></a>--%>
				<a href="#"><asp:Image ImageUrl="assets/img/products/potato1.jpg" runat="server"  style="height:420px"/></a>
            </div>
            <%--<h3>Potato</h3>--%>
			<asp:Label ID="Label1" runat="server" Text=Potato></asp:Label><br />
            <%--<p class="product-price"><span>Per Kg</span> 85₹ </p>--%>
		 <asp:Label ID="Label10" runat="server">85</asp:Label>/Rs<br />
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" placeholder="quantity"></asp:TextBox>
          <br />
		  <br />
            <%--<a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>--%>
			 <asp:Button ID="Button1" runat="server" Text="Add to Cart" OnClick="Button1_Click" />
       <%-- &nbsp;&nbsp;&nbsp;--%>
			 <asp:Button ID="Button10" runat="server" Text="Buy Now" OnClick="Button10_Click" />
        </div>
    </div>

    <div class="col-lg-4 col-md-6 text-center berry">
        <div class="single-product-item">
            <div class="product-image">
                <a href="singleproduct.aspx"><img src="assets/img/products/tomato.jpg" alt="" style="height:420px"></a>
            </div>
            <%--<h3>Tomato</h3>--%>
			<asp:Label ID="Label2" runat="server" Text=Tomato></asp:Label><br />
            <%--<p class="product-price"><span>Per Kg</span> 70₹ </p>--%>
			 <asp:Label ID="Label12" runat="server">70</asp:Label>/Rs<br />
            <asp:TextBox ID="TextBox2" runat="server"  placeholder="quantity"></asp:TextBox>
            <br /><br />

			 <%--<asp:TextBox ID="TextBox2" runat="server" placeholder="quantity"></asp:TextBox>--%>
			<%--<asp:Label ID="Label13" runat="server"><span>70₹</span></asp:Label><br />--%>
            <%--<a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>--%>
			 <asp:Button ID="Button2" runat="server" Text="Add to Cart" OnClick="Button2_Click" />
			 <asp:Button ID="Button11" runat="server" Text="Buy Now" OnClick="Button11_Click" />
        </div>
    </div>
    <div class="col-lg-4 col-md-6 text-center lemon">
        <div class="single-product-item">
            <div class="product-image">
                <%--<a href="singleproduct.aspx"><img src="assets/img/products/onion.jpg" alt=""></a>--%>
				<a href="#"><asp:Image ImageUrl="assets/img/products/onion.jpg" runat="server" style="height:420px"/></a>
            </div>
            <%--<h3>Onion</h3>--%>
			<asp:Label ID="Label3" runat="server" Text=Onion></asp:Label><br />
            <%--<p class="product-price"><span>Per Kg</span> 35₹ </p>--%>
			 <asp:Label ID="Label14" runat="server">35</asp:Label>/Rs<br />
			 <asp:TextBox ID="TextBox3" runat="server"  placeholder="quantity"></asp:TextBox>
			 <br /><br />
			<%--<asp:Label ID="Label15" runat="server"><span>35₹</span></asp:Label><br />--%>
            <%--<a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>--%>
			 <asp:Button ID="Button3" runat="server" Text="Add to Cart" OnClick="Button3_Click" />
			 <asp:Button ID="Button12" runat="server" Text="Buy Now" OnClick="Button12_Click" />
        </div>
    </div>
    <div class="col-lg-4 col-md-6 text-center">
        <div class="single-product-item">
            <div class="product-image">
                <%--<a href="singleproduct.aspx"><img src="assets/img/products/brinjal.jpg" alt=""></a>--%>
				<a href="#"><asp:Image ImageUrl="assets/img/products/brinjal.jpg" runat="server"  style="height:420px"/></a>
            </div>
            <%--<h3>Brinjal</h3>--%>
			<asp:Label ID="Label4" runat="server" Text=Brinjal></asp:Label><br />
            <%--<p class="product-price"><span>Per Kg</span> 50₹ </p>--%>
			 <asp:Label ID="Label16" runat="server">50</asp:Label>/kg<br />
			 <asp:TextBox ID="TextBox4" runat="server"  placeholder="quantity"></asp:TextBox>
			<br /><br />
			<%--<asp:Label ID="Label17" runat="server">50</asp:Label>kg<br />--%>
            <%--<a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>--%>
			 <asp:Button ID="Button4" runat="server" Text="Add to Cart" OnClick="Button4_Click" />
			 <asp:Button ID="Button13" runat="server" Text="Buy Now" OnClick="Button13_Click" />
        </div>
    </div>
    <div class="col-lg-4 col-md-6 text-center">
        <div class="single-product-item">
            <div class="product-image">
                <%--<a href="singleproduct.aspx"><img src="assets/img/products/broccoli.jpg" alt=""></a>--%>
				<a href="#"><asp:Image ImageUrl="assets/img/products/broccoli.jpg" runat="server"  style="height:420px"/></a>
            </div>
            <%--<h3>Broccoli</h3>--%>
			<asp:Label ID="Label5" runat="server" Text=Broccoli></asp:Label><br />
            <%--<p class="product-price"><span>Per Kg</span> 45₹ </p>--%>
			 <asp:Label ID="Label18" runat="server">45</asp:Label>/kg<br />
			 <asp:TextBox ID="TextBox5" runat="server"  placeholder="quantity"></asp:TextBox>
			<br /><br />
			<%--<asp:Label ID="Label19" runat="server"><span>45₹</span></asp:Label><br />--%>
            <%--<a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>--%>
			 <asp:Button ID="Button5" runat="server" Text="Add to Cart" OnClick="Button5_Click" />
			 <asp:Button ID="Button14" runat="server" Text="Buy Now" OnClick="Button14_Click" />
        </div>


    </div>
    <div class="col-lg-4 col-md-6 text-center strawberry">
        <div class="single-product-item">
            <div class="product-image">
                <%--<a href="singleproduct.aspx"><img src="assets/img/products/cauliflower.jpg" alt=""></a>--%>
				<a href="#"><asp:Image ImageUrl="assets/img/products/cauliflower.jpg" runat="server"  style="height:390px"/></a>
            </div>
            <%--<h3>Cauliflower</h3>--%>
			<asp:Label ID="Label6" runat="server" Text=Cauliflower></asp:Label><br />
            <%--<p class="product-price"><span>Per Kg</span> 80₹ </p>--%>
			 <asp:Label ID="Label20" runat="server">80</asp:Label>/kg<br />
			 <asp:TextBox ID="TextBox6" runat="server"  placeholder="quantity"></asp:TextBox>
			<br /><br />
			 <%--<asp:Label ID="Label21" runat="server"><span>80₹</span></asp:Label><br />--%>
            <%--<a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>--%>
			 <asp:Button ID="Button6" runat="server" Text="Add to Cart" OnClick="Button6_Click" />
			 <asp:Button ID="Button15" runat="server" Text="Buy Now" OnClick="Button15_Click" />
        </div>
    </div>
</div>


<div class="row product-lists">
    <div class="col-lg-4 col-md-6 text-center strawberry">
        <div class="single-product-item">
            <div class="product-image">
                <!-- <a href="single-product.html"><img src="assets/img/products/product-img-1.jpg" alt=""></a> -->
                <%--<a href="singleproduct.aspx"><img src="assets/img/products/carrot1.jpg" alt=""></a>--%>
				<a href="#"><asp:Image ImageUrl="assets/img/products/carrot.jpg" runat="server" style="height:420px"/></a>
            </div>
            <%--<h3>carrot</h3>--%>
			<asp:Label ID="Label7" runat="server" Text=Carrot></asp:Label><br />
            <%--<p class="product-price"><span>Per Kg</span> 100₹ </p>--%>
			<asp:Label ID="Label22" runat="server">100</asp:Label>/kg<br />
			 <asp:TextBox ID="TextBox7" runat="server"  placeholder="quantity"></asp:TextBox>
			<br /><br />
			<%--<asp:Label ID="Label23" runat="server"><span>100₹</span></asp:Label><br />--%>
            <%--<a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>--%>
			 <asp:Button ID="Button7" runat="server" Text="Add to Cart" OnClick="Button7_Click" />
			 <asp:Button ID="Button16" runat="server" Text="Buy Now" OnClick="Button16_Click" />
        </div>
    </div>
    <div class="col-lg-4 col-md-6 text-center berry">
        <div class="single-product-item">
            <div class="product-image">
                <%--<a href="singleproduct.aspx"><img src="assets/img/products/gingers.jpg" alt=""></a>--%>
				<a href="#"><asp:Image ImageUrl="assets/img/products/gingers.jpg" runat="server"  style="height:420px"/></a>
            </div>
            <%--<h3>Gingers</h3>--%>
			<asp:Label ID="Label8" runat="server" Text=Gingers></asp:Label><br />
            <%--<p class="product-price"><span>Per Kg</span> 70₹ </p>--%>
			<asp:Label ID="Label24" runat="server">70</asp:Label>/kg<br />
			 <asp:TextBox ID="TextBox8" runat="server"  placeholder="quantity"></asp:TextBox>
			<br /><br />
			<%--<asp:Label ID="Label25" runat="server"><span>70₹</span></asp:Label><br />--%>
            <%--<a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>--%>
			 <asp:Button ID="Button8" runat="server" Text="Add to Cart" OnClick="Button8_Click" />
			 <asp:Button ID="Button17" runat="server" Text="Buy Now" OnClick="Button17_Click" />
        </div>
    </div>
    <div class="col-lg-4 col-md-6 text-center lemon">
        <div class="single-product-item">
            <div class="product-image">
                <%--<a href="singleproduct.aspx"><img src="assets/img/products/garlic.jpg" alt=""></a>--%>
				<a href="#"><asp:Image ImageUrl="assets/img/products/garlic.jpg" runat="server"  style="height:420px"/></a>
            </div>
            <%--<h3>Garlic</h3>--%>
			<asp:Label ID="Label9" runat="server" Text=Garlic></asp:Label><br />
            <%--<p class="product-price"><span>Per Kg</span> 35₹ </p>--%>
			<asp:Label ID="Label26" runat="server">35</asp:Label>/kg<br />
			 <asp:TextBox ID="TextBox9" runat="server"  placeholder="quantity"></asp:TextBox>
			<br /><br />
			<%--<asp:Label ID="Label27" runat="server"><span>35₹</span></asp:Label><br />--%>
            <%--<a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>--%>
			 <asp:Button ID="Button9" runat="server" Text="Add to Cart" OnClick="Button9_Click" />
			 <asp:Button ID="Button18" runat="server" Text="Buy Now" OnClick="Button18_Click" />
        </div>
    </div>
</div>
<br>	
	
	<!-- breadcrumb-section -->
	<!-- <div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>See more Details</p>
						<h1>Single Product</h1>
					</div>
				</div>
			</div>
		</div>
	</div> -->
	<!-- end breadcrumb section -->

	<!-- single product -->
	<!-- <div class="single-product mt-150 mb-150">
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<div class="single-product-img">
						<img src="assets/img/products/product-img-5.jpg" alt="">
					</div>
				</div>
				<div class="col-md-7">
					<div class="single-product-content">
						<h3>Green apples have polyphenols</h3>
						<p class="single-product-pricing"><span>Per Kg</span> $50</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta sint dignissimos, rem commodi cum voluptatem quae reprehenderit repudiandae ea tempora incidunt ipsa, quisquam animi perferendis eos eum modi! Tempora, earum.</p>
						<div class="single-product-form">
							<form action="index.html">
								<input type="number" placeholder="0">
							</form>
							<a href="cart.html" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
							<p><strong>Categories: </strong>Fruits, Organic</p>
						</div>
						<h4>Share:</h4>
						<ul class="product-share">
							<li><a href=""><i class="fab fa-facebook-f"></i></a></li>
							<li><a href=""><i class="fab fa-twitter"></i></a></li>
							<li><a href=""><i class="fab fa-google-plus-g"></i></a></li>
							<li><a href=""><i class="fab fa-linkedin"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div> -->
	<!-- end single product -->

	<!-- more products -->
	<!-- <div class="more-products mb-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="section-title">	
						<h3><span class="orange-text">Related</span> Products</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, fuga quas itaque eveniet beatae optio.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-6 text-center">
					<div class="single-product-item">
						<div class="product-image">
							<a href="single-product.html"><img src="assets/img/products/product-img-1.jpg" alt=""></a>
						</div>
						<h3>Strawberry</h3>
						<p class="product-price"><span>Per Kg</span> 85$ </p>
						<a href="cart.html" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 text-center">
					<div class="single-product-item">
						<div class="product-image">
							<a href="single-product.html"><img src="assets/img/products/product-img-2.jpg" alt=""></a>
						</div>
						<h3>Berry</h3>
						<p class="product-price"><span>Per Kg</span> 70$ </p>
						<a href="cart.html" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 offset-lg-0 offset-md-3 text-center">
					<div class="single-product-item">
						<div class="product-image">
							<a href="single-product.html"><img src="assets/img/products/product-img-3.jpg" alt=""></a>
						</div>
						<h3>Lemon</h3>
						<p class="product-price"><span>Per Kg</span> 35$ </p>
						<a href="cart.html" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
					</div>
				</div>
			</div>
		</div>
	</div> -->
	<!-- end more products -->

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

	
    		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="pagination-wrap">
					<ul>
						
						<li><a class="active" href="vegetable.aspx">1</a></li>
						<li><a class="" href="vegetable2.aspx">2</a></li>
						
					</ul>
				</div>
			</div>
		</div>
	
</asp:Content>
