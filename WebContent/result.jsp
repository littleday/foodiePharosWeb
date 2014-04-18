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
<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
<!--[if lt IE 9]>
<script src="includes/js/html5shiv.js"></script>
<script src="includes/js/respond.min.js"></script>
<script src="includes/js/bootstraps.min.js"></script>
<![endif]-->

<script type="text/javascript" src="includes/js/oauth.js"></script>
<script type="text/javascript" src="includes/js/sha1.js"></script>
<script type="text/javascript">
            var auth = {

                consumerKey : "eUqcTUF2LgdZGB-ZjHr85g",
                consumerSecret : "HwFzz0zvumYvhlq-vgcu-vDLf8w",
                accessToken : "d9O9FMYi1UDeNhTX1BP87UP4Q82xEAKE",
                accessTokenSecret : "c0KdpfZNXDcYu3lhhG6hMhq2hro",
                serviceProvider : {
                    signatureMethod : "HMAC-SHA1"
                }
            };

            var terms = 'food';
            var near = 'San+Francisco';

            var accessor = {
                consumerSecret : auth.consumerSecret,
                tokenSecret : auth.accessTokenSecret
            };
            parameters = [];
            parameters.push(['term', terms]);
            parameters.push(['location', near]);
            parameters.push(['callback', 'cb']);
            parameters.push(['oauth_consumer_key', auth.consumerKey]);
            parameters.push(['oauth_consumer_secret', auth.consumerSecret]);
            parameters.push(['oauth_token', auth.accessToken]);
            parameters.push(['oauth_signature_method', 'HMAC-SHA1']);

            var message = {
                'action' : 'http://api.yelp.com/v2/search',
                'method' : 'GET',
                'parameters' : parameters
            };

            OAuth.setTimestampAndNonce(message);
            OAuth.SignatureMethod.sign(message, accessor);

            var parameterMap = OAuth.getParameterMap(message.parameters);
            console.log(parameterMap);

            $.ajax({
                'url' : message.action,
                'data' : parameterMap,
                'dataType' : 'jsonp',
                'jsonpCallback' : 'cb',
                'success' : function(data, textStats, XMLHttpRequest) {
                    console.log(data);
                    $("body").append(data);
                }
            });

        </script>

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
		                <li><a href = "food/styles.jsp"><strong>Styles</strong></a></li>
		                <li><a href = "food/regions.jsp"><strong>Regions</strong></a></li>
		                <li><a href = "food/mealpoints.jsp"><strong>Meal Points</strong></a></li>
		                <li><a href = "food/tastes.jsp"><strong>Tastes</strong></a></li>
		            </ul>  
           </div>
           <div class="col-lg-8 col-md-8">
           <!-- Page content -->
               <div class="panel panel-warning">
                 <!-- Default panel contents -->
                     <div class="panel-heading"><strong>Search Results</strong></div>
                 <!-- Table -->
                   <table class="table" name="search_results">
                   <thead>
                       <tr>
                       <th>Name</th>
                       <th>Stars</th>
                       <th>Categories</th>
                       <th>Address</th>
                       </tr>
                   </thead>
                  <tbody>
                    
                    <tr>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
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