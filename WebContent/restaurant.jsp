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
		
		<!-- Loading Star Rating -->
		<link href="includes/css/star-rating.css" media="all" rel="stylesheet" type="text/css"/>
		
		<!-- Loading Flat UI -->
		<link href="includes/css/flat-ui.css" rel="stylesheet">
		
		<!-- Custom styles for this page -->
		<link href="includes/css/style.css" rel="stylesheet">
		<link href="includes/css/restaurant.css" rel="stylesheet">
		
		<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
		<!--[if lt IE 9]>
		<script src="includes/js/html5shiv.js"></script>
		<script src="includes/js/respond.min.js"></script>
		<script src="includes/js/bootstraps.min.js"></script>
		<![endif]-->
	</head>
	<body>	
		<%@include file="navbar.jsp" %>	
        	
        <div class = "container">
         <div id="header">
		  <div class="container">
           <div class="wrapper">
    <div class="box">
        <div class="row">       
            <!-- sidebar -->
            <div class="column col-sm-3" id="sidebar">
                <ul class="nav">
                    <li class="active"><strong>Restaurant name</strong></li>
                    <li>
                    <form>
					  <input id="input-1" type="number" class="rating" data-readonly="true" value="3" data-size="xs" data-show-clear="false" data-show-caption="false">
				      </form>
				      <script>
					  document.getElementById('input-1').value= 4;
				      </script>
                    (reviews_count)
                    </li>
                    <li><img src="" class="res_image"></li>
                    <li><i class="glyphicon glyphicon-pencil"></i>  Address:
                        <li>300 Hanover St Boston, MA 02113 (617) 742-3050</li>
                    </li>
                    <li><i class="glyphicon glyphicon-star"></i>  Category:
                        <li>Category 1, Category 2 & Category 3</li>
                    </li>
                    
                </ul>
            </div>
            <!-- /sidebar -->
          
            <!-- main -->
            <div class="column col-sm-9" id="main">
                <div class="padding">
                    <div class="full col-sm-9">
                        <!-- content -->
                        <div class="col-sm-12" id="stories">  
                          <div class="page-header text-muted divider"><strong><i class="glyphicon glyphicon-dashboard"></i> Recent Reviews</strong>
                          </div>
                        </div>                
                        <!--/reviews-->
                        <!-- one review -->
                        <div class="row">    
                          <div class="col-sm-10">
                            <h3>Review title</h3>
                            <h4><span class="label label-default">review content</span></h4><h4>
                            <small class="text-muted">Modified time • <a href="#" class="text-muted">Read More</a></small>
                            </h4>
                          </div>
                          <div class="col-sm-2">
                          <p>Username</p>
                          <a href="#" class="pull-right"><img src="//placehold.it/100" class="img-circle"></a>
                          </div> 
                        </div>    
                        <div class="row divider">    
                           <div class="col-sm-12"><hr></div>
                        </div>
                        <!-- one review end -->
                        <div class="row">    
                          <div class="col-sm-10">
                            <h3>Bootstrap Builders Get Their Own Playground</h3>
                            <h4><span class="label label-default">bootply.com</span></h4><h4>
                            <small class="text-muted">3 days ago • <a href="#" class="text-muted">Read More</a></small>
                            </h4>
                          </div>
                          <div class="col-sm-2">
                            <a href="#" class="pull-right"><img src="//placehold.it/100" class="img-circle"></a>
                          </div>
                        </div>
                        
                        <div class="row divider">    
                           <div class="col-sm-12"><hr></div>
                        </div>
                        
                        <div class="row">    
                          <div class="col-sm-10">
                            <h3>How to: Another Fantastical Article</h3>
                            <h4><span class="label label-default">bootply.com</span></h4><h4>
                            <small class="text-muted">4 days ago • <a href="#" class="text-muted">Read More</a></small>
                            </h4>
                          </div>
                          <div class="col-sm-2">
                            <a href="#" class="pull-right"><img src="//placehold.it/100" class="img-circle"></a>
                          </div>
                        </div>
                        
                        <div class="row divider">    
                           <div class="col-sm-12"><hr></div>
                        </div>
                        
                        <div class="row">    
                          <div class="col-sm-9">
                            <h3>Another Fantastical Article of Interest</h3>
                            <h4><span class="label label-default">bootply.com</span></h4><h4>
                            <small class="text-muted">4 days ago • <a href="#" class="text-muted">Read More</a></small>
                            </h4>
                          </div>
                          <div class="col-sm-3">
                            <a href="#" class="pull-right"><img src="//placehold.it/100" class="img-circle"></a>
                          </div>
                        </div>
                        
                        <div class="col-sm-12">
                          <div class="page-header text-muted divider">
                            Up Next
                          </div>
                        </div>
                      
                        <div class="row">    
                          <div class="col-sm-4 text-center">
                            <h4>Related 1</h4>
                            <a href="#"><img src="//placehold.it/100" class="img-circle"></a>
                          </div>
                          <div class="col-sm-4 text-center">
                            <h4>Related 2</h4>
                            <a href="#"><img src="//placehold.it/100" class="img-circle"></a>
                          </div>
                          <div class="col-sm-4 text-center">
                            <h4>Related 3</h4>
                            <a href="#"><img src="//placehold.it/100" class="img-circle"></a>
                          </div>
                        </div>                           
                    </div><!-- /col-9 -->
                </div><!-- /padding -->
            </div>
            <!-- /main -->
          
        </div>
    </div>
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
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    	<script src="includes/js/star-rating.js" type="text/javascript"></script>	   
	 </body> 
</html>