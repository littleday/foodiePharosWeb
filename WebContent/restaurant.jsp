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
		<%@include file="/part/navbar.jsp" %>
        	
         <div id="header">
	  		<div class="container">
           		<div class="wrapper">
    				<div class="box">
        				<div class="row" style="margin-top: -90px;">       
				            <!-- sidebar -->
				            <div class="column col-sm-3" id="sidebar" style="margin-top: -25px;">
                				<ul class="nav">
				                    <li class="active"><h1>Restaurant name</h1></li>
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
				                    <li><i class="glyphicon glyphicon-pencil"></i>  Address:</li>
									<li>300 Hanover St Boston, MA 02113 (617) 742-3050</li>
                    				<li><i class="glyphicon glyphicon-star"></i>  Category:</li>                  				
                        			<li>Category 1, Category 2 & Category 3</li>
                    				<hr>
                    				<li><button name="addFavor"class="btn btn-success" onClick=""><i class="glyphicon glyphicon-heart"></i> Add to your favorite list</button>
                    				</li>           
                				</ul>
				                <div class="row text-center page-header">
				                	<h4>Related 1</h4>
				                    <a href="#"><img src="//placehold.it/100" class="img-circle"></a>
				                </div>
				                <div class="row text-center divider">
				                	<h4>Related 2</h4>
				                    <a href="#"><img src="//placehold.it/100" class="img-circle"></a>
				                </div>
				                <div class="row text-center page-header">
				                	<h4>Related 3</h4>
				                    <a href="#"><img src="//placehold.it/100" class="img-circle"></a>
				                </div>
            				</div>
            				<!-- /sidebar -->
          
				            <!-- main -->
				            <div class="column col-sm-9" id="main">
				                <div class="padding">
				                    <div class="full col-sm-9">
				                    <div class = "col-sm-12" id="addReview">
				                         <div class="col-sm-12" id="reviews">  
					                          <div class="page-header text-muted"><strong><i class="glyphicon glyphicon-star"></i> Add Your Review</strong>
					                          </div>
					                         <form  action="SettingServlet" method="post">
												<div class="row">
								 					<div class="col-sm-2">			 						
									            		<p width="45%" height="26" align="right">Rating:</p> 							
								 					</div>
								 					<div class="col-sm-10">
					     			      				<input name="newRating" id="input-2" type="number" class="rating" data-size="xs" data-show-clear="false" data-show-caption="false">
								 					</div>
							 					</div>
							 					<div class="row">
								 					<div class="col-sm-2">
									            		<p width="45%" height="26" align="right">Review:</p> 							
								 					</div>
								 					<div class="col-sm-10">
					     			      				<textarea name="reviewContent"rows="4" cols="50"></textarea>
					                                <button name = "reviewSubmit"class="btn btn-primary" onClick="">Submit</button>
					                               <button bane = "reviewReset" class="btn btn-inverse" onClick="">Reset</button> 
								 					</div>
							 					</div>
						 					</form> 	
				                    	</div>
				                        <!-- content -->
				                        <div class="col-sm-12" id="reviews">  
				                          <div class="page-header text-muted divider"><strong><i class="glyphicon glyphicon-comment"></i> Recent Reviews</strong>
				                          </div>
				                        </div>                
				                        <!--/reviews-->
				                        <!-- one review -->
				                        <div class="row">    
				                          <div class="col-sm-10">
				                            <h3>Review title</h3>
		                            		<form>
								  				<input id="input-1" type="number" class="rating" data-readonly="true" value="3" data-size="xs" data-show-clear="false" data-show-caption="false">
						              		</form>
										    <script>
											  document.getElementById('input-1').value= 4;
										    </script>
				                            <div class="well well-sm"><strong>Review content</strong></div>
				                            <h4><small class="text-muted">Modified time</small></h4>
				                          </div>
				                          <div class="col-sm-2">
				                          	<h4><span class="label label-default">Username</span></h4><h4>
				                          	<a href="#" class="pull-right"><img src="//placehold.it/100" class="img-circle"></a>
				                          </div> 
				                        </div>    
				                        <div class="row divider">    
				                           <div class="col-sm-12"><hr></div>
				                        </div>
				                        <!-- one review end -->
				               			<!-- one review -->
				                        <div class="row">    
				                          <div class="col-sm-10">
				                            <h3>Review title</h3>
		                            		<form>
								  				<input id="input-1" type="number" class="rating" data-readonly="true" value="3" data-size="xs" data-show-clear="false" data-show-caption="false">
						              		</form>
										    <script>
											  document.getElementById('input-1').value= 4;
										    </script>
				                            <div class="well well-sm"><strong>Review content</strong></div>
				                            <h4><small class="text-muted">Modified time</small></h4>
				                          </div>
				                          <div class="col-sm-2">
				                          	<h4><span class="label label-default">Username</span></h4><h4>
				                          	<a href="#" class="pull-right"><img src="//placehold.it/100" class="img-circle"></a>
				                          </div> 
				                        </div>
				                        <!-- one review end -->
				                        <div class="row">
			                          		<div id="paginator" class="page-header text-muted divider text-center">Paginator</div>
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
    	<script src="includes/js/star-rating.js" type="text/javascript"></script>
	 </body> 
</html>