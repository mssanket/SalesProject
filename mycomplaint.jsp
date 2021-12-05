<%@page import="com.Modal.BlManager"%>
<%@page import="java.util.List"%>
<%@page import="com.pojo.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
/* Style the links inside the sidenav */
#mySidenav a {
  position: absolute; /* Position them relative to the browser window */
  left: -80px; /* Position them outside of the screen */
  transition: 0.3s; /* Add transition on hover */
  padding: 15px; /* 15px padding */
  width: 100px; /* Set a specific width */
  text-decoration: none; /* Remove underline */
  font-size: 20px; /* Increase font size */
  color: white; /* White text color */
  border-radius: 0 5px 5px 0; /* Rounded corners on the top right and bottom right side */
}

#mySidenav a:hover {
  left: 0; /* On mouse-over, make the elements appear as they should */
}

/* The about link: 20px from the top with a green background */
#about {
  top: 20px;
  background-color: #f44336;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Complaints</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<h1 align="center">My Complaints</h1>
<div class="col-lg-1">
 <div class="col-lg-3 col-sm-4">
	<div class="brand-wrap">
		<a href="custdashboard.jsp">
		<h2 class="logo-text">Home</h2>
		</a>
	</div> <!-- brand-wrap.// -->
	</div>
			
		</div>
<br><br>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<%
customer c=(customer)session.getAttribute("cust"); 
BlManager bl= new BlManager();
int Customerno= c.getId();
List<complaint> list=bl.getAllComplaintById(Customerno);
request.setAttribute("list",list);
%>
<div class="container">
<div class="form-group row">
<div class="col-xs-3">
<input class="form-control" id="myInput" type="text" placeholder="Search..">
</div>
</div>
</div>

  <div class="container">
<table  class="table table-hover table-bordered table-striped"   width="90%">  
<tr>
<th>Product Number</th>
<th>Complaint Number</th>
<th>Complaint Date</th>
<th>Complaint Nature</th> 
<tr></tr>
<c:forEach items="${list}" var="c1">  
 <tbody id="myTable">
<tr>
<td>${c1.getProductno()}</td>
<td>${c1.getComplaintrefno()}</td>
<td>${c1.getComplaintdate()}</td>
<td>${c1.getComplaintnature()}</td>
</tr>
</c:forEach> 
</table>  
</div>
  <script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
</body>
</html>