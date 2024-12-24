<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="fruit2.aspx.cs" Inherits="newProject.fruit2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<br /><br /><br /><br /><br />--%>
        <!-- products Items Start -->
<div class="row product-lists">
    <div class="col-lg-4 col-md-6 text-center strawberry">
        <div class="single-product-item">
            <div class="product-image">
                <%--<a href="singleproduct.aspx"><img src="assets/img/products/melon.jpg" alt=""></a>--%>
                <a href="#"><asp:Image ImageUrl="assets/img/products/melon.jpg" runat="server"  style="height:390px"/></a>
            </div>
            <%--<h3>Melon</h3>--%>
            <asp:Label ID="Label1" runat="server" Text=Guava></asp:Label><br />
           <%-- <p class="product-price"><span>Per Kg</span> 85₹ </p>--%>
            <asp:Label ID="Label10" runat="server">85/</asp:Label>kg
             <asp:TextBox ID="TextBox1" runat="server" placeholder="quantity"></asp:TextBox>
<br /><br />
             <%--<asp:Label ID="Label11" runat="server"><span>85₹</span></asp:Label><br />--%>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add to Cart" />
            <%--<a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>--%>
           <asp:Button ID="Button10" runat="server" Text="Buy Now" OnClick="Button10_Click" />
        </div>
    </div>
    <div class="col-lg-4 col-md-6 text-center berry">
        <div class="single-product-item">
            <div class="product-image">
               <%-- <a href="singleproduct.aspx"><img src="assets/img/products/papaya.jpg" alt=""></a>--%>
                <a href="#"><asp:Image ImageUrl="assets/img/products/papaya.jpg" runat="server"  style="height:390px"/></a>
            </div>
            <%--<h3>Papaya</h3>--%>
            <asp:Label ID="Label2" runat="server" Text=Papaya></asp:Label><br />
<%--            <p class="product-price"><span>Per Kg</span> 70₹</p>--%>
            <asp:Label ID="Label12" runat="server">70/</asp:Label>kg
             <asp:TextBox ID="TextBox2" runat="server" placeholder="quantity"></asp:TextBox>
<br /><br />
            <%--<asp:Label ID="Label13" runat="server"><span>70₹</span></asp:Label><br />--%>
            <%--<p class="product-price">&nbsp;<asp:Button ID="Button2" runat="server" Text="Button" />--%>
             <asp:Button ID="Button2" runat="server" Text="Add to Cart" OnClick="Button2_Click" />
            <asp:Button ID="Button11" runat="server" Text="Buy Now" OnClick="Button11_Click" />
            

            <%--<a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>--%>
        </div>
    </div>
    <div class="col-lg-4 col-md-6 text-center lemon">
        <div class="single-product-item">
            <div class="product-image">
                <%--<a href="#"><img src="assets/img/products/cherry.jpg" alt=""></a>--%>
                <a href="#"><asp:Image ImageUrl="assets/img/products/cherry.jpg" runat="server"  style="height:390px"/></a>
            </div>
            <%--<h3>Cherry</h3>--%>
            <asp:Label ID="Label3" runat="server" Text=Cherry></asp:Label><br />
            <%--<p class="product-price"><span>Per Kg</span> 35₹ </p>--%>
             <asp:Label ID="Label14" runat="server">35</asp:Label>/kg
             <asp:TextBox ID="TextBox3" runat="server" placeholder="quantity"></asp:TextBox>
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
                <%--<a href="singleproduct.aspx"><img src="assets/img/products/lychee.jpg" alt=""></a>--%>
                <a href="#"><asp:Image ImageUrl="assets/img/products/lychee.jpg" runat="server" style="height:390px"/></a>
            </div>
            <%--<h3>Lychee</h3>--%>
            <asp:Label ID="Label4" runat="server" Text=Lychee></asp:Label><br />
            <%--<p class="product-price"><span>Per Kg</span> 50₹ </p>--%>
             <asp:Label ID="Label16" runat="server">50</asp:Label>/kg
             <asp:TextBox ID="TextBox4" runat="server" placeholder="quantity"></asp:TextBox>
