<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
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
            <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">FoodiePharos</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">           
                <li class="dropdown"><a href ="#" class ="dropdown-toggle" data-toggle="dropdown">Cuisines<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                       <li><a href="${pageContext.request.contextPath}/food/cursines.jsp">Overview</a></li>
                       <li class="divider"></li>
		                <li><a href="${pageContext.request.contextPath}/food/styles.jsp">Styles</a></li>
		                <li><a href="${pageContext.request.contextPath}/food/regions.jsp">Regions</a></li>
		                <li><a href="${pageContext.request.contextPath}/food/mealpoints.jsp">Meal Points</a></li>
		                <li><a href="${pageContext.request.contextPath}/food/tastes.jsp">Tastes</a></li>
                    </ul>
                </li>
                <li><a href="${pageContext.request.contextPath}/hot.jsp">Hot!</a></li>
            </ul>    

            <form class="navbar-form pull-left" role="search" action="${pageContext.request.contextPath}/result.jsp">
                <div class="input-group" style="max-width:470px;">
                <ul class="nav navbar-nav">
                    <li><input type="text" class="form-control input-xs" id="SearchKey" name="searchKey" placeholder="Search what you like"></li>
					<li><input type="text" class="form-control input-xs" id="SearchPos" name="searchPos" placeholder="Where"%></li>
                    <li>
                    <button type="submit" class="btn btn-theme btn-xs">Search</button>
                    </li>
                    </ul>
                </div>
		      </form>            

            <ul class="nav navbar-nav navbar-right">
	            <li class="dropdown"><a href ="#" class ="dropdown-toggle" data-toggle="dropdown">My Profile<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                    <li><a href="${pageContext.request.contextPath}/myprofile.jsp">My Profile</a></li>
                    <li><a href="${pageContext.request.contextPath}/myloves.jsp">My Loves</a></li>
                    <li><a href="fakelink">My Settings</a></li>
                    <li class="highlighted"><a href="fakelink">Logout</a></li>
                    </ul>
                </li>  
            </ul>
        </div><!--/.nav-collapse -->      
    </div><!--/.container -->
</div>

</body>
</html>