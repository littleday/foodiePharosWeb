<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="entity.*,dao.*, java.util.*, myutil.*,com.google.gson.Gson, service.*"%>
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
		
		<%
			String bizId = request.getParameter("id");
			RestaurantDao dao = new RestaurantDao();
			Restaurant res = dao.findRestaurantByBusinessId(bizId);
			if (res == null) res = new Restaurant();
			res.setBusinessId(bizId);
			RestaurantTool restTool = new RestaurantTool(res);
			RestaurantObject restObj = restTool.getRestObj();
			List<Review> reviews = res.getReviewList();
			List<Review> myReviews = (List<Review>)request.getSession().getAttribute("reviews");
			if(myReviews != null){
				for(Review rv : myReviews){
					if(rv.getRestaurant().getBusinessId().equals(bizId)){
						reviews.add(rv);
					}
				}
			}
			
			
			session.setAttribute("restaurantId", res.getId());
			session.setAttribute("bizId", bizId);
	    	if (res.getCategory() == null)
			{
				// Add restaurant to database and search again
				/* AddResByYelp ay = new AddResByYelp();
				ay.addRestaurantByYelp(bizId);
				res = dao.findRestaurantByBusinessId(bizId); */
	    		res.setCategory(restObj.getCategoriesArray());
	    		res.setRating(restObj.rating);
	    		res.setRatingNumber(restObj.review_count);
			}
		%>
		
		<%
			String AddStyle;
			String AlreadyStyle;
			int flag = 0;
			
			Object user = request.getSession().getAttribute("user");
			List<Long> currentFavor = (List<Long>)request.getSession().getAttribute("favors");
			if(currentFavor != null){
				for(long tmp: currentFavor)
				{
					if(tmp == res.getId())
					{
						flag = 1;
					}
				}
			}
			if(res.getId() != 0 && user != null)
			{
			    List<Restaurant> favor = ((User)user).getFavoriteRestaurants();
			    for(Restaurant loop : favor)
			    {
			    	if(res.getId() == loop.getId())
			    	{
			    		flag = 1;
			    	}
			    }
			    
			}
			if(flag == 1)
			{
				AddStyle="hidden";
				AlreadyStyle="visable";
			}
			else
			{
				AddStyle="visable";
				AlreadyStyle="hidden";
			}
		%>
        <div class="container">	
         <div id="header">
	  		<div class="container">
           		<div class="wrapper">
    				<div class="box">
        				<div class="row" style="margin-top: -90px;">       
				            <!-- side bar -->
				            <div class="column col-sm-3" id="sidebar" style="margin-top: -25px;">
				            	<!-- My Profile -->
                				<ul class="nav">
				                    <li class="active"><h1><%=restObj.name %></h1></li>
				                    <li>
				                     <input id="input-1" type="number" class="rating" data-readonly="true" 
			           		value="<%=res.getRating() %>" data-size="xs" data-show-clear="false" data-show-caption="false">
				                    (<%=res.getRatingNumber() %>)
				                    </li>
                    				<li><img src="" class="res_image"></li>
				                    <li><i class="glyphicon glyphicon-pencil"></i>  Address:</li>
									<li><%=restObj.getAddress()%></li>
                    				<li><i class="glyphicon glyphicon-star"></i>  Category:</li>                  				
                        			<li><%=restObj.getCategories() %></li>
                    				<hr>
                    				<form action ="LikeServlet" method="post">
                    				<li>
                    				<button name="addFavor"class="btn btn-success <%=AddStyle %>"><i class="glyphicon glyphicon-heart"></i> Add to your favorite list</button>
                    				<button name="alreadyFavor"class="btn btn-success <%=AlreadyStyle %>"><i class="glyphicon glyphicon-heart" ></i> This is your favorite!</button>
                    				</li> 
                    				</form>          
                				</ul>
                				<!-- Related Restaurants -->
                				<%
										SearchByYelp search = new SearchByYelp();
										SearchResult sr = new SearchResult();
										
										sr = search.searchByLocation(restObj.getName(), "Boston");
										
										Iterator<Business> it = sr.getBusinessList().iterator();
										Business busi = new Business();
										int number = 0;
										while(it.hasNext() && number<3)
										{
											busi = it.next();
											if (!busi.getId().equalsIgnoreCase(restObj.getId())) {
												number++;
												%>
												<hr>
				                				<div class="row text-center">
				                					<h4><a href="${pageContext.request.contextPath}/restaurant.jsp?id=<%= busi.getId() %>"><%= busi.getName() %></a></h4>
				                    				<a href="${pageContext.request.contextPath}/restaurant.jsp?id=<%= busi.getId() %>"><img src=<%= busi.getImage_url() %> class="img-circle"></a>
				                				</div>
				                				<%
											}										
										}
									%>
            				</div>
            				<!-- /side bar -->
          
				            <!-- main -->
				            <div class="column col-sm-9" id="main">
				                <div class="padding">
				                    <div class="full col-sm-9">
			                         	<div class="col-sm-12" id="addReview">  
				                          	<div class="page-header text-muted"><strong><i class="glyphicon glyphicon-star"></i> Add Your Review</strong>
				                          	</div>
					                         <form  action="ReviewServlet" method="post">
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
					                                    <button name = "reviewSubmit"class="btn btn-primary" >Submit</button>
					                                    <button name = "reviewReset" type="reset" class="btn btn-inverse">Reset</button> 
								 					</div>
							 					</div>
						 					</form> 
						 					  	
				                    	</div>
				                        <!-- end addReview -->            
				                        <!--/reviews-->      
				                        <div class="col-sm-12" id="reviews">
				                        <div class="page-header text-muted divider"><strong><i class="glyphicon glyphicon-dashboard"></i> Recent Reviews</strong>
                          </div>
				                        <%for(Review review: reviews) {  %>
				                         <!-- one review -->
					                        <div class="row">    
					                          <div class="col-sm-10">
					                            <h3><%=review.getId() %></h3>
			                            		 <input id="input-1" type="number" class="rating" data-readonly="true" 
			           		value="<%=review.getRating() %>" data-size="xs" data-show-clear="false" data-show-caption="false">
					                            <div class="well well-sm"><strong><%=review.getReview() %></strong></div>
					                            <h4><small class="text-muted">Last Modified:<%=review.getLastModifyDate() %></small></h4>
					                          </div>
					                          <div class="col-sm-2">
					                          	<h4>
					                          		<span class="label label-default">
					                          			<a href="${pageContext.request.contextPath}/viewprofile.jsp?username=<%= review.getUser().getUsername() %>"><%=review.getUser().getFirstName() %></a>
					                          		</span>
				                          		</h4>
					                          	<a href="${pageContext.request.contextPath}/viewprofile.jsp?username=<%= review.getUser().getUsername() %>" class="pull-right">
					                          		<img height="100" width="100"  src=<%=review.getUser().getPhoto() %> class="img-circle">
					                          	</a>
					                          </div> 
					                        </div>    
		 		                            <hr>
					                        <!-- one review end -->
					                <%} %>
					                        
				                        </div>
				                        <!-- one review end -->                
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