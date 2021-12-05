<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.text.*"%>
    <%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Staff Attendance</title>

	
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="assets/css/staffattendance.css"/>
</head>
<body>
<%DateFormat df=new SimpleDateFormat("dd/MM/yyyy"); %>
<div class ="container-fluid bg">
  
   <div class="row">
   	  <div class="col-md-4 col-sm-4 col-xs-12"></div>
	  <div class="col-md-4 col-sm-4 col-xs-12" id="login">
		 <!-- form starts here -->
		 <form class="form-container" action="StaffAttendance1.jsp" id="staff_form">
		<center> <h1 style="color:black"><b>Staff Attendance</b></h1></center>
		 
		 <div class="form-group">
			<label for="Name" style="color:white"><b>Employee Id : </b></label>
		 <div class ="input-container">			
			<input type="text" class ="form-control input-box" name="staffid" placeholder="Staff Id" value="" required/>
		 </div>
		 </div>
		 
		 <div class="form-group">
			<label for="Name" style="color:white"><b>Employee Name : </b></label>
			 <div class ="input-container">
			<input type="text" class ="form-control input-box" name="applicantname" placeholder="Enter Name" value="" required pattern="[A-Za-z]+"/>
			</div>
		 </div>
		 
		 <div class="form-group">
			<label for="ComingTime" style="color:white"><b>Entry Time : </b></label>
			<div class ="input-container">
			 
			<input type="time"  class ="form-control input-box" name="comingtime" value="time"/>
			</div>
		 </div>
		 
		  <div class="form-group">
			<label for="GoingTime" style="color:white"><b>Exit Time : </b></label>
			<div class ="input-container">
			 
			<input type="time"  class ="form-control input-box" name="goingtime" value="time"/>
			</div>
		 </div>
		 <div class="form-group">
			<label for="Date" style="color:white"><b>Date : </b></label>
			<div class ="input-container">
			<input type="text"  class ="form-control input-box" name="date" value="<%= df.format(new Date()) %>" disabled="disabled"/>
			</div>
		 </div>
		 
		
		 <div class="form-group">
			<label  style="color:white"><b>Attendance Status : </b></label>
			<div class ="input-container">
				<select name="attendencestatus" class="form-control">
				<option >Select</option>
				<option value="Present">Present</option>
                <option value="Abset">Absent</option>
                <option value="Late">Late</option>
			</select>
		 </div>
		 </div>
		 <br>
		 
		 <button type="submit" value="Submit" class="btn btn-success btn-block" onclick="sweetalert()">Submit</button>	
		 <a href="dashboard.jsp" class="btn btn-default btn-block">Back</a>
		 </form>
	  </div>
   	  <div class="col-md-4 col-sm-4 col-xs-12"></div>
   </div>
   
</div>

</body>
<!-- scripts -->
<script src="js/jquery-3.2.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<script src="js/bootstrap.min.js"></script>
</html>