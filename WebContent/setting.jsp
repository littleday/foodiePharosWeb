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
			<div class="container">
				<h1 style="margin-top: -70px;">Setting</h1>
				<form class="form" action="SettingServlet" method="post" style="margin-bottom: 20px;">
					<div class="row">
			 			<div class="col-md-2">
			 			</div>
			 			<div class="col-md-6">
		 					<div class="row">
		 						<div class="col-md-6">
				            		<p width="45%" height="26" align="right">Photo:</p> 							
		 						</div>
		 						<div class="col-md-6">
		 							<img src="http://api.randomuser.me/0.3/portraits/men/2.jpg" class="" width="45%">
					            	<input type="file" name="photo" style="width:252px; margin-top: 2px; margin-bottom: 5px;">
		 						</div>
	 						</div>
	 						<div class="row">
		 						<div class="col-md-6">
		            				<p width="45%" height="26" align="right">First Name:</p>											
		 						</div>
		 						<div class="col-md-6">
			                		<input id="first_name" name="first_name" class="form-control" />
		 						</div>
	 						</div>
	 						<div class="row">
		 						<div class="col-md-6">
		 							<p width="45%" height="26" align="right">Last Name:</p>
		 						</div>
		 						<div class="col-md-6">
									<input id="last_name" name="last_name" class="form-control" />
		 						</div>
	 						</div>
	 						<div class="row">
		 						<div class="col-md-6">
	 								<p width="45%" height="26" align="right">Email:</p>	
		 						</div>
		 						<div class="col-md-6">
									<input type="email" name="signup_email" class="form-control" id="signup_email" />
		 						</div>
	 						</div>
	 						<div class="row">
		 						<div class="col-md-6">
									<p width="45%" height="26" align="right">Gender:</p>
		 						</div>
		 						<div class="col-md-6">
		 							<input type="radio" id="sex" name="sex" value="1" checked>Male
					                <input type="radio" id="sex" name="sex" value="2">Female
		 						</div>
	 						</div>
	 						<div class="row">
		 						<div class="col-md-6">
									<p width="45%" height="26" align="right">Current Password:</p>	 						
		 						</div>
		 						<div class="col-md-6">
									<input id="current_pwd" name="current_pwd" class="form-control" type="password" />
		 						</div>
	 						</div>
	 						<div class="row">
		 						<div class="col-md-6">
									<p width="45%" height="26" align="right">New Password:</p>	 							 						
		 						</div>
		 						<div class="col-md-6">
									<input id="new_pwd" name="new_pwd" class="form-control" type="password" />					
		 						</div>
	 						</div>
	 						<div class="row">
		 						<div class="col-md-6">
									<p width="45%" height="26" align="right">Repest Password:</p>	 							 						
		 						</div>
		 						<div class="col-md-6">
									<input id="repeat_pwd" name="repeat_pwd" class="form-control" type="password" />
		 						</div>
	 						</div>	 						
	 						<hr>
	 						<div class="row">
	 							<div class="col-md-4">
			 					</div>
		 						<div class="col-md-4">
									<button id="change-pwd-button" type="submit" class="btn btn-primary btn-block">Save</button>		
		 						</div>
		 						<div class="col-md-4">
									<button id="change-pwd-button" type="reset" class="btn btn-primary btn-block">Reset</button>
		 						</div>
	 						</div>
						</div>
						<div class="col-md-4">
			 			</div>
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