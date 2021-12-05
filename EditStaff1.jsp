<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.Modal.BlManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>  
<%  
int staffid=Integer.parseInt(request.getParameter("Staffid")); 
String currentaddress=request.getParameter("currentaddress");
String permanentaddress=request.getParameter("permanentaddress"); 
String city=request.getParameter("city"); 
String state=request.getParameter("state");
String pin=request.getParameter("pin");
String mobileNo=request.getParameter("mobileNo");
String altmobileNo=request.getParameter("altmobileNo");
String maritalstatus=request.getParameter("maritalstatus");
String email=request.getParameter("email");

BlManager bl= new BlManager();

bl.Update(staffid, email, mobileNo, altmobileNo, currentaddress, permanentaddress, pin, city, state, maritalstatus);
response.sendRedirect("viewstaff.jsp");  
%>  
</body>
</html>