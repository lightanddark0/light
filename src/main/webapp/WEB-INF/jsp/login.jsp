<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/WEB-INF/css/header.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
			integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA=="
			crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Login</title>
</head>
<body>
<section class="vh-100">
  <div class="container-fluid h-custom">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-9 col-lg-6 col-xl-5">
        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
          class="img-fluid" alt="Sample image">
      </div>
      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
        <form action="${pageContext.request.contextPath}/login.html" method="post">
          <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start sign-in">
            <p class="lead fw-normal mb-0 me-3">Sign in</p>
          </div>
          <div class="form-outline mb-4">
            <input type="text" id="username" class="form-control form-control-lg"
              name="username" placeholder="Enter a valid email address" value="${username}"/>
            <label class="form-label" for="username">Email address</label>
          </div>

          <!-- Password input -->
          <div class="form-outline mb-3">
            <input type="password" id="password" class="form-control form-control-lg"
              name="password" placeholder="Enter password" value="${password}"/>
            <label class="form-label" for="username">Password</label>
          </div>
          
		  <div class="text">
          	<p class = "text-danger">${error}</p>
          </div>
          
          <div class="text-center text-lg-start mt-4 pt-2">
            <input id = "submit" type="submit" class="btn btn-primary btn-lg"
              style="padding-left: 2.5rem; padding-right: 2.5rem;" value="LOGIN"/>
            <input id = "reset" type="reset" class="btn btn-primary btn-lg"
              style="padding-left: 2.5rem; padding-right: 2.5rem;" value="RESET"/>
          </div>

        </form>
      </div>
    </div>
  </div>
</section>
</body>
</html>