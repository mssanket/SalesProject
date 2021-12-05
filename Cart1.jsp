 <%@page import="com.pojo.Product"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="com.pojo.Cart"%>
<%@page import="java.util.List"%>
<%@page import="com.Modal.BlManager"%>
<%@page import="com.pojo.customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Bootstrap-ecommerce by Vosidiy">

<title>Product Detail</title>

<!-- jQuery -->
<script src="js/jquery-2.0.0.min.js" type="text/javascript"></script>

<!-- Bootstrap4 files-->
<script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
<link href="css/bootstrap4.css" rel="stylesheet" type="text/css"/>

<!-- Font awesome 5 -->
<link href="fonts/fontawesome/css/fontawesome-all.min.css" type="text/css" rel="stylesheet">

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
</head>
<body>
<%
customer c = (customer) session.getAttribute("cust");
BlManager bl=new BlManager();
String name=request.getParameter("name");
Product p=bl.getProductRecordById(name);
DateFormat df=new SimpleDateFormat("dd/MM/yyyy");
String customername=c.getName();
List<Long> list2=bl.getcount(customername);
long count=list2.get(0);
%>
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
			
			
			<div class="col-auto">
				<a href="custquotation.jsp" class="widget-header">
					<div class="icontext">
						<div class="icon-wrap"><i class="text-warning icon-sm fas fa-file-pdf"></i></div>
						<div class="text-wrap text-dark">
							Apply Quotation <br>  
						</div>
					</div>
				</a>
			</div> <!-- col.// -->
			
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
							Sign out <br>							
						</div>
					</div>
				</a>							
		
			</div> <!-- col.// -->
			
		
			
		</div>
		</div></div>
	</div>
	</div>
		

    <!-- <!-- <div class="collapse navbar-collapse" id="navbarTop">	
 navbar-nav.//
    </div> collapse.//
  </div>
</nav>

<section class="header-main">
	<div class="container">
<div class="row-sm align-items-center">
	<div class="col-lg-4-24 col-sm-3">
	<div class="category-wrap dropdown py-1">
	
		
	</div> 
	</div>
	<div class="col-lg-11-24 col-sm-8">
			 <form action="#" class="py-1">
				<div class="input-group w-100">
					
				    <input type="text" class="form-control" style="width:50%;" placeholder="Search">
				    <div class="input-group-append">
				      <button class="btn btn-warning" type="submit">
				        <i class="fa fa-search"></i> Search 
				      </button>
				    </div>
			    </div>
			</form>  search-wrap .end//
	</div> col.//
	<div class="col-lg-9-24 col-sm-12">
		<div class="widgets-wrap float-right row no-gutters py-1">
			<div class="col-auto">					
				<a href="logoutcust.jsp" class="widget-header">
					<div class="icontext">
						<div class="icon-wrap"><i class="text-warning icon-sm fa fa-user"></i></div>
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
						<div class="icon-wrap"><i class="text-warning icon-sm fa fa-shopping-cart"></i></div>
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
	</div> -->  <!-- container.// -->
</section>  <!-- header-main .// -->
</header> <!-- section-header.// -->


<form action="Cart.jsp">
<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content bg padding-y-sm">
<div class="container">
<nav class="mb-3">
<ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="custdashboard.jsp">Home</a></li>
    <li class="breadcrumb-item"><a><%= p.getCategory()%></a></li>
    <li class="breadcrumb-item active" aria-current="page">Items</li>
</ol> 
</nav>

<input type="hidden" name="id" value="<%= p.getId()%>">
<input type="hidden" name="productname"  value="<%= p.getName()%>">
<input type="hidden" name="address" value="<%= p.getCategory()%>">
<input type="hidden" name="price" value="<%= p.getSellingprice()%>">
<input type="hidden" name="warranty" value="<%= p.getWarranty()%>">
<input type="hidden" name="discount" value="<%= p.getDiscount()%>">
<input type="hidden" name="imgname" value="<%= p.getImana()%>">

<div class="row">
<div class="col-xl-10 col-md-9 col-sm-12">


<main class="card">
	<div class="row no-gutters">
		<aside class="col-sm-6 border-right">
