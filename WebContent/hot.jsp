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
<link rel="shortcut icon" href="../includes/images/PFIco.ico">

<!-- siimple style -->
<link href="includes/css/style.css" rel="stylesheet">
<link href="includes/css/ranklist.css" rel="stylesheet">
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
                       <li><a href="food/cursines.jsp">Overview</a></li>
                       <li class="divider"></li>
		                <li><a href="food/styles.jsp">Styles</a></li>
		                <li><a href="food/regions.jsp">Regions</a></li>
		                <li><a href="food/mealpoints.jsp">Meal Points</a></li>
		                <li><a href="food/tastes.jsp">Tastes</a></li>
                    </ul>
                </li>
                <li><a href="hot.jsp">Hot!</a></li>
            </ul>    
            <form class="navbar-form pull-left" role="search">
                <div class="input-group" style="max-width:470px;">
                <ul class="nav navbar-nav">
                    <li><input type="text" class="form-control input-xs" id="SearchKey" placeholder="Search what you like"></li>
                    <li>&nbsp;</li>
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
        <div class = "col-lg-3 col-md-3">
         <!-- Rank Lists -->
          <div class="rank rank-hot">
          <h3 class="rank-title"><i class="glyphicon glyphicon-heart"></i> Most Popular Restaurants</h3>
          <table class="table">
                  <tbody>
                    <tr>
                      <td>1</td>
                      <td>Mark</td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Jacob</td>
                    </tr>
                    <tr>
                      <td>3</td>
                      <td>Larry</td>
                    </tr>
                      <td>4</td>
                      <td>Mark</td>
                    </tr>
                    <tr>
                      <td>5</td>
                      <td>Jacob</td>
                    </tr>
                    <tr>
                      <td height="27">6</td>
                      <td>Larry</td>
                    </tr>
                    <td>7</td>
                      <td>Mark</td>
                    </tr>
                    <tr>
                      <td>8</td>
                      <td>Jacob</td>
                    </tr>
                    <tr>
                      <td>9</td>
                      <td>Larry</td>
                    </tr>
                    <tr>
                      <td>10</td>
                      <td>Larry</td>
                    </tr>
                  </tbody>  
          </table>
          <span class="label label-default"><a href="#">More</a></span>
          </div>   
          </div>
          <div class="col-lg-3 col-md-3">
          <h3>Your Keywords</h3>
          <input name="tagsinput" id="tagsinput" class="tagsinput" value="Chinese,Spicy,Cake" style= "display: none">
          <div id="tagsinput_tagsinput" class="tagsinput" style="height: 100%;">
          <span class="tag">
          <span><strong>Chinese</strong></span>
          <a class="tagsinput-remove-link">
          </a>
          </span>
                    <span class="tag">
          <span><strong>Spicy</strong></span>
          <a class="tagsinput-remove-link">
          </a>
          </span>
                    <span class="tag">
          <span><strong>Cake</strong></span>
          <a class="tagsinput-remove-link">
          </a>
          </span>
          <div class="taginput-add-container" id="tagsinput_addTag">
          <div class="tagsinput-add">
          </div>
          <input id="tagsinput_tag" value data-default style=""color: rgb(102, 102, 102); width: 7px;">
          </div>
          </div>
          </div>
          <div class="col-lg-3 col-md-3">
          <!-- Rank Lists -->
          <div class="rank rank-hot">
          <h3 class="rank-title"><i class="glyphicon glyphicon-heart"></i> The Restaurants you may like</h3>
          <table class="table">
                  <tbody>
                    <tr>
                      <td>1</td>
                      <td>Mark</td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Jacob</td>
                    </tr>
                    <tr>
                      <td>3</td>
                      <td>Larry</td>
                    </tr>
                      <td>4</td>
                      <td>Mark</td>
                    </tr>
                    <tr>
                      <td>5</td>
                      <td>Jacob</td>
                    </tr>
                    <tr>
                      <td height="27">6</td>
                      <td>Larry</td>
                    </tr>
                    <td>7</td>
                      <td>Mark</td>
                    </tr>
                    <tr>
                      <td>8</td>
                      <td>Jacob</td>
                    </tr>
                    <tr>
                      <td>9</td>
                      <td>Larry</td>
                    </tr>
                    <tr>
                      <td>10</td>
                      <td>Larry</td>
                    </tr>
                  </tbody>  
          </table>
          <span class="label label-default"><a href="#">More</a></span>
          </div>   
          </div>
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