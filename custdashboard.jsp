<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="com.Modal.BlManager"%>
<%@page import="javax.swing.text.DefaultEditorKit.CutAction"%>
<%@ page import="com.pojo.customer"%>
<%@page import="com.pojo.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
<style>
.badge {
  padding-left: 9px;
  padding-right: 9px;
  -webkit-border-radius: 9px;
  -moz-border-radius: 9px;
  border-radius: 9px;
}

.label-warning[href],
.badge-warning[href] {
  background-color: #c67605;
}
#lblCartCount {
    font-size: 12px;
    background: #ff0000;
    color: #fff;
    padding: 0 5px;
    vertical-align: top;
    margin-left: -10px; 
}
</style>

<title>Mehta Sales-Products</title>

<!-- jQuery -->
<script src="js/jquery-2.0.0.min.js" type="text/javascript"></script>

<!-- Bootstrap4 files-->
<script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
<link href="css/bootstrap4.css" rel="stylesheet" type="text/css"/>

<!-- Font awesome 5 -->
<link href="fonts/fontawesome/css/fontawesome-all.min.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">

<!-- plugin: owl carousel  -->
<link href="plugins/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
<link href="plugins/owlcarousel/assets/owl.theme.default.css" rel="stylesheet">
<script src="plugins/owlcarousel/owl.carousel.min.js"></script>

<!-- custom style -->
<link href="css/ui.css" rel="stylesheet" type="text/css"/>
<link href="css/responsive.css" rel="stylesheet" media="only screen and (max-width: 1200px)" />

<!-- custom javascript -->
<script src="js/script.js" type="text/javascript"></script>

<script type="text/javascript">
/// some script

// jquery ready start
$(document).ready(function() {
	// jQuery code

}); 
// jquery end
</script>

