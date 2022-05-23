<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Header</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="./header.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
			integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA=="
			crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<div class = "header">
		<nav class="navbar navbar-inverse">
		  <div class="container-fluid">
		    <div class="navbar-header">
		      <a class="navbar-brand brand-name" href="#">PRJ321x</a>
		      <%String user = (String) request.getAttribute("username"); %>
		      <a class="navbar-brand" href="#">Welcome to 
		      	<%if(user != null) { %>
		      		<%=user%>
		      	<%} else { %>
		      		my Website
		      		<%} %>
		      </a>
		    </div>
		    <div class="nav-item dropdown">
			          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
			            Categories
			          </a>		         
			          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
			            <li><a class="dropdown-item" href="#">Option 1</a></li>
			            <li><a class="dropdown-item" href="#">Option 2</a></li>
			            <li><hr class="dropdown-divider"></li>
			            <li><a class="dropdown-item" href="#">Option...</a></li>
			          </ul>
			        </div>
		        <div class = "search">
			        <form class="navbar-form navbar-left" action="#" method="post">
				      <div class="input-group">
				        <input type="text" class="form-control" placeholder="Search" name="search">
				        <div class="input-group-btn">
				          <button class="btn btn-default" type="submit">
				            <i class="glyphicon glyphicon-search fas fa-search"></i>
				          </button>
				        </div>
				      </div>
				    </form>
		        </div>
		  </div>
		</nav>
	 </div>
	 
	 
	 <div class = "menu">
	
		 <nav class="navbar navbar-expand-lg navbar-light bg-light">
		  <div class="container-fluid">
		    
		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		    <div class="collapse navbar-collapse" id="navbarSupportedContent">
		      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
		        <li class="nav-item">
		          <a class="nav-link active" aria-current="page" href="#">Home</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link active" aria-current="page" href="#">Products</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link active" aria-current="page" href="#">About Us</a>
		        </li>
		      	<li class="nav-item">
		          <a class="nav-link active" aria-current="page" href="#">Cart</a>
		        </li>
		        
		      </ul>
		      <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/login.html">Login</a>
		      <a class="nav-link active" aria-current="page" href="#">Register</a>
		    </div>
		  </div>
		</nav>
		 	 
	 </div>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" 
	crossorigin="anonymous"></script>
</body>
</html>