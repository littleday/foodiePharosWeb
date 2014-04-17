<!DOCTYPE html>
<head>
<title>FoodiePharos: Find your appetites here!</title>
<meta charset="utf-8">
<meta name="viewport" content="width=1000, initial-scale=1.0, maximum-scale=1.0">
<link rel="shortcut icon" href="includes/images/PFIco.ico">	
<!-- Loading Bootstrap -->
<link href="../includes/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- Loading Flat UI -->
<link href="../includes/css/flat-ui.css" rel="stylesheet">
<link rel="shortcut icon" href="../includes/images/PFIco.ico">

<!-- siimple style -->
<link href="../includes/css/style.css" rel="stylesheet">
<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
<!--[if lt IE 9]>
<script src="../includes/js/html5shiv.js"></script>
<script src="../includes/js/respond.min.js"></script>
<script src="../includes/js/bootstraps.min.js"></script>
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
            <a class="navbar-brand" href="../index.jsp">FoodiePharos</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">           
                <li class="dropdown"><a href ="#" class ="dropdown-toggle" data-toggle="dropdown">Cuisines<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                       <li><a href="cursines.jsp">Overview</a></li>
                       <li class="divider"></li>
		                <li><a href="styles.jsp">Styles</a></li>
		                <li><a href="regions.jsp">Regions</a></li>
		                <li><a href="mealpoints.jsp">Meal Points</a></li>
		                <li><a href="tastes.jsp">Tastes</a></li>
                    </ul>
                </li>
                <li><a href="hot.jsp">Hot!</a></li>
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
	            <li class="dropdown"><a href ="#" class ="dropdown-toggle" data-toggle="dropdown">My Profile<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                    <li><a href="myprofile.jsp">My Profile</a></li>
                    <li><a href="myloves.jsp">My Loves</a></li>
                    <li><a href="fakelink">My Settings</a></li>
                    <li class="highlighted"><a href="fakelink">Logout</a></li>
                    </ul>
                </li>  
            </ul>
        </div><!--/.nav-collapse -->      
    </div><!--/.container -->
</div>

<div class="container">

<div id="header">
	<div class="container">
	    <div class = "row">
		 <!-- Sidebar -->
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
                           <h3 class="tile-title"><i class="glyphicon glyphicon-heart"></i> Styles</h3>
                           <p>What type?</p>
                           <span class="label label-warning"><a href="">Fusion</a></span>
                           <span class="label label-primary"><a href="">Haute</a></span>
                           <span class="label label-success"><a href="">Nouvelle</a></span>
                           <span class="label label-info"><a href="">Vegetarian</a></span>
                           <span class="label label-default"><a href="styles.jsp">More</a></span>
                       </div>
                   </div>
                   <div class="col-lg-1 col-md-1"></div>                
                   <div class="col-lg-4 col-md-4">
                       <div class="tile">
                           <img src="img/2.png" alt="" class="tile-image big-illustration">
                           <h3 class="tile-title"><i class="glyphicon glyphicon-heart"></i> Regionss</h3>
                           <p>From where?</p>
                           <span class="label label-warning"><a href="">American</a></span>
                           <span class="label label-primary"><a href="">Asian</a></span>
                           <span class="label label-success"><a href="">European</a></span>
                           <span class="label label-info"><a href="">Oceanian</a></span>
                           <span class="label label-default"><a href="regions.jsp">More</a></span>
                       </div>
                    </div>
                </div>
                <div class="row">
                <div class="col-lg-1 col-md-1"></div>    
                <div class="col-lg-4 col-md-4">
                    <div class="tile">
                        <img src="img/3.png" alt="" class="tile-image big-illustration">
                        <h3 class="tile-title"><i class="glyphicon glyphicon-heart"></i> Meal Points</h3>
                        <p>At when ?</p>
                        <span class="label label-warning"><a href="">Breakfast</a></span>
                        <span class="label label-primary"><a href="">Lunch</a></span>
                        <span class="label label-success"><a href="">Tea</a></span>
                        <span class="label label-info"><a href="">Dinner</a></span>
                        <span class="label label-default"><a href="mealpoints.jsp">More</a></span>
                    </div>
                </div>
                <div class="col-lg-1 col-md-1"></div>    
                <div class="col-lg-4 col-md-4">
                    <div class="tile">
                        <img src="img/4.png" alt="" class="tile-image big-illustration">
                        <h3 class="tile-title"><i class="glyphicon glyphicon-heart"></i> Tastes</h3>
                        <p>Yummy?</p>
                        <span class="label label-warning"><a href="">Sweet</a></span>
                        <span class="label label-primary"><a href="">Spicy</a></span>
                        <span class="label label-success"><a href="">Special</a></span>
                        <span class="label label-info"><a href="">Light</a></span>
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
    <script src="../includes/js/jquery.placeholder.js"></script>
  </body>
</html>