</head>
<%
	customer c = (customer) session.getAttribute("cust");
	if (c == null) {
		response.sendRedirect("login.jsp");
	} else {
		BlManager bl=new BlManager();
		String customername=c.getName();
		List<Long> list2=bl.getcount(customername);
		long count=list2.get(0);
%>
<body>
<header class="section-header">

<nav class="navbar navbar-expand-lg navbar-light">

  <div class="container">
  	<div class="row">	
  		<div class="col-lg-1">
			<a class="navbar-brand" href="custdashboard.jsp">Mehta Sales</a>
		</div>
    <!--<br> <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTop" aria-controls="navbarTop" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button> -->
    

	<div class="col-lg-11">
	<div class="row">
	<div class="col-lg-12">
		<div class="widgets-wrap float-right row no-gutters py-1">
			
			
		 <!-- col.// -->
			<div class="col-auto">
				<a href="amcreg.jsp" class="widget-header">
					<div class="icontext">
						<div class="icon-wrap"><i class="text-warning icon-sm fas fa-file-pdf"></i></div>
						<div class="text-wrap text-dark">
							Apply AMC <br>  
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-auto">
			<div class="widget-header dropdown">
				<a href="#" data-toggle="dropdown" data-offset="20,10">
					<div class="icontext">
						<div class="icon-wrap"><i class="text-warning icon-sm fa fa-user"></i></div>
						<div class="text-wrap text-dark">
							Complaint <br>							
						</div>
					</div>
				</a>
				<div class="dropdown-menu">
					<form class="px-4 py-3" action="complaintreg.jsp">						
						<button type="submit" class="btn btn-primary">Raise Complaint</button>
						</form>
						<form class="px-4 py-3" action="mycomplaint.jsp">						
						<button type="submit" class="btn btn-primary">My Complaints</button>
						</form>
					
				</div> <!--  dropdown-menu .// -->
				<div class="dropdown-menu">
					
					
				</div> <!--  dropdown-menu .// -->
			</div>  <!-- widget-header .// -->
			</div> <!-- col.// -->
			
			<div class="col-auto">
				<a href="Cart2.jsp" class="widget-header">
					<div class="icontext">
						<div class="icon-wrap"><i class="text-warning icon-sm fa fa-shopping-cart"></i>
						<span class='badge badge-warning' id='lblCartCount'> <%=count %></span>
						</div>
						<div class="text-wrap text-dark">
							My Cart <br>  
						</div>
					</div>
				</a>
			</div> <!-- col.// -->
			
			
			
			<div class="col-auto">					
				<a href="logoutcust.jsp" class="widget-header">
					<div class="icontext">
						<div class="icon-wrap"><i class="text-warning icon-sm fas fa-sign-out-alt"></i></div>
						<div class="text-wrap text-dark">
							Log out <br>							
						</div>
					</div>
				</a>							
		
			</div> <!-- col.// -->
			
			<!-- <div class="col-auto">
			<form action="#" class="py-1">
				<div class="input-group w-100">
					
				    <input type="text" class="form-control" style="width:30%;" placeholder="Search">
				    <div class="input-group-append">
				      <button class="btn btn-warning" type="submit">
				        <i class="fa fa-search"></i> Search 
				      </button>
				    </div>
			    </div>
			</form>
			</div> -->
			
		</div>
		</div></div>
	</div>
	
	
	<!-- <div class="col-sm-4">
			 <form action="#" class="py-1">
				<div class="input-group w-100">
					
				    <input type="text" class="form-control" style="width:30%;" placeholder="Search">
				    <div class="input-group-append">
				      <button class="btn btn-warning" type="submit">
				        <i class="fa fa-search"></i> Search 
				      </button>
				    </div>
			    </div>
			</form>  search-wrap .end//
	</div>  -->
	
		
	</div>
     <!-- collapse.// -->
  </div>
</nav>

<!-- <section class="header-main">
	<div class="container">
<div class="row-sm align-items-center">
	<div class="col-lg-4-24 col-sm-3">
	<div class="category-wrap dropdown py-1">
	
		
	</div> 
	</div>
	col.//
	<div class="col-lg-9-24 col-sm-12">
		<div class="widgets-wrap float-right row no-gutters py-1">
			<div class="col-auto">					
				<a href="logoutcust.jsp" class="widget-header">
					<div class="icontext">
						<div class="icon-wrap"><i class="text-warning icon-sm fas fa-sign-out-alt"></i></div>
						<div class="text-wrap text-dark">
							Sign out <br>							
						</div>
					</div>
				</a>							
		
			</div> col.//
			<div class="col-auto">
				<a href="Cart2.jsp" class="widget-header">
					<div class="icontext">
						<div class="icon-wrap"><i class="text-warning icon-sm fa fa-shopping-cart"></i></div>
						<div class="text-wrap text-dark">
							My Cart <br>  
						</div>
					</div>
				</a>
			</div> col.//
			<div class="col-auto">
				<a href="custquotation.jsp" class="widget-header">
					<div class="icontext">
						<div class="icon-wrap"><i class="text-warning icon-sm fas fa-file-pdf"></i></div>
						<div class="text-wrap text-dark">
							Apply Quotation <br>  
						</div>
					</div>
				</a>
			</div> col.//
			<div class="col-auto">
			<div class="widget-header dropdown">
				<a href="#" data-toggle="dropdown" data-offset="20,10">
					<div class="icontext">
						<div class="icon-wrap"><i class="text-warning icon-sm fa fa-user"></i></div>
						<div class="text-wrap text-dark">
							Complaint <br>							
						</div>
					</div>
				</a>
				<div class="dropdown-menu">
					<form class="px-4 py-3" action="complaintreg.jsp">						
						<button type="submit" class="btn btn-primary">Raise Complaint</button>
						</form>
						<form class="px-4 py-3" action="mycomplaint.jsp">						
						<button type="submit" class="btn btn-primary">My Complaints</button>
						</form>
					
				</div>  dropdown-menu .//
				<div class="dropdown-menu">
					
					
				</div>  dropdown-menu .//
			</div>  widget-header .//
			</div> col.//
</div> row.//
	</div> container.//
</section>  header-main .// -->
</header> <!-- section-header.// -->

<!-- ========================= SECTION MAIN ========================= -->
<section class="section-main bg padding-y-sm">
<div class="container">
<div class="card">
	<div class="card-body">
<div class="row row-sm">
	<aside class="col-md-3">
<h5 class="text-uppercase">My Markets</h5>
	

	</aside> <!-- col.// -->
	<div class="col-md-6">

<!-- ================= main slide ================= -->
<div class="owl-init slider-main owl-carousel" data-items="1" data-nav="true" data-dots="false">
	<div class="item-slide">
		<img src="images/banners/tv12.jpg">
	</div>
	<div class="item-slide">
		<img src="images/banners/ip.jpg">
	</div>
	<div class="item-slide">
		<img src="images/banners/gp2.jpg">
	</div>
</div>
<!-- ============== main slidesow .end // ============= -->

	</div> <!-- col.// -->
	<aside class="col-md-3">

	</aside>
</div> <!-- row.// -->
	</div> <!-- card-body .// -->
</div> <!-- card.// -->

<figure class="mt-3 banner p-3 bg-secondary">
	<div class="text-lg text-center white">Check Our Products</div>
</figure>

<!-- ========================= SECTION ITEMS ========================= -->
<section class="section-request bg padding-y-sm">
<div class="container">
<header class="section-heading heading-line">
	<h4 class="title-section bg text-uppercase">Products</h4>
</header>
<%
BlManager bl1 = new BlManager();
List<Product> list = bl1.viewpro();
request.setAttribute("list", list);
%>
<div class="row-sm">

<c:forEach items="${list}" var="u">
<% session.setAttribute("product", "${u.getId()}"); %>
<div class="col-md-2">
	<figure class="card card-product">
		<div class="img-wrap"> <img src="<%=request.getContextPath()%>/products/${u.getImana()}"></div>
		<input type="hidden" name="productid" value="${u.getId()}"/>		
		<figcaption class="info-wrap">
			<h6 class="title "><a href="Cart1.jsp?name=${u.getName()}">Name : ${u.getName()}</a></h6>
			<h6 class="title ">Category : ${u.getCategory()}</h6>
			<h6 class="title ">Quantity : ${u.getQuantity()}</h6>
			<h6 class="title ">Seller : ${u.getSeller()}</h6>
			<div class="price-wrap">
				<span class="price-new">Price : ${u.getSellingprice()}</span>				
			</div> <!-- price-wrap.// -->
			
		</figcaption>
	</figure> <!-- card // -->
</div> <!-- col // -->
</c:forEach>

</div><!-- container // -->
</section>
<!-- ========================= SECTION ITEMS .END// ========================= -->

<!-- ========================= SECTION LINKS ========================= -->
<section class="section-links bg padding-y-sm">
<div class="container">
<div class="row">
	<div class="col-sm-6">
<header class="section-heading heading-line">
	<h4 class="title-section bg text-uppercase"></h4>
</header>

	</div> <!-- col // -->

	<div class="col-sm-6">

</div>
</div>
</div><!-- container // -->
</section>
<!-- ========================= SECTION LINKS END.// ========================= -->

<!-- ========================= SECTION SUBSCRIBE ========================= -->
<!-- <section class="section-subscribe bg-secondary padding-y-lg">
<div class="container">

<p class="pb-2 text-center white">Delivering the latest product trends and industry news straight to your inbox</p>

<div class="row justify-content-md-center">
	<div class="col-lg-4 col-sm-6">
<form class="row-sm form-noborder">
		<div class="col-8">
		<input class="form-control" placeholder="Your Email" type="email">
		</div> col.//
		<div class="col-4">
		<button type="submit" class="btn btn-block btn-warning"> <i class="fa fa-envelope"></i> Subscribe </button>
		</div> col.//
</form>
<small class="form-text text-white-50">We will never share your email address with a third-party. </small>
	</div> col-md-6.//
</div>
	

</div> container //
</section>
 --><!-- ========================= SECTION SUBSCRIBE END.//========================= -->

<!-- ========================= FOOTER ========================= -->
<!-- <footer class="section-footer bg-secondary">
	<div class="container">
		<section class="footer-top padding-top">
			<div class="row">
				<aside class="col-sm-3 col-md-3 white">
					<h5 class="title">Customer Services</h5>
					<ul class="list-unstyled">
						<li> <a href="#">Help center</a></li>
						<li> <a href="#">Money refund</a></li>
						<li> <a href="#">Terms and Policy</a></li>
						<li> <a href="#">Open dispute</a></li>
					</ul>
				</aside>
				<aside class="col-sm-3  col-md-3 white">
					<h5 class="title">My Account</h5>
					<ul class="list-unstyled">
						<li> <a href="#"> User Login </a></li>
						<li> <a href="#"> User register </a></li>
						<li> <a href="#"> Account Setting </a></li>
						<li> <a href="#"> My Orders </a></li>
						<li> <a href="#"> My Wishlist </a></li>
					</ul>
				</aside>
				<aside class="col-sm-3  col-md-3 white">
					<h5 class="title">About</h5>
					<ul class="list-unstyled">
						<li> <a href="#"> Our history </a></li>
						<li> <a href="#"> How to buy </a></li>
						<li> <a href="#"> Delivery and payment </a></li>
						<li> <a href="#"> Advertice </a></li>
						<li> <a href="#"> Partnership </a></li>
					</ul>
				</aside>
				<aside class="col-sm-3">
					<article class="white">
						<h5 class="title">Contacts</h5>
						<p>
							<strong>Phone: </strong> +123456789 <br> 
						    <strong>Fax:</strong> +123456789
						</p>

						
					</article>
				</aside>
			</div> row.//
			<br> 
		</section>
		<section class="footer-bottom row border-top-white">
			<div class="col-sm-6"> 
				<p class="text-white-50"><br></p>
			</div>
			<div class="col-sm-6 text-right">
				<p class="text-sm-right text-white-50"><br>
<a href="http://bootstrap-ecommerce.com" class="text-white-50"></a>
				</p>
			</div>
		</section> //footer-top
	</div>//container
</footer>
 --><!-- ========================= FOOTER END // ========================= -->


</body>
<%
	}
%>





</html>