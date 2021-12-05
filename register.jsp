<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign in</title>
<link href="img/logo.png" rel="shortcut icon"/>
<link href="assets/css/regStylesheet.css" rel="stylesheet" type="text/css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
</head>
<body>
<div class ="container-fluid bg">
  
   <div class="row">
   	  <div class="col-md-4 col-sm-4 col-xs-12"></div>
	  <div class="col-md-4 col-sm-4 col-xs-12" id="login">
		 <!-- form starts here -->
		 <form class="form-container" action="${pageContext.request.contextPath}/SaveServ" method="post"  id="register_form">
		<center> <h1 style="color:white"><b>Register</b></h1></center>
		 
		 <div class="form-group">
			<label for="Name" style="color:white"><b>Name</b></label>
		 <div class ="input-container">
			<i class="glyphicon glyphicon-user icon"></i>
			<input type="text" class ="form-control input-box" name="name" placeholder="Name" required pattern="[a-zA-Z]+">
		 </div>
		 </div>
		 
		 <div class="form-group">
			<label for="email" style="color:white"><b>Email</b></label>
			 <div class ="input-container">
			 <i class="glyphicon glyphicon-envelope icon"></i>
			<input type="email" class ="form-control input-box" name="email" placeholder="Email" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$">
			</div>
		 </div>
		 
		<div class="form-group">
			<label for="address" style="color:white"><b>Address</b></label>
		 <div class ="input-container">
			<i class="glyphicon glyphicon-user icon"></i>
			<input type="text" class ="form-control input-box" name="address" placeholder="Complete Address" required >
		 </div>
		 </div>
		 
		 <div class="form-group">
			<label for="contact" style="color:white"><b>Contact</b></label>
		 <div class ="input-container">
			<i class="glyphicon glyphicon-user icon"></i>
			<input type="text" class ="form-control input-box" name="contact" placeholder="Mobile Number" required pattern="[789][0-9]{9}">
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
		 <a href="index.jsp" class="btn btn-default btn-block">Back</a>
		 </form>
	  </div>
   	  <div class="col-md-4 col-sm-4 col-xs-12"></div>
   </div>
</div>
	
		
<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>

	<script>
	$(document).ready(function() {
	    $('#register_form').bootstrapValidator({
	        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
	        feedbackIcons: {
	            valid: 'glyphicon glyphicon-ok',
	            invalid: 'glyphicon glyphicon-remove',
	            validating: 'glyphicon glyphicon-refresh'
	        },
	        fields: {
	            name: {
	                validators: {
	                        stringLength: {
	                        min: 2,
	                    },
	                        notEmpty: {
	                        message: 'Please enter your First Name'
	                    }
	                }
	            },
	             
				 
				 pass: {
	                validators: {
	                     stringLength: {
	                        min: 8,
	                    },
	                    notEmpty: {
	                        message: 'Please enter your Password'
	                    }
	                }
	            },
				
	            uname: {
	                validators: {
	                    notEmpty: {
	                        message: 'Please enter your Email Address'
	                    },
	                    emailAddress: {
	                        message: 'Please enter a valid Email Address'
	                    }
	                }
	            },
	            
				 
	                }
	            
	        })
	        .on('success.form.bv', function(e) {
	            $('#success_message').slideDown({ opacity: "show" }, "slow") // Do something ...
	                $('register_form').data('bootstrapValidator').resetForm();

	            // Prevent form submission
	            e.preventDefault();

	            // Get the form instance
	            var $form = $(e.target);

	            // Get the BootstrapValidator instance
	            var bv = $form.data('bootstrapValidator');

	            // Use Ajax to submit form data
	            $.post($form.attr('action'), $form.serialize(), function(result) {
	                console.log(result);
	            }, 'json');
	        });
	});
	
	function sweetalert(){
		swal("Welcome!", "Succefully Registered", "success")
	}
	</script>


</body>
</html>