<article class="gallery-wrap"> 
<div class="img-big-wrap">
  <div> <a href="<%=request.getContextPath()%>/products/<%= p.getImana()%>" data-fancybox=""><img src="<%=request.getContextPath()%>/products/<%= p.getImana()%>"></a></div>
</div> <!-- slider-product.// -->
 <!-- slider-nav.// -->
</article> <!-- gallery-wrap .end// -->
		</aside>
		<aside class="col-sm-6">
<article class="card-body">
<!-- short-info-wrap -->
	<h3 class="title mb-3"><%= p.getName()%></h3>

<div class="mb-3"> 
	<var class="price h3 text-warning"> 
		<span class="currency">Rs : </span><span class="num"><%= p.getSellingprice()%></span>
	</var> 

</div> <!-- price-detail-wrap .// -->
<dl>
  <dt>Description</dt>
  <dd><p><%= p.getRemark()%></p></dd>
</dl>
<dl class="row">
  <dt class="col-sm-3">Warranty</dt>
  <dd class="col-sm-9"><%= p.getWarranty()%> Year</dd>
  
  <dt class="col-sm-3">Seller</dt>
  <dd class="col-sm-9"><%= p.getSeller()%></dd>
  
  <dt class="col-sm-3">Discount</dt>
  <dd class="col-sm-9"><%= p.getDiscount()%> %</dd>

  <dt class="col-sm-3">Purchase Type</dt>
  <dd class="col-sm-9">
  <select class="form-control form-control-sm" name="type" style="width:70px;">
			  		<option> Cash </option>
			  		<option> Card </option>
			  	</select>
  </dd>
  
  <dt class="col-sm-3">Delivery Type</dt>
  <dd class="col-sm-9">
  <select class="form-control form-control-sm" name="status" style="width:90px;">
			  		<option> Normal </option>
			  		<option> Urgent </option>
			  	</select>
  </dd>
  
</dl>
<div class="rating-wrap">

	<ul class="rating-stars">
		<li style="width:80%" class="stars-active"> 
			<i class="fa fa-star"></i> <i class="fa fa-star"></i> 
			<i class="fa fa-star"></i> <i class="fa fa-star"></i> 
			<i class="fa fa-star"></i> 
		</li>
		<li>
			<i class="fa fa-star"></i> <i class="fa fa-star"></i> 
			<i class="fa fa-star"></i> <i class="fa fa-star"></i> 
			<i class="fa fa-star"></i> 
		</li>
	</ul>

</div> <!-- rating-wrap.// -->
<hr>
	<div class="row">
		<div class="col-sm-5">
			<dl class="dlist-inline">
			  <dt>Quantity: </dt>
			  <dd> 
			  	<select class="form-control form-control-sm" name="quantity" style="width:70px;">
			  		<option> 1 </option>
			  		<option> 2 </option>
			  		<option> 3 </option>
			  		<option> 4 </option>
			  		<option> 5 </option>
			  		<option> 6 </option>
			  		<option> 7 </option>
			  		<option> 8 </option>
			  		<option> 9 </option>
			  		<option> 10 </option>
			  	</select>
			  </dd>
			</dl>  <!-- item-property .// -->
		</div> <!-- col.// -->
	</div> <!-- row.// -->
	<hr>
	
	<input type="submit" class="btn  btn-outline-warning" value="ADD TO CART"><!-- <a class="btn  btn-outline-warning">   </a> -->
<!-- short-info-wrap .// -->
</article> <!-- card-body.// -->
		</aside> <!-- col.// -->
	</div> <!-- row.// -->
</main> <!-- card.// -->

<!-- PRODUCT DETAIL -->
<article class="card mt-3">
	 <!-- card-body.// -->
</article> <!-- card.// -->

<!-- PRODUCT DETAIL .// -->

</div> <!-- col // -->
</form>
<aside class="col-xl-2 col-md-3 col-sm-12">

<!-- card.// -->
 <!-- row.// -->



</div><!-- container // -->
</section>
<!-- ========================= SECTION CONTENT .END// ========================= -->


<!-- ========================= FOOTER ========================= -->

<!-- ========================= FOOTER END // ========================= -->


</body>
</html>