<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="StaffSalary1.jsp">

<CENTER>
 <table border=5 bgcolor="biege" height=600 width=400 >
 <tr><td>Staff Id:</td><td><input type="text" name="staffid" required pattern="[0-9]+">
<tr><td>Staff Name:</td><td><input type="text" name="name" required pattern="[a-zA-Z]+">
<tr><td>No Of Half Days leave:</td><td><input type="text" name="noofhalfdays" required pattern="[0-9]+">
<tr><td>No Of Full Days leave:</td><td><input type="text" name="nooffulldays" required pattern="[0-9]+">
<tr><td>Number of days Worked:</td><td><input type="text" name="noofdaysworked" required pattern="[0-9]+">
<tr><td>totalsalary:</td><td><input type="text" name="totalsalary" required pattern="[0-9]+">
<tr><td>perdaysalary:</td><td><input type="text" name="perdaysalary" required pattern="[0-9]+">
<tr><td>totalnoofDay:</td><td><input type="text" name="totalnoofDay" required pattern="[0-9]+">
<tr><td>Total Salary Of Month:</td><td><input type="text" name="totalsalaryofmonth" required pattern="[0-9]+">
<tr><td>professiona Tax:</td><td><input type="text" name="servicetax" required pattern="[0-9]+">
</table><br><br>
<input type="submit" value="Submit"><br>
<a href="dashboard.jsp" class="btn btn-default btn-block m-t-md">Back</a>
</CENTER>
</body>
</html>