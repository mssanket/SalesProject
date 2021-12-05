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
BlManager bl= new BlManager();
int id=(Integer)session.getAttribute("Staffid");
int i=bl.Delete(id);

response.sendRedirect("viewstaff.jsp");  
%>  
<a href="viewstaff.jsp">Back</a>
</body>
</html>