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
                <li><a href="../hot.jsp">Hot!</a></li>
            </ul>    
            <form class="navbar-form pull-left" role="search" action="result.jsp">
                <div class="input-group" style="max-width:470px;">
                <ul class="nav navbar-nav">
                    <li><input type="text" class="form-control input-xs" id="SearchKey" name="searchKey" placeholder="Search what you like"></li>
					<li><input type="text" class="form-control input-xs" id="SearchPos" name="searchPos" placeholder="Where"%></li>
                    <li>
                    <button type="submit" class="btn btn-theme btn-xs">Search</button>
                    </li>
                    </ul>
                </div>
            </form>       
            <ul class="nav navbar-nav navbar-right">
	            <li class="dropdown"><a href ="#" class ="dropdown-toggle" data-toggle="dropdown">My Profile<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                    <li><a href="fakelink">My Profile</a></li>
                    <li><a href="fakelink">My Loves</a></li>
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
           <div class="col-lg-8 col-md-8">
           <!-- Page content -->
               <div class="panel panel-warning">
                 <!-- Default panel contents -->
                     <div class="panel-heading"><strong>Tastes</strong></div>
                                      <!-- Table -->
                   <table class="table">
                   <thead>
                       <tr>
                       <th>#</th>
                       <th>Sub Category</th>
                       <th>Description</th>
                       </tr>
                   </thead>
                  <tbody>
                    <tr>
                      <td>1</td>
                      <td>Mark</td>
                      <td>Otto</td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Jacob</td>
                      <td>Thornton</td>
                    </tr>
                    <tr>
                      <td>3</td>
                      <td>Larry</td>
                      <td>the Bird</td>
                    </tr>
                  </tbody>  
                  </table>
               </div>  
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