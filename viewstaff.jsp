<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.Modal.BlManager,com.pojo.Staffdetails,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ page errorPage="error.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> View Staff</title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
</head>
<body>

<%  
BlManager bl= new BlManager();
List<Staffdetails> list=bl.getAllRecords();  
request.setAttribute("list",list);  
%>  
<br/><a class="btn btn-info" href="AddStaff.jsp">Add New Staff</a>
&nbsp;&nbsp;&nbsp;&nbsp;
<a  class="btn btn-info" href="dashboard.jsp">Home</a> 
<br>
<br>
<div class="form-group row">
<div class="col-xs-3">
<input class="form-control" id="myInput" onkeyup="myFunction()" type="text" placeholder="Search by name..">
</div>
</div>
  <div class="table-responsive">
<table id="myTable" class="table table-hover table-bordered table-striped"   width="90%">  
<tr>
<td>Staffid</td>
<td>Name</td>
<td>Mobile Number</td>
<td>Designation</td>
<td>Email </td>
<td>Staff Full Details</td>
</tr>
 
<c:forEach items="${list}" var="u">  

<tr>
		<td>${u.getStaffid()}</td>
		<td>${u.getFname()} ${u.getMname()} ${u.getLname()}</td>
		<td>${u.getMobileNo()}</td>
		<td>${u.getDesignation()}</td>
		<td>${u.getEmail()}</td>
<td><a href="ViewStaffDetails.jsp?Staffid=${u.getStaffid()}">Details</a></td>  
</tr>  
</c:forEach>  
</table>  
</div>
<!-- jquery -->
<script>
function myFunction() {
  // Declare variables 
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    } 
  }
}
</script>

<!-- scripts -->
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>