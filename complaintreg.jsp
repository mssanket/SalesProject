<%@page import="java.text.*"%>
<%@page import="com.Modal.BlManager"%>
<%@page import="java.util.*"%>
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

#blog {
  top: 80px;
  background-color: #2196F3; /* Blue */
}

#projects {
  top: 140px;
  background-color: #f44336; /* Red */
}

#contact {
  top: 200px;
  background-color: #555 /* Light Black */
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Register Complaint </title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<div class="col-lg-1">
 <div class="col-lg-3 col-sm-4">
	<div class="brand-wrap">
		<a href="custdashboard.jsp">
		<h2 class="logo-text">Home</h2>
		</a>
	</div> <!-- brand-wrap.// -->
	</div>
			
		</div>
<h1><center>Complaint Registration</center></h1><hr>
<%
customer c=(customer)session.getAttribute("cust");
DateFormat df=new SimpleDateFormat("dd/MM/yyyy");

%>







<div class="container">
<form action="form.jsp">
<table class="table" border="2px" align="center">

<div class="form-group">
<div class="col-xs-3">
<input type="hidden" name="customerno" class="form-control" value="<%= c.getId()%>" disabled="disabled">
Customer Name : <input type="text" name="cpname" class="form-control" value="<%= c.getName()%>" disabled="disabled">
Address : <input type="text" name="address" class="form-control" value="<%= c.getAddress()%>" disabled="disabled">
Complaint Date : <input type="text" name="complaintdate" class="form-control" value="<%= df.format(new Date()) %>" disabled="disabled">
Mobile no : <input type="text" name="mobileno" class="form-control" value="<%= c.getContact()%>" disabled="disabled">
Email Id :<input type="text" name="email" class="form-control" value="<%= c.getEmail()%>" disabled="disabled"> 
Product Name : <input type="text" name="productno" placeholder="Enter product name" class="form-control" required>
Complaint Nature : <input type="text"  name="complaintnature" placeholder="Enter your complaint nature" class="form-control" required>
<br>

<input type="submit" class="btn btn-primary" value="Submit"> 
<input type="reset" class="btn btn-danger" value="Cancel">   
</div>
</div>
         
</form>
</div>

<div class="container" >

<h2><b><p align="right">

<center>

<div id="div1" class="fa"></div>

Any Queries?
<br>
<br>
<br>

Get Customer Support Services Through Mail..!
</center> 
</p></b></h2>
</div>
<script>
function smile() {
  var a;
  a = document.getElementById("div1");
  a.innerHTML = "&#xf118;";
  setTimeout(function () {
      a.innerHTML = "&#xf11a;";
    }, 1000);
  setTimeout(function () {
      a.innerHTML = "&#xf119;";
    }, 2000);
  setTimeout(function () {
      a.innerHTML = "&#xf11a;";
    }, 3000);
}
smile();
setInterval(smile, 4000);
</script>
</body>
</html>