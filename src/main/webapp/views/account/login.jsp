<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body>
	    <section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <form action="/account/login" method="post">
        <b><i>${message}${param.error}</i></b>
          <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">User name</label>
            <input type="text" name="username" value="${cookie.username.value}" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
            
          </div>
          <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Password</label>
            <input type="password" name="password" value="${cookie.password.value}" class="form-control" id="exampleInputPassword1">
          </div>
          <div class="mb-3 form-check">
             <a href="/account/register">Or Register</a>
          </div>
          <button type="submit" class="btn btn-primary">Login</button>
          <a class="btn btn-primary" href="/product/search">Cancel</a>
        </form>
        
      </div>
    </div>
  </div>
</section>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
