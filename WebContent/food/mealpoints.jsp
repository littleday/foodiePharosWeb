<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html>
<head>
	<title>FoodiePharos: Find your appetites here!</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=1000, initial-scale=1.0, maximum-scale=1.0">
	<link rel="shortcut icon" href="../includes/images/PFIco.ico">
	
	<!-- Loading Bootstrap -->
	<link href="../includes/bootstrap/css/bootstrap.css" rel="stylesheet">
	
	<!-- Loading Flat UI -->
	<link href="../includes/css/flat-ui.css" rel="stylesheet">
	
	<!-- Custom styles for this page -->
	<link href="../includes/css/style.css" rel="stylesheet">
	
	<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
	<!--[if lt IE 9]>
	<script src="../includes/js/html5shiv.js"></script>
	<script src="../includes/js/respond.min.js"></script>
	<script src="../includes/js/bootstraps.min.js"></script>
	<![endif]-->
</head>

<body>

	<%@include file="/part/navbar.jsp" %>

	<div class="container">	
		<div id="header">
			<div class="container">
			    <div class = "row">
				 	<!-- Side bar -->
   			       <%@include file="/part/cuisines-sidebar.jsp" %>
		           <div class="col-lg-8 col-md-8">
          		   	   <!-- Page content -->
		               <div class="panel panel-warning">
		                 <!-- Default panel contents -->
		                     <div class="panel-heading"><strong>Meal Time</strong></div>
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
			                      <td><a href="../result.jsp?searchKey=breakfast&searchPos=boston"><i>Breakfast</i></a></td>
			                      <td>Sun wakes us up. What do you want to eat now?</td>
			                    </tr>
			                    <tr>
			                      <td>2</td>
			                      <td><a href="../result.jsp?searchKey=brunch&searchPos=boston"><i>Brunch</i></a></td>
			                      <td>A breakfast&lunch on Sundays.</td>
			                    </tr>
			                    <tr>
			                      <td>3</td>
			                      <td><a href="../result.jsp?searchKey=lunch&searchPos=boston"><i>Lunch</i></a></td>
			                      <td>Midday meal.</td>
			                    </tr>
			                     <tr>
			                      <td>4</td>
			                      <td><a href="../result.jsp?searchKey=tea&searchPos=boston"><i>Tea</i></a></td>
			                      <td>Happy time to have a afternoon tea. Enjoy this with your family and friends.</td>
			                    </tr>
			                     <tr>
			                      <td>5</td>
			                      <td><a href="../result.jsp?searchKey=dinner&searchPos=boston"><i>Dinner</i></a></td>
			                      <td>The main and most formal meal of one day.</td>
			                    </tr>
			                  </tbody>  
		                  </table>
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
  </body>
</html>