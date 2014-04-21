<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
	<head>
		<meta charset="utf-8">	
       <title>FoodiePharos: Find your appetites here!</title>
		<meta name="viewport" content="width=1000, initial-scale=1.0, maximum-scale=1.0">
		<link rel="shortcut icon" href="includes/images/PFIco.ico">	
		<!-- Loading Bootstrap -->
		<link href="includes/bootstrap/css/bootstrap.css" rel="stylesheet">
		
		<!-- Loading Flat UI -->
		<link href="includes/css/flat-ui.css" rel="stylesheet">
		
		<!-- Custom styles for this page -->
		<link href="includes/css/style.css" rel="stylesheet">
		<link href="includes/css/signup.css" rel="stylesheet">
		
		<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
		<!--[if lt IE 9]>
		<script src="includes/js/html5shiv.js"></script>
		<script src="includes/js/respond.min.js"></script>
		<script src="includes/js/bootstraps.min.js"></script>
		<![endif]-->
	</head>

	<body>
		<%@include file="/part/navbar.jsp" %>
	
		<div id="header">
			<div class="container" style="width: 30%;">
				<form class="form-signup text-center" role="form" action="SignupServlet" method="post">
					<h1 class="form-signup-heading" style="margin-top: 20px;">Please sign up</h1>
                    <div class="form-group">					
						<input id="first_name" name="first_name" class="form-control" placeholder="First Name" type="fname" required autofocus/>
					</div>
                    <div class="form-group">					
						<input id="last_name" name="last_name" class="form-control" placeholder="Last Name" type="lname" required/>
					</div>
                    <div class="form-group">					
						<input type="email" name="signup_email" class="form-control" id="signup_email" placeholder="Email address" required/>
					</div>
                    <div class="form-group">					
						<input type="password" name="signup_pwd" class="form-control" id="signup_pwd" placeholder="Password" required/>
					</div>
                    <div class="form-group">					
						<button id="signup-button" type="submit" class="btn btn-primary btn-block">Sign up</button>
					</div>
				</form>
			</div>
		</div>
			
		<div id="footer">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-lg-offset-3">
						<p class="copyright">Copyright &copy; 2014 - FoodiePharos</p>
					</div>
				</div>		
			</div>	
		</div>
		
		<script src="includes/js/jquery.placeholder.js"></script>
		<script src="includes/js/flatui-checkbox.js"></script>
		<script src="includes/js/application.js"></script>
		<script src="includes/js/jquery-1.8.3.min.js"></script>
		<script src="includes/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="includes/js/jquery.ui.touch-punch.min.js"></script>
		<script src="includes/js/bootstrap.min.js"></script>
		<script src="includes/js/bootstrap-select.js"></script>
		<script src="includes/js/bootstrap-switch.js"></script>
		<script src="includes/js/flatui-checkbox.js"></script>
		<script src="includes/js/flatui-radio.js"></script>
		<script src="includes/js/jquery.tagsinput.js"></script>
		<script src="includes/js/jquery.placeholder.js"></script>
	   
	 </body> 
</html>