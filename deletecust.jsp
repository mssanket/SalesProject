<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.Modal.*"%>  
<jsp:useBean id="u" class="com.pojo.customer"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int id=Integer.parseInt(request.getParameter("id"));
out.print(id);
BlManager.delete(id);  
response.sendRedirect("customer.jsp");  
%>  
</body>
</html>