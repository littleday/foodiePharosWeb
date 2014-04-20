<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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

<!--  
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
<script type="text/javascript" src="http://oauth.googlecode.com/svn/code/javascript/oauth.js"></script>
<script type="text/javascript" src="http://oauth.googlecode.com/svn/code/javascript/sha1.js"></script>-->

<script src="includes/js/jquery-1.4.4.min.js"></script>
<script src="includes/js/oauth.js"></script>
<script src="includes/js/sha1.js"></script>

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

            var terms = GetURLParameter('searchKey');
            var near = GetURLParameter('searchPos');

            var accessor = {
                consumerSecret : auth.consumerSecret,
                tokenSecret : auth.accessTokenSecret
            };
            parameters = [];
            parameters.push(['term', terms]);
            parameters.push(['location', near]);
            parameters.push(['category_filter', 'food']);
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
                    var businesses = data.businesses;
                    var table = $("tbody");
                    var template = "<tr id='123'></tr>";
                    var td_img_str = "<td><img src='xxx.jgp' /></td>";
                    var td_name_str = "<td><a href='www.123.com'></a></td>";
                    
                    for(var i = 0; i < businesses.length; ++i){
                    	var item = businesses[i];
                    	var bizid = item.id;
                    	var name = item.name;
                    	var stars = item.rating;
                    	var imgUrl = item.image_url;
                    	var categoriesArray = item.categories;
                    	var categoryString = categoriesArray[0][0];
                    	var address = item.location.address[0] + ", " + item.location.city;
                    	
                    	for(var j = 1; j < categoriesArray.length; ++j){
                    		categoryString += ", " + categoriesArray[j][0];
                    	}
                    	
                    	console.log([bizid, name, stars, categoryString, address]);
                    	
                    	var tr = jQuery(template);
                    	tr.attr("id", bizid);
                    	var td_img = jQuery(td_img_str);
                    	td_img.find("img").attr("src", imgUrl);
                    	var td_name = jQuery(td_name_str);
                    	td_name.find("a").attr("href", "restaurant.jsp?id="+bizid);
                    	td_name.find("a").append(name);
                    	
                    	tr.append(td_img);
                    	tr.append(td_name);
                    	tr.append("<td>"+ stars +"</td>");
                    	tr.append("<td>"+ categoryString +"</td>");
                    	tr.append("<td>"+ address +"</td>");
                    	
                    	table.append(tr);
                    }
                    
                }
            });
            
            
            function GetURLParameter(sParam)
            {
                var sPageURL = window.location.search.substring(1);
                var sURLVariables = sPageURL.split('&');
                for (var i = 0; i < sURLVariables.length; i++) 
                {
                    var sParameterName = sURLVariables[i].split('=');
                    if (sParameterName[0] == sParam) 
                    {
                        return sParameterName[1];
                    }
                }
            }
        </script>

</head>
<body>

<%@include file="/part/navbar.jsp" %>


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
                       <th>Image</th>
                       <th>Name</th>
                       <th>Stars</th>
                       <th>Categories</th>
                       <th>Address</th>
                       </tr>
                   </thead>
                  <tbody id="tbody"></tbody>  
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