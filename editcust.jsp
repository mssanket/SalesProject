<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.Modal.*"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="c" class="com.pojo.customer"></jsp:useBean>  
<jsp:setProperty property="*" name="c"/>  

<%  
BlManager b=new BlManager();
b.update(c);
response.sendRedirect("customer.jsp");  
%>
</body>
</html>