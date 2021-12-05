<!DOCTYPE html>
<%@ page import="com.pojo.Users" %>
<html>
<head>
      
        <!-- Title -->
        <title>Admin Login</title>
        <link href="img/logo.png" rel="shortcut icon"/>
        <meta content="width=device-width, initial-scale=1" name="viewport"/>
        <meta charset="UTF-8">
        <meta name="description" content="Admin Dashboard Template" />
        <meta name="keywords" content="admin,dashboard" />
        <meta name="author" content="Steelcoders" />
        
        <!-- Styles -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600' rel='stylesheet' type='text/css'>
        <link href="assets/plugins/pace-master/themes/blue/pace-theme-flash.css" rel="stylesheet"/>
        <link href="assets/plugins/uniform/css/uniform.default.min.css" rel="stylesheet"/>
        <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/fontawesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/line-icons/simple-line-icons.css" rel="stylesheet" type="text/css"/>	
        <link href="assets/plugins/offcanvasmenueffects/css/menu_cornerbox.css" rel="stylesheet" type="text/css"/>	
        <link href="assets/plugins/waves/waves.min.css" rel="stylesheet" type="text/css"/>	
        <link href="assets/plugins/switchery/switchery.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/3d-bold-navigation/css/style.css" rel="stylesheet" type="text/css"/>	
        <link href="assets/css/regStylesheet.css" rel="stylesheet" type="text/css">
        
        <!-- Theme Styles -->
        <link href="assets/css/modern.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/themes/green.css" class="theme-color" rel="stylesheet" type="text/css"/>
        <link href="assets/css/custom.css" rel="stylesheet" type="text/css"/>
        
        <script src="assets/plugins/3d-bold-navigation/js/modernizr.js"></script>
        <script src="assets/plugins/offcanvasmenueffects/js/snap.svg-min.js"></script>
        
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        
    </head>
    <body class="page-login">
       <div class ="container-fluid bg">
  
   <div class="row">
   	  <div class="col-md-4 col-sm-4 col-xs-12"></div>
	  <div class="col-md-4 col-sm-4 col-xs-12" id="login">
	  
	  <%
	  Users u=(Users)session.getAttribute("user");
	  if(u!=null)
	  {
		  
		  RequestDispatcher rd=request.getRequestDispatcher("/dashboard.jsp");
		  rd.forward(request, response);
	  }  
	  else
	  { 
	  %>
		 <!-- form starts here -->
		 <form class="form-container" method="post" action="${pageContext.request.contextPath}/UserServ" id="register_form">
		<center> <h1 style="color:white"><b>Admin Login</b></h1></center>
		 
		 
		 <div class="form-group">
			<label for="Name" style="color:white"><b>Email</b></label>
			 <div class ="input-container">
			 <i class="glyphicon glyphicon-envelope icon"></i>
			<input type="email" class ="form-control input-box" name="email" placeholder="Email" required>
			</div>
		 </div>
		 
		
		 
		 <div class="form-group">
			<label for="InputPassword1" style="color:white"><b>Password</b></label>
			<div class ="input-container">
			 <i class="glyphicon glyphicon-eye-close icon"></i>
			<input type="password" class ="form-control input-box" name="password" placeholder="Password" required>
			</div>
		 </div>
		 
		 <button type="submit" value="Submit" class="btn btn-success btn-block" onclick="sweetalert()">Submit</button>	
		  <a href="index.jsp" class="btn btn-default btn-block m-t-md">Back</a>
                                    <a href="forgot.html" class="display-block text-center m-t-xs text-sm" style="color:white">Forgot Password?</a>
                                    </form>
                                    	 	 <%
	  }
%>
	  </div>
   	  <div class="col-md-4 col-sm-4 col-xs-12"></div>
   </div>
</div>
	
		
<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
       
	

        <!-- Javascripts -->
        <script src="assets/plugins/jquery/jquery-2.1.4.min.js"></script>
        <script src="assets/plugins/jquery-ui/jquery-ui.min.js"></script>
        <script src="assets/plugins/pace-master/pace.min.js"></script>
        <script src="assets/plugins/jquery-blockui/jquery.blockui.js"></script>
        <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script>
        <script src="assets/plugins/switchery/switchery.min.js"></script>
        <script src="assets/plugins/uniform/jquery.uniform.min.js"></script>
        <script src="assets/plugins/offcanvasmenueffects/js/classie.js"></script>
        <script src="assets/plugins/waves/waves.min.js"></script>
        <script src="assets/js/modern.min.js"></script>
        
    </body>

<!-- Mirrored from stacksthemes.com/modern/admin1/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 02 Apr 2019 10:20:48 GMT -->
</html>