<br /><br />
             <%--<asp:Label ID="Label17" runat="server"><span>50₹</span></asp:Label><br />--%>
           <%-- <a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>--%>
             <asp:Button ID="Button4" runat="server" Text="Add to Cart" OnClick="Button4_Click" />
            <asp:Button ID="Button13" runat="server" Text="Buy Now" OnClick="Button13_Click" />
        </div>
    </div>
    <div class="col-lg-4 col-md-6 text-center">
        <div class="single-product-item">
            <div class="product-image">
                <%--<a href="singleproduct.aspx"><img src="assets/img/products/pomegranate.jpg" alt=""></a>--%>
                <a href="#"><asp:Image ImageUrl="assets/img/products/pomegranate.jpg" runat="server" style="height:390px" /></a>
            </div>
            <%--<h3>Pomegranate</h3>--%>
            <asp:Label ID="Label5" runat="server" Text=Pomegranate></asp:Label><br />
            <%--<p class="product-price"><span>Per Kg</span> 45₹ </p>--%>
             <asp:Label ID="Label18" runat="server">45</asp:Label>/kg
             <asp:TextBox ID="TextBox5" runat="server" placeholder="quantity"></asp:TextBox>
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
                <%--<a href="singleproduct.aspx"><img src="assets/img/products/chikkoo.jpg" alt=""></a>--%>
                <a href="#"><asp:Image ImageUrl="assets/img/products/chikkoo.jpg" runat="server"  style="height:390px"/></a>
            </div>
            <%--<h3>Chikkoo</h3>--%>
            <asp:Label ID="Label6" runat="server" Text=Chickoo></asp:Label><br />
            <%--<p class="product-price"><span>Per Kg</span> 80₹ </p>--%>
             <asp:Label ID="Label20" runat="server">80</asp:Label>/kg
             <asp:TextBox ID="TextBox6" runat="server" placeholder="quantity"></asp:TextBox>
<br /><br />
            <%--<asp:Label ID="Label21" runat="server"><span>80₹</span></asp:Label><br />--%>
            <%--<a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>--%>
             <asp:Button ID="Button6" runat="server"  Text="Add to Cart" OnClick="Button6_Click" />
            <asp:Button ID="Button15" runat="server" Text="Buy Now" OnClick="Button15_Click" />
        </div>
    </div>
</div>


<div class="row product-lists">
    <div class="col-lg-4 col-md-6 text-center strawberry">
        <div class="single-product-item">
            <div class="product-image">
                 <%--<a href="single-product.html"><img src="assets/img/products/peach.jpg" alt=""></a>--%> 
                <%--<a href="singleproduct.aspx"><img src="assets/img/products/peach.jpg" alt=""></a>--%>
                <a href="#"><asp:Image ImageUrl="assets/img/products/peach.jpg" runat="server"  style="height:390px"/></a>
            </div>
            <%--<h3>Peach</h3>--%>
            <asp:Label ID="Label7" runat="server" Text=Peach></asp:Label><br />
            <%--<p class="product-price"><span>Per Kg</span> 100₹ </p>--%>
             <asp:Label ID="Label22" runat="server">100</asp:Label>/kg
             <asp:TextBox ID="TextBox7" runat="server" placeholder="quantity"></asp:TextBox>
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
                <%--<a href="singleproduct.aspx"><img src="assets/img/products/jackfruit.jpg" alt=""></a>--%>
                <a href="#"><asp:Image ImageUrl="assets/img/products/jackfruit.jpg" runat="server"  style="height:390px"/></a>
            </div>
            <%--<h3>Jack Friut</h3>--%>
            <asp:Label ID="Label8" runat="server" Text=JackFruit></asp:Label><br />
            <%--<p class="product-price"><span>Per Kg</span> 70₹ </p>--%>
             <asp:Label ID="Label24" runat="server">70</asp:Label>/kg
             <asp:TextBox ID="TextBox8" runat="server" placeholder="quantity"></asp:TextBox>
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
                   <div class="product-image">
                        <%--<a href="singleproduct.aspx"><img src="assets/img/products/Guava.jpg" alt=""></a>--%>
                       <a href="#"><asp:Image ImageUrl="assets/img/products/guava.jpg" runat="server" style="height:360px" /></a>
                    </div>  
            </div>
            <%--<h3>Guava</h3>--%>
            <asp:Label ID="Label9" runat="server" Text=Guava></asp:Label><br />
            <%--<p class="product-price"><span>Per Kg</span> 35₹ </p>--%>
             <asp:Label ID="Label26" runat="server">35</asp:Label>/kg
             <asp:TextBox ID="TextBox9" runat="server" placeholder="quantity"></asp:TextBox>
