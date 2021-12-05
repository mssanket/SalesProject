<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.Modal.BlManager,com.pojo.Staffdetails,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>StaffDetails</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
</head>
<body>

<%  
int staffid=Integer.parseInt(request.getParameter("Staffid"));  
BlManager bl= new BlManager();
Staffdetails u=bl.getStaffRecordById(staffid);
session.setAttribute("Staffid", staffid);
%>


<h1>Staff Details</h1>
 
<a class="btn btn-info" href="viewstaff.jsp">Back</a> 
<button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">Edit</button> 
<a class="btn btn-info" href="DeleteStaff.jsp">Delete</a>

<input type="hidden" name="Staffid" value="<%=u.getStaffid()%>"/>
<br>
<hr>
<div  class="container">
<h2>Personal Information</h2>
<table class="table table-bordered table-hover">
    <thead>
      <tr>
        <th>Firstname</th>
         <th>Middlename</th>
        <th>Lastname</th>
        <th>Mobile No</th> 
         <th>Alternate No</th>  
          <th>Email</th>   
       	<th>Gender</th>
        <th>Marital status</th>
         <th>Current Address</th>
         <th>Permanent Address</th>
         <th>Pincode</th>
         <th>DOB</th>
         <th>City</th>
         <th>State</th>
         <th>Country</th>
         <th>Adhar No</th>
         <th>Pan No</th> 
         
           
      </tr>
      </thead>
      <!-- Table data -->
      <tbody>
      <tr>
      <td><%=u.getFname()%></td>
      <td> <%=u.getMname()%></td>
       <td><%=u.getLname()%></td>
       <td><%=u.getMobileNo()%></td>
       <td><%=u.getAltmobileNo()%></td> 
       <td><%=u.getEmail()%></td> 
       <td><%=u.getGender()%></td>
       <td><%=u.getMaritalstatus()%></td>
       <td><%=u.getCurrentaddress() %></td>
       <td><%=u.getPermanentaddress()%></td>
       <td><%=u.getPin()%></td>
       <td><%=u.getDob()%></td>
       <td><%=u.getCity()%></td>
       <td><%=u.getState()%></td>
       <td><%=u.getCountry()%></td>
       <td><%=u.getAadhar()%></td>
       <td><%=u.getPan()%></td> 
       
      </tr>
      </tbody>
</table>
</div>
<hr>
<div  class="container">
<h2>Education Information</h2>
<table class="table table-bordered table-hover">
    <thead>
      <tr>
        <th>10th Passout Year</th>
         <th>10th Marks (%)</th>
       <th>12th Passout Year</th>
         <th>12th Marks (%)</th>
       <th>Degree Passout Year</th>
         <th>Degree Marks (%)</th>
              
      </tr>
      </thead>
      <!-- Table data -->
      <tbody>
      <tr>
      <td><%=u.getSscyearpassout()%></td>
      <td> <%=u.getSscmarks()%></td>
       <td><%=u.getHscDipyearpassout()%></td>
       <td><%=u.getHscDipmarks()%></td>
       <td><%=u.getDegreeyearpassout()%></td> 
       <td><%=u.getDegreemarks()%></td>       
      </tr>
      </tbody>
      </table>
      </div>
      <!-- Education Data -->
      
      
      

<hr>
<div  class="container">
<h2>Previous Work Details</h2>
<table class="table table-bordered table-hover">
    <thead>
      <tr>
        <th>Last Company</th>
         <th>Designation</th>
       <th>Salary</th>
         <th>No of years</th>
       
              
      </tr>
      </thead>
      <!-- Table data -->
      <tbody>
      <tr>
      <td><%=u.getLastCompany()%></td>
      <td> <%=u.getDesignation()%></td>
       <td><%=u.getSalary()%></td>
       <td><%=u.getNoofyears()%></td>   
      </tr>
      </tbody>
      </table>
      </div>



<div class="container">
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Add Product</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Update Details</h4>
        </div>
        <div class="modal-body">
         <div class="container">
  <div class="col-xs-4">
<form  class="form-group" action="EditStaff1.jsp" enctype="multipart/form-data">
<div class="form-group">
<label>Name:</label>
<input type="text" class="form-control" value="<%=u.getFname() %>" disabled>
</div>
<div class="form-group">
<label>Email:</label>
<input type="text" class="form-control" value="<%=u.getEmail()%>" required>
</div>
<div class="form-group">
<label>Mobile No:</label>
<input type="text" class="form-control" name="mobileNo"  placeholder="Enter Mobile Number" value="<%=u.getMobileNo() %>" required  pattern="[789][0-9]{9}">
</div>
<div class="form-group">
<label>Alternate Mobile No:</label>
<input type="text" name="altmobileNo" id="email" placeholder="Enter Alternate Mobile Number"value="<%=u.getAltmobileNo() %>" required  pattern="[789][0-9]{9}">
</div>
<div class="form-group">
<label>Current Address:</label>
<input type="text" name="currentaddress" id="email" placeholder="Enter Current Address" value="<%=u.getCurrentaddress()%>" required>
</div>
<div class="form-group">
<label>Permanent Address:</label>
<input type="text" name="permanentaddress" id="permanentaddress" placeholder="Enter Permanent Address"value="<%=u.getPermanentaddress() %>" required>
</div>
<div class="form-group">
<label>Marital Status:</label>
<select class="form-control"  name="maritalstatus">
<option value="single">Single</option>
<option value="Married">Married</option>
<option value="Divorced">Divorced</option>
<option value="Widowed">Widowed</option>                           
</select>
</div>
<div class="form-group">
<label>Pin Code:</label>
<input type="text" name="pin" id="pin" placeholder="Enter Pin Code"value="<%=u.getPin() %>" required>
</div>
<div class="form-group">
<label>City:</label>
<input type="text" name="city" id="city" placeholder="Enter City"value="<%=u.getCity() %>" required>
</div>
<div class="form-group">
<label>State:</label>
<input type="text" name="state" id="state" placeholder="Enter State"value="<%=u.getState() %>" required>
</div>
<input type="submit" class="btn btn-success" value="Save">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset"  class="btn btn-danger"value="Reset">
</form>
</div>
</div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>
 <!-- scripts -->
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
 
</body>
</html>