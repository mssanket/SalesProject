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

<jsp:useBean id="a" class="com.pojo.Attendence">  
</jsp:useBean>  
<jsp:setProperty property="*" name="a"/>  
<%
BlManager bl= new BlManager();
int status=bl.SaveStaffAttend(a);  
if(status>0){  
response.sendRedirect("dashboard.jsp");  
}else{  
response.sendRedirect("error.jsp");  
}  
%> 
</body>
</html>