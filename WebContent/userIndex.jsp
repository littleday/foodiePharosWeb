<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<head>
<title>FoodiePharos: Find your appetites here!</title>
<meta charset="utf-8">
<meta name="viewport" content="width=1000, initial-scale=1.0, maximum-scale=1.0">
<link rel="shortcut icon" href="includes/images/PFIco.ico">	
<!-- Loading Bootstrap -->
<link href="includes/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- Loading Flat UI -->
<link href="includes/css/flat-ui.css" rel="stylesheet">
<link rel="shortcut icon" href="includes/images/PFIco.ico">

<!-- siimple style -->
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
		    <div class="row">
		        <div class="col-lg-2"></div>
		        <div class = "col-lg-8 text-center"><h1>Find your appetites here</h1></div>
		    </div>
			<div class="row text-center">
			    <div class="col-lg-2"></div>
				<div class="col-lg-8">
					<form class="form-inline search" role="form">
					  <div class="form-group">
					    <input type="text" class="form-control" id="SearchKey" placeholder="Search what you like">
					    <input type="text" class="form-control" id="SearchPos" placeholder="Where"%>
					    <button type="submit" class="btn btn-theme">Search</button>
					  </div>
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