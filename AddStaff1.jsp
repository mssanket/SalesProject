<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.Modal.BlManager"%>  
    <%-- <%@ page errorPage="error.jsp" %> --%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<jsp:useBean id="u" class="com.pojo.Staffdetails">  
</jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
BlManager bl= new BlManager();
int status=bl.SaveStaff(u);  
if(status>0){  
response.sendRedirect("viewstaff.jsp");  
}else{  
response.sendRedirect("error.jsp");  
}  
%>  
</body>
</html>