<br /><br />
            <%--<asp:Label ID="Label27" runat="server"><span>35₹</span></asp:Label><br />--%>
            <%--<a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>--%>
             <asp:Button ID="Button9" runat="server" Text="Add to Cart" OnClick="Button9_Click" />
            <asp:Button ID="Button18" runat="server" Text="Buy Now" OnClick="Button18_Click" />
        </div>
    </div>
</div>
   <%-- <div class="col-lg-4 col-md-6 text-center">
        <div class="single-product-item">
            <div class="product-image">
                <a href="singleproduct.aspx"><img src="assets/img/products/guava.jpg" alt=""></a>
            </div>
            <h3>Guava</h3>
            <p class="product-price"><span>Per Kg</span> 50₹ </p>
            <a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
        </div>
    </div>
    <div class="col-lg-4 col-md-6 text-center">
        <div class="single-product-item">
            <div class="product-image">
                <a href="singleproduct.aspx"><img src="assets/img/products/lychee.jpg" alt=""></a>
            </div>
            <h3>Lychee</h3>
            <p class="product-price"><span>Per Kg</span> 45₹ </p>
            <a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
        </div>
    </div>
    <div class="col-lg-4 col-md-6 text-center strawberry">
        <div class="single-product-item">
            <div class="product-image">
                <a href="singleproduct.aspx"><img src="assets/img/products/chikkoo.jpg" alt=""></a>
            </div>
            <h3>Chikkoo </h3>
            <p class="product-price"><span>Per Kg</span> 80₹ </p>
            <a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
        </div>
    </div>
</div>


<div class="row product-lists">
    <div class="col-lg-4 col-md-6 text-center strawberry">
        <div class="single-product-item">
            <div class="product-image">
                
                <a href="singleproduct.aspx"><img src="assets/img/products/pomegranate.jpg" alt=""></a>
            </div>
            <h3>Pomegranate</h3>
            <p class="product-price"><span>Per Kg</span> 100₹ </p>
            <a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
        </div>
    </div>
    <div class="col-lg-4 col-md-6 text-center berry">
        <div class="single-product-item">
            <div class="product-image">
                <a href="singleproduct.aspx"><img src="assets/img/products/peach.jpg" alt=""></a>
            </div>
            <h3>Peach</h3>
            <p class="product-price"><span>Per Kg</span> 70₹ </p>
            <a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
        </div>
    </div>
    <div class="col-lg-4 col-md-6 text-center lemon">
        <div class="single-product-item">
            <div class="product-image">
                <a href="singleproduct.aspx"><img src="assets/img/products/jackfruit.jpg" alt=""></a>
            </div>
            <h3>Jack Fruit</h3>
            <p class="product-price"><span>Per Kg</span> 35₹ </p>
            <a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
        </div>
    </div>
</div>--%>

        		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="pagination-wrap">
					<ul>
						<%--<li><a class="active3" href="fruit1.aspx">Prev</a></li>--%>
						<!-- <li><a href="#">1</a></li> -->
						<li><a  class="" href="fruits.aspx">1</a></li>
						<li><a class="active" href="fruit2.aspx">2</a></li>
						<!-- <li><a href="#">3</a></li> -->
						<%--<li><a href="#">Next</a></li>--%>
					</ul>
				</div>
			</div>
		</div>




<!-- <div class="row">
    <div class="col-lg-12 text-center">
        <div class="pagination-wrap">
            <ul>
                <li><a href="#">Prev</a></li>
                <li><a href="#">1</a></li>
                <li><a class="active" href="#">1</a></li>
                <li><a class="active2" href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">Next</a></li>
            </ul>
        </div>
    </div>
</div>
</div>
</div> -->
<!-- end products -->
</asp:Content>
