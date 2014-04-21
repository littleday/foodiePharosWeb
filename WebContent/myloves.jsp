<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="entity.*,dao.*, java.util.*, myutil.*, service.*"%>
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
		<%@include file="/part/navbar.jsp" %>
		<%  User loginedUser = (User) request.getSession().getAttribute("user");
			UserDao udao = new UserDao();
			loginedUser = udao.findUserByPk(loginedUser.getUsername());
				
			if(loginedUser == null){
				// won't work
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
			
			List<Restaurant> restaurants = loginedUser.getFavoriteRestaurants();
		%>
		
		
		<!-- Main -->
		<div class="main">
		  <div class="container">
		    <div class="row">
		      <div class="col-md-3">
		        <!-- Left column --> <a href="#" class=""><strong><i class="glyphicon glyphicon-wrench"></i> My Profile</strong></a>
		        <hr class="">
		        <div class="profile-box">
		          <div class="profile-cover-image">
		            <img src="<%=loginedUser.getPhoto() %>" class="">
		          </div>
		          <div class="profile-picture">
		            <img src="<%=loginedUser.getPhoto() %>" class="">
		          </div>
		          <div class="profile-content">
		            <h1 class=""><%=loginedUser.getFirstName()+ " "+ loginedUser.getLastName() %></h1>
		            
		            <p class=""><%=loginedUser.getEmail() %>
		              <br class="">Gender: <%=loginedUser.getGender() %>
		            </p>
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
		     
		     
		     
		      <div class="col-md-9">
		         <a href="#" class=""><strong><i class="glyphicon glyphicon-dashboard"></i> My loves</strong></a> 
		         <hr class="">
		         
		      
		         <% for(Restaurant rest: restaurants) { 
		         		RestaurantTool restTool = new RestaurantTool(rest);
		         		RestaurantObject restObj = restTool.getRestObj();
		    	    	if(request.getSession().getAttribute("favors") == null){
		    				ArrayList<Long> favors = new ArrayList<Long>();
		    				favors.add(rest.getId());
		    				request.getSession().setAttribute("favors", favors);		    				
		    			}else{
		    				ArrayList<Long> favors = (ArrayList<Long>)request.getSession().getAttribute("favors");
		    				favors.add(rest.getId());
		    			}
		         %>
		         
		        <div class="row">
		        <div class ="col-xs-8">
		         <h6 id = "restId"><a href="restaurant.jsp?id=<%=restObj.id%>"><%=restObj.name %></a></h6>
			          <p class="">Category: <span id="categories"><%=restObj.getCategories() %></span></p>
			           <p><input id="input-1" type="number" class="rating" data-readonly="true" 
			           		value="<%=restObj.rating%>" data-size="xs" data-show-clear="false" data-show-caption="false">
			           		</p>
			           <p id="reviewContent" class="">
				        	<%=restObj.snippet_text %>
				       </p>
				       <form action ="DislikeServlet" method="post">
                       <li>
                       <button name="dislike"class="btn btn-success btn-xs" value="<%=rest.getId() %>"><i class="glyphicon glyphicon-remove-circle"></i> Do not like it any more</button>       			
                       </li> 
                       </form>  
		        </div>
		         <div class ="col-xs-4">
		         <br />
			          <p id="restAddress" class="">
			          	<%=restObj.getAddress()%><br/>
			          	<img src="<%=restObj.image_url %>" class="img-circle"/>
			          </p>
		        </div>
		        </div>	        
		        
		         <div class ="row divider">
		         <div class="col-xs-12">
		         <hr>
		         </div>
		        </div>
		        
		        
		   

		         <% } %>
				
		      </div>
		
		      
		      
		      
		      
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