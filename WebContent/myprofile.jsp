<!DOCTYPE html>
	<head>
		<meta charset="utf-8">	
       <title>FoodiePharos: Find your appetites here!</title>
		<meta name="viewport" content="width=1000, initial-scale=1.0, maximum-scale=1.0">
		<link rel="shortcut icon" href="includes/images/PFIco.ico">	
		<!-- Loading Bootstrap -->
		<link href="includes/bootstrap/css/bootstrap.css" rel="stylesheet">
		
		<!-- Loading Star Rating -->
		<link href="includes/css/star-rating.css" media="all" rel="stylesheet" type="text/css"/>
		
		<!-- Loading Flat UI -->
		<link href="includes/css/flat-ui.css" rel="stylesheet">
		
		<!-- Custom styles for this page -->
		<link href="includes/css/style.css" rel="stylesheet">
		<link href="includes/css/myprofile.css" rel="stylesheet">
		
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
		        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Cuisines<span class="caret"></span></a>
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
		            <li><input type="text" class="form-control input-xs" id="SearchPos" placeholder="Where" %=""></li>
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
		    </div>
		  </div>
		</div>
		
		<!-- Main -->
		<div class="main">
		  <div class="container">
		    <div class="row">
		      <div class="col-md-3">
		        <!-- Left column --> <a href="#" class=""><strong><i class="glyphicon glyphicon-wrench"></i> My Profile</strong></a>
		        <hr class="">
		        <div class="profile-box">
		          <div class="profile-cover-image">
		            <img src="http://api.randomuser.me/0.3/portraits/men/2.jpg" class="">
		          </div>
		          <div class="profile-picture">
		            <img src="http://api.randomuser.me/0.3/portraits/men/2.jpg" class="">
		          </div>
		          <div class="profile-content">
		            <h1 class="">John Doe</h1>
		            
		            <p class="">freshyogurt.nan@gmail.com
		              <br class="">Gender: Male
		              <br class="">Privilege: VIP</p>
		            <div class="socials"> <a href="#" class="">
		              <i class="fa fa-dribbble"></i>
		              </a>
		              <a href="#" class="">
		                <i class="fa fa-twitter"></i>
		              </a>
		              <a href="#" class="">
		                <i class="fa fa-github"></i>
		              </a>
		              
		            </div>
		          </div>
		        </div>
		      </div>
		      <!-- /col-3 -->
		      <div class="col-md-9">
		        <!-- column 2 -->
		        <ul class="list-inline pull-right">
		          <li><a href="#" class=""><i class="glyphicon glyphicon-cog"></i></a>
		          </li>
		          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-comment"></i><span class="count">3</span></a>
		            <ul class="dropdown-menu" role="menu">
		              <li><a href="#" class="">1. Is there a way..</a>
		              </li>
		              <li><a href="#" class="">2. Hello, admin. I would..</a>
		              </li>
		              <li><a href="#" class=""><strong class="">All messages</strong></a>
		              </li>
		            </ul>
		          </li>
		          <li><a href="#" class=""><i class="glyphicon glyphicon-user"></i></a>
		          </li>
		          <li><a title="Add Widget" data-toggle="modal" href="#addWidgetModal" class=""><span class="glyphicon glyphicon-plus-sign"></span> Add Widget</a>
		          </li>
		        </ul> <a href="#" class=""><strong><i class="glyphicon glyphicon-dashboard"></i> Recent Reviews</strong></a> 
		        <hr class="">
		        <div class="row">
		          <div class="col-xs-8">
		            <h6><a href="#" class=""><b>Mike's Pastry</b></a></h6>
		            <p class="">Category: <a href="#" class="">Bakeries, Ice Cream &amp; Frozen Yogurt</a></p>
		          </div>
		          <div class="col-xs-4">
		            <p class="">300 Hanover St Boston, MA 02113 (617) 742-3050</p>
		          </div>
		        </div>
      			<form>
					<input id="input-1" type="number" class="rating" data-readonly="true" value="3" data-size="xs" data-show-clear="false" data-show-caption="false">
				</form>
				<script>
					document.getElementById('input-1').value= 4;
				</script>
		        <div class="row">
		          <div class="col-xs-12">
		            <p class="">
			            I ate twice in this restaurant. The cheese in this restaurant is very very yummy!
			            <a href="#" class="">[Full Text]</a>
		            </p>
		            <ul class="list-inline">
		              <li>2 Days Ago</li>
		              <li class="pull-right">
            	  		<ul class="list-inline">
							<li><a href="#" class=""><i class="glyphicon glyphicon-heart"></i> 2 Like</a>
							</li>
							<li><a href="#" class=""><i class="glyphicon glyphicon-comment"></i> 2 Comments</a>
							</li>
							<li><a href="#" class=""><i class="glyphicon glyphicon-warning-sign"></i> Report</a>
							</li>
		              	</ul>              
		              </li> 
		            </ul>
		          </div>
		        </div>
		        <hr class="">
		        <div class="row">
		          <div class="col-xs-12">
		            <h2 class=""><a href="#" class="">Mike's Pastry</a></h2>
		            
		            <p class="">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pharetra
		              varius quam sit amet vulputate. Quisque mauris augue, molestie tincidunt
		              condimentum vitae, gravida a libero. Aenean sit amet felis dolor, in sagittis
		              nisi. Sed ac orci quis tortor imperdiet venenatis. Duis elementum auctor
		              accumsan. Aliquam in felis sit amet augue.</p>
		            <p class="lead">
		              <button class="btn btn-default">Read More</button>
		            </p>
		            <p class="pull-right"><span class="label label-default">keyword</span>  <span class="label label-default">tag</span> 
		              <span class="label label-default">post</span>
		            </p>
		            <ul class="list-inline">
		              <li><a href="#" class="">4 Days Ago</a>
		              </li>
		              <li><a href="#" class=""><i class="glyphicon glyphicon-comment"></i> 7 Comments</a>
		              </li>
		              <li><a href="#" class=""><i class="glyphicon glyphicon-share"></i> 56 Shares</a>
		              </li>
		            </ul>
		          </div>
		        </div>
		        <hr class="">
		        <div class="row">
		          <div class="col-xs-12">
		            <h2 class=""><a href="#" class="">Mike's Pastry</a></h2>
		            
		            <p class="">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pharetra
		              varius quam sit amet vulputate. Quisque mauris augue, molestie tincidunt
		              condimentum vitae, gravida a libero. Aenean sit amet felis dolor, in sagittis
		              nisi. Sed ac orci quis tortor imperdiet venenatis. Duis elementum auctor
		              accumsan. Aliquam in felis sit amet augue.</p>
		            <p class="lead">
		              <button class="btn btn-default">Read More</button>
		            </p>
		            <p class="pull-right"><span class="label label-default">keyword</span>  <span class="label label-default">tag</span> 
		              <span class="label label-default">post</span>
		            </p>
		            <ul class="list-inline">
		              <li><a href="#" class="">1 Week Ago</a>
		              </li>
		              <li><a href="#" class=""><i class="glyphicon glyphicon-comment"></i> 4 Comments</a>
		              </li>
		              <li><a href="#" class=""><i class="glyphicon glyphicon-share"></i> 34 Shares</a>
		              </li>
		            </ul>
		          </div>
		        </div>
		        <!--/row-->
		        <p class="pull-right">
		          <a href="#" class="">More Reviews&gt;&gt;</a>
		        </p>
		      </div>
		      <!--/col-span-9-->
		    </div>
		  </div>
		</div>
		<!-- /Main -->

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
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    	<script src="includes/js/star-rating.js" type="text/javascript"></script>
	   
	 </body> 
</html>