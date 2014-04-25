<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="myutil.*, dao.SearchHistoryDao, entity.SearchHistory, java.util.Iterator"%>
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

	<%@include file="/part/navbar.jsp" %>
	<div class="container">
		<div id="header">
			<div class="container">
			    <div class = "row">
			    	<div class="col-lg-1 col-md-1"></div>
		        	<div class = "col-lg-3 col-md-3">
	         			<!-- Rank Lists -->
			          	<div class="rank rank-hot">
			          	<h3 class="rank-title"><i class="glyphicon glyphicon-heart"></i> Most Popular Restaurants</h3>
				          	<table class="table">
				                  <tbody>
				                  	<%
										SearchByYelp search = new SearchByYelp();
										SearchResult sr = new SearchResult();
										
										sr = search.getRestaurantsByLocation("Boston", "2");
										
										Iterator<Business> it = sr.getBusinessList().iterator();
										Business busi = new Business();
										int id = 0;
										while(it.hasNext() && id<10)
										{
											id++;
											busi = it.next();
											%>
											<tr>
												<td><%= id %></td>
												<td><a href="${pageContext.request.contextPath}/restaurant.jsp?id=<%= busi.getId() %>"><%= busi.getName() %></a></td>
											</tr>
											<%
										}
									%>                     
				                  </tbody>  
		          		  </table>
			          </div>   
		          </div>
		          <div class="col-lg-3 col-md-3">
		          </div>
		          <div class="col-lg-3 col-md-3">
		          	<!-- Rank Lists -->
			          <div class="rank rank-hot">
				          <h3 class="rank-title"><i class="glyphicon glyphicon-heart"></i> The Restaurants you may like</h3>
				          <table class="table">
				                  <tbody>
				                  	<%
				            			if (request.getSession().getAttribute("user") == null){
				            				%>
											<tr>
												<td>No Recommend Restaurant for Guest</td>
											</tr>
											<tr>
												<td><a href="signup.jsp"><h5>Join Us!</h5></a></td>
											</tr>
											<%
				            			}else{
				            				User user = (User)request.getSession().getAttribute("user");
					                  		SearchHistoryDao dao = new SearchHistoryDao();
					                  		SearchHistory shistory = dao.findLastSearchHistory(user.getUsername());
					                  		if (shistory == null){
					                  			%>
												<tr>
													<td>No Recommend Restaurant</td>
												</tr>
												<%		                  			
					                  		}else{
												sr = search.searchByLocation(shistory.getItemKeywordsString(),"Boston");
												it = sr.getBusinessList().iterator();
												id = 0;
												while(it.hasNext() && id<10)
												{
													id++;
													busi = it.next();
													%>
													<tr>
														<td><%= id %></td>
														<td><a href="${pageContext.request.contextPath}/restaurant.jsp?id=<%= busi.getId() %>"><%= busi.getName() %></a></td>
													</tr>
													<%
												}
					                  		}											
				            			}
				                  	%>
				                  </tbody>  
				          </table>
			          </div>   
		          </div>
    			  <div class="col-lg-2 col-md-2"></div>
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
  </body>
</html>