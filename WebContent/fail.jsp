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
		
		<script type="text/javascript">
		setTimeout(function(){
			window.history.back();
			},3000);
		
		</script>
	</head>
	
	<body>
		<%@include file="/part/navbar.jsp" %>
		
        <div id="header">
		    <div class="container">
		        <div class="row">
		            <div class="col-lg-2"></div>
		            <div class = "col-lg-8 text-center"><h1><%=request.getAttribute("failMessage") %></h1></div>
		        </div>
			    <div class="row text-center">
			        <div class="col-lg-2"></div>
				    <div class="col-lg-8">
					    </form>					
			        </div>			    
		 	    </div>
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