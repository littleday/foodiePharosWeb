<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<head>
	<title>FoodiePharos: Find your appetites here!</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=1000, initial-scale=1.0, maximum-scale=1.0">
	<link rel="shortcut icon" href="../includes/images/PFIco.ico">
	
	<!-- Loading Bootstrap -->
	<link href="../includes/bootstrap/css/bootstrap.css" rel="stylesheet">
	
	<!-- Loading Flat UI -->
	<link href="../includes/css/flat-ui.css" rel="stylesheet">
	
	<!-- Custom styles for this page -->
	<link href="../includes/css/style.css" rel="stylesheet">
	
	<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
	<!--[if lt IE 9]>
	<script src="../includes/js/html5shiv.js"></script>
	<script src="../includes/js/respond.min.js"></script>
	<script src="../includes/js/bootstraps.min.js"></script>
	<![endif]-->
</head>

<body>

	<%@include file="/part/navbar.jsp" %>

	<div class="container">
	
		<div id="header">
			<div class="container">
			    <div class = "row">
				 	<!-- Side bar -->
				    <div class="col-lg-3 col-md-3">
				        <h4 class="brand">FoodiePharos Map</h4>
				            <ul class="nav nav-stacked" id="sidebar">
				                <li><a href = "styles.jsp"><strong>Styles</strong></a></li>
				                <li><a href = "regions.jsp"><strong>Regions</strong></a></li>
				                <li><a href = "mealpoints.jsp"><strong>Meal Points</strong></a></li>
				                <li><a href = "tastes.jsp"><strong>Tastes</strong></a></li>
				            </ul>  
		           </div>
		           <div class="col-lg-9 col-md-9">
		           <!-- Page content -->
		           <h3 class="title">Cursines</h3>
		           <p class="lead">Want to taste every dishes in the world? FoodiesPharos is your guide to meet fascinating cursines!</p>
		               <div class="row">
		                   <div class="col-lg-1 col-md-1"></div>    
		                   <div class="col-lg-4 col-md-4">
		                       <div class="tile">
		                           <img src="img/1.png" alt="" class="tile-image big-illustration">
		                           <h3 class="tile-title"><i class="glyphicon glyphicon-heart"></i>Styles</h3>
		                           <p>What type?</p>
		                           <span class="label label-warning"><a href="../result.jsp?searchKey=fusion&searchPos=boston">Fusion</a></span>
		                           <span class="label label-primary"><a href="../result.jsp?searchKey=haute&searchPos=boston">Haute</a></span>
		                           <span class="label label-success"><a href="../result.jsp?searchKey=nouvelle&searchPos=boston">Nouvelle</a></span>
		                           <span class="label label-info"><a href="../result.jsp?searchKey=vegetarian&searchPos=boston">Vegetarian</a></span>
		                           <span class="label label-default"><a href="styles.jsp">More</a></span>
		                       </div>
		                   </div>
		                   <div class="col-lg-1 col-md-1"></div>                
		                   <div class="col-lg-4 col-md-4">
		                       <div class="tile">
		                           <img src="img/2.png" alt="" class="tile-image big-illustration">
		                           <h3 class="tile-title"><i class="glyphicon glyphicon-heart"></i>Regions</h3>
		                           <p>From where?</p>
		                           <span class="label label-warning"><a href="../result.jsp?searchKey=american&searchPos=boston">American</a></span>
		                           <span class="label label-primary"><a href="../result.jsp?searchKey=asian&searchPos=boston">Asian</a></span>
		                           <span class="label label-success"><a href="../result.jsp?searchKey=european&searchPos=boston">European</a></span>
		                           <span class="label label-info"><a href="../result.jsp?searchKey=oceanian&searchPos=boston">Oceanian</a></span>
		                           <span class="label label-default"><a href="regions.jsp">More</a></span>
		                       </div>
		                    </div>
		                </div>
		                <div class="row">
		                <div class="col-lg-1 col-md-1"></div>    
		                <div class="col-lg-4 col-md-4">
		                    <div class="tile">
		                        <img src="img/3.png" alt="" class="tile-image big-illustration">
		                        <h3 class="tile-title"><i class="glyphicon glyphicon-heart"></i>Meal Time</h3>
		                        <p>At when ?</p>
		                        <span class="label label-warning"><a href="../result.jsp?searchKey=breakfast&searchPos=boston">Breakfast</a></span>
		                        <span class="label label-primary"><a href="../result.jsp?searchKey=lunch&searchPos=boston">Lunch</a></span>
		                        <span class="label label-success"><a href="../result.jsp?searchKey=tea&searchPos=boston">Tea</a></span>
		                        <span class="label label-info"><a href="../result.jsp?searchKey=dinner&searchPos=boston">Dinner</a></span>
		                        <span class="label label-default"><a href="mealpoints.jsp">More</a></span>
		                    </div>
		                </div>
		                <div class="col-lg-1 col-md-1"></div>    
		                <div class="col-lg-4 col-md-4">
		                    <div class="tile">
		                        <img src="img/4.png" alt="" class="tile-image big-illustration">
		                        <h3 class="tile-title"><i class="glyphicon glyphicon-heart"></i>Tastes</h3>
		                        <p>Yummy?</p>
		                        <span class="label label-warning"><a href="../result.jsp?searchKey=sweet&searchPos=boston">Sweet</a></span>
		                        <span class="label label-primary"><a href="../result.jsp?searchKey=spicy&searchPos=boston">Spicy</a></span>
		                        <span class="label label-success"><a href="../result.jsp?searchKey=special&searchPos=boston">Special</a></span>
		                        <span class="label label-info"><a href="../result.jsp?searchKey=light&searchPos=boston">Light</a></span>
		                        <span class="label label-default"><a href="tastes.jsp">More</a></span>
		                    </div>
		                </div>
		                </div><!-- End row-->                
		           </div><!-- End page content-->           
				</div><!-- End row-->
			</div><!-- End container-->
		</div><!-- End header-->
	
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
	
    <script src="../includes/js/jquery.placeholder.js"></script>
    <script src="../includes/js/flatui-checkbox.js"></script>
    <script src="../includes/js/application.js"></script>
    <script src="../includes/js/jquery-1.8.3.min.js"></script>
    <script src="../includes/js/jquery-ui-1.10.3.custom.min.js"></script>
    <script src="../includes/js/jquery.ui.touch-punch.min.js"></script>
    <script src="../includes/js/bootstrap.min.js"></script>
    <script src="../includes/js/bootstrap-select.js"></script>
    <script src="../includes/js/bootstrap-switch.js"></script>
    <script src="../includes/js/flatui-checkbox.js"></script>
    <script src="../includes/js/flatui-radio.js"></script>
    <script src="../includes/js/jquery.tagsinput.js"></script>
  </body>
</html>