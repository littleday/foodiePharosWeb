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
	
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
		           	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
		           		<span class="icon-bar"></span>
		           		<span class="icon-bar"></span>
		           		<span class="icon-bar"></span>
		           	</button>
		           	<a class="navbar-brand" href="index.jsp">FoodiePharos</a>
		       	</div>
		       	
		       	<div class="navbar-collapse collapse">
	      			<ul class="nav navbar-nav">           
		                <li class="dropdown"><a href ="#" class ="dropdown-toggle" data-toggle="dropdown">Cuisines<span class="caret"></span></a>
		                    <ul class="dropdown-menu">
		                        <li><a href="food/styles.jsp">Styles</a></li>
		                        <li><a href="food/regions.jsp">Regions</a></li>
		                        <li><a href="food/mealpoints.jsp">Meal Points</a></li>
		                        <li><a href="food/tastes.jsp">Tastes</a></li>
		                    </ul>
		                </li>
		                
		                <li><a href="#fakelink">Hot!</a></li>
	          		</ul>
	          		<form class="navbar-form pull-left" role="search">
                <div class="input-group" style="max-width:470px;">
                <ul class="nav navbar-nav">
                    <li><input type="text" class="form-control input-xs" id="SearchKey" placeholder="Search what you like"></li>
					<li><input type="text" class="form-control input-xs" id="SearchPos" placeholder="Where"%></li>
                    <li>
                    <button type="submit" class="btn btn-theme btn-xs">Search</button>
                    </li>
                    </ul>
                </div>
            </form>      
	          		<ul class="nav navbar-nav navbar-right">
	          			<li><a href="#">Sign up</a></li>
	          			
	          			<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Sign in<span class="caret"></span></a>
	          				<ul class="dropdown-menu dropdown-inverse" style="padding: 15px;min-width: 250px;">
	          					<li>
	        						<div class="row">
								        <div class="col-md-12">
								            <form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login_nav">
								                <div class="form-group">
							                    	<label class="sr-only" for="InputEmail1">Email address</label>
					                             	<input type="email" class="form-control" id="InputEmail1" placeholder="Email address" required>
												</div>
						                         
												<div class="form-group">
				                             		<label class="sr-only" for="InputPassword1">Password</label>
				                             		<input type="password" class="form-control" id="InputPassword1" placeholder="Password" required>
												</div>
						                         
												<div class="form-group">                                    
				                             		<label class="checkbox" for="checkbox1">
					                             	<input type="checkbox" value="" id="checkbox1" data-toggle="checkbox">Remember me
					                             	</label>
												</div>
						                         
												<div class="form-group">
					                         		<button type="submit" class="btn btn-primary btn-block">Sign in</button>
												</div>
											</form>
	                     				</div>
			            			</div>
	          					</li>
	          				</ul>
	          			</li>
	          		</ul>
		       	</div>
			</div>
		</div>
		
		<div id="header">
			<div class="container">
				<form class="form-signup" role="form" action="SignupServlet" method="post">
					<h1 class="form-signup-heading">Please sign up</h1>
					<input id="first_name" name="first_name" class="form-control" placeholder="First Name" type="fname" required autofocus/>
					<input id="last_name" name="last_name" class="form-control" placeholder="Last Name" type="lname" required/>
					<input type="email" name="signup_email" class="form-control" id="signup_email" placeholder="Email address" required/>
					<input type="password" name="signup_pwd" class="form-control" id="signup_pwd" placeholder="Password" required/>
					<button id="signup-button" type="submit" class="btn btn-primary btn-block">Sign up</button>
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