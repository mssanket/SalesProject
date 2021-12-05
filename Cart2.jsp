<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="com.pojo.Cart"%>
<%@page import="java.util.List"%>
<%@page import="com.Modal.BlManager"%>
<%@page import="com.Modal.randomnum"%>
<%@page import="com.pojo.customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
 <title>My Cart</title>
<!-- Bootstrap4 files-->
<script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
<link href="css/bootstrap4.css" rel="stylesheet" type="text/css"/>

<!-- Font awesome 5 -->
<link href="fonts/fontawesome/css/fontawesome-all.min.css" type="text/css" rel="stylesheet">

<!-- custom style -->
<link href="css/ui.css" rel="stylesheet" type="text/css"/>
<link href="css/responsive.css" rel="stylesheet" media="only screen and (max-width: 1200px)" />


</head>
<body>
<%
long total =0;
DateFormat df=new SimpleDateFormat("dd/MM/yyyy");

try
{
customer c = (customer) session.getAttribute("cust");
String customername=c.getName();
BlManager bl=new BlManager();

List<Cart> list=bl.getCartRecordByName2(customername);
request.setAttribute("list",list);
List<Long> list1=bl.gettotal(customername);
int count=1;
List<Long> list2=bl.gettotal(customername);
total=list2.get(0);
}
catch(NullPointerException n)
{
%>
  <script type="text/javascript">
   alert("cart is empty");
  </script>
<%
n.printStackTrace();
}

%>
<header class="section-header">
<section class="header-main">
<div class="container">
<div class="row align-items-center">
<div class="col-lg-3 col-sm-4">
<div class="brand-wrap">
<a href="custdashboard.jsp">
<h2 class="logo-text">Home</h2>
</a>
</div> <!-- brand-wrap.// -->
</div>
<div class="col-lg-6 col-sm-8">
<!-- search-wrap .end// -->
</div> <!-- col.// -->
<div class="col-lg-3 col-sm-12">
</div> <!-- col.// -->
</div> <!-- row.// -->
</div> <!-- container.// -->
</section> <!-- header-main .// -->
</header> <!-- section-header.// -->


<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content bg padding-y border-top">
<div class="container">

<div class="row">
<main class="col-sm-9">

<div class="card">
<table class="table table-hover shopping-cart-wrap">
<thead class="text-muted">
<tr>
  <th scope="col">Product</th>
  <th scope="col" width="120">Quantity</th>
  <th scope="col" width="200">Price(Per Product)</th>
  <th scope="col" class="text-right" width="200">Action</th>
</tr>
</thead>
<c:forEach items="${list}" var="c">

<tbody>
<tr>
<td>
<figure class="media">
<div class="img-wrap"><img src="<%=request.getContextPath()%>/products/${c.getImgname()}" class="img-thumbnail img-sm"></div>
<figcaption class="media-body">
<h6 class="title text-truncate">${c.getProductname()}</h6>
<dl class="dlist-inline small">
 <dt>Purchased type: </dt>
 <dd>${c.getPurchasedtype()}</dd>
</dl>
<dl class="dlist-inline small">
 <dt>Delivery status: </dt>
 <dd>${c.getDeliverystatus()}</dd>
</dl>
</figcaption>
</figure> 
</td>
<td> 
<div class="price-wrap"> 
<var class="price">${c.getQuantity()}</var>  
</div> <!-- price-wrap .// -->
</td>
<td> 
<div class="price-wrap"> 
<var class="price">INR ${c.getPrice()}</var>  
</div> <!-- price-wrap .// -->
</td>
<td class="text-right"> 
<a href="cartdelete.jsp?productname=${c.getProductname() }" class="btn btn-outline-danger"> × Remove</a>
</td>
</tr>
</tbody>
</c:forEach>
</table>

</div> <!-- card.// -->

<% randomnum rd=new randomnum();
   String random=rd.nextString();       
   Cart inrandom=new Cart();
   inrandom.setInvoice(random);
%>
<center>
<a href="custdashboard.jsp" class="btn btn-warning" role="button">Continue Shopping</a>
</center>
</main> <!-- col.// -->
<aside class="col-sm-3">
<p class="alert alert-success"> 100% Purchase Protection &<br>Original Products</p>
<dl class="dlist-align">
  <dt>Total price: </dt>
  <dd class="text-right"><%-- <%=total%> --%></dd>
</dl>
<dl class="dlist-align">
  <dt>Total Tax:</dt>
  <dd class="text-right">18%</dd>
</dl>
<dl class="dlist-align">
  <dt>Tax Amount:</dt>
  <dd class="text-right"><%=0.18*total%></dd>
</dl>
<dl class="dlist-align h4">
  <dt>Total:</dt>
  <dd class="text-right"><strong> <%=0.18*total+total%> </strong></dd>
</dl>
<hr>
<figure class="itemside mb-3">
<aside class="aside"><img src="images/icons/pay-visa.png"></aside>
<div class="text-wrap small text-muted">
Pay By Using VISA Cards 
</div>
</figure>
<figure class="itemside mb-3">
<aside class="aside"> <img src="images/icons/pay-mastercard.png"> </aside>
<div class="text-wrap small text-muted">
Pay By Using Master Cards 
</div>

</figure>
<div>
<form action="apply.jsp">
<input type="hidden" name="date" value=<%=df.format(new Date()) %>>
<input type="hidden" name="invoice" value=<%=random %>>
<button class="btn btn-success" name="apply" value="Billing" role="button" onclick="return deleteask();">Billing</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button class="btn btn-info" name="apply" value="Quotation" role="button" onclick="return deleteask();">Quotation</button>
</form>
</div>

</aside> <!-- col.// -->
</div>


</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->

<!-- ========================= FOOTER ========================= -->
<footer class="section-footer bg-secondary">
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
</div> <!-- row.// -->
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
</section> <!-- //footer-top -->
</div><!-- //container -->
</footer>
<!-- ========================= FOOTER END // ========================= -->

 <script>
        function deleteask(){
         if (confirm('Your request sucessfully sent to admin')){
           return true;
         }else{
           return false;
         }
        }</script>
</body>
</html>