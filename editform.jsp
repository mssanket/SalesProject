
<%@page import="com.pojo.*,com.Modal.*"%>
<!DOCTYPE html>
<html>
    
<!-- Mirrored from stacksthemes.com/modern/admin1/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 02 Apr 2019 10:20:48 GMT -->
<head>
        
        <!-- Title -->
        <title>Edit Customer</title>
        
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
    
    <%  
String id=request.getParameter("id");  
customer c=BlManager.getRecordById(Integer.parseInt(id));  
%>  
        <main class="page-content">
            <div class="page-inner">
                <div id="main-wrapper">
                    <div class="row">
                        <div class="col-md-3 center">
                            <div class="login-box">
                                <a href="index.html" class="logo-name text-lg text-center"><h1>Edit Customers</h1></a>
                                
                                <form class="m-t-md" action="${pageContext.request.contextPath}/editcust.jsp">
                                <input type="hidden" name="id" value="<%=c.getId() %>"/>
                                    <div class="form-group">
                                        Name : <input type="text" class="form-control" name="name" value="<%= c.getName()%>" required="required">
                                    </div>
                                    <div class="form-group">
                                        Email : <input type="email" class="form-control" name="email" value="<%= c.getEmail()%>" required="required">
                                    </div>
                                    <div class="form-group">
                                        Address : <input type="text" class="form-control" name="address" value="<%= c.getAddress()%>" required="required">
                                    </div>
                                    <div class="form-group">
                                        Contact : <input type="text" class="form-control" name="contact" maxlength="10" value="<%= c.getContact()%>" required="required" pattern="[789][0-9]{9}">
                                    </div>
                                    <div class="form-group">
                                        Password : <input type="text" class="form-control" name="password" value="<%= c.getPassword()%>" required="required">
                                    </div>
                                    <button type="submit" class="btn btn-success btn-block">Submit</button>
                                    <a href="customer.jsp" class="btn btn-default btn-block m-t-md">Back</a>
                                </form>
                                
                            </div>
                        </div>
                    </div><!-- Row -->
                </div><!-- Main Wrapper -->
            </div><!-- Page Inner -->
        </main><!-- Page Content -->
	

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