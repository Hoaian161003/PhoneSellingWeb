<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<!-- search.jsp -->
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>

<!-- search.jsp -->
<body>


	<div class="container">
		<h1>Search By Price</h1>
		<form action="/product/bai4" method="post" class="mt-4">
			<div class="form-group row">
				<label for="min" class="col-sm-2 col-form-label">Min Price</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="min" name="min"
						value="${param.min}" placeholder="Min Price">
				</div>
			</div>
			<div class="form-group row">
				<label for="max" class="col-sm-2 col-form-label">Max Price</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="max" name="max"
						value="${param.max}" placeholder="Max Price">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-4 offset-sm-2">
					<button type="submit" class="btn btn-primary">Search</button>
				</div>
			</div>
		</form>
	</div>

	<div class="container">
    <div class="row">
        <c:forEach var="item" items="${items}">
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="card">
                    <img src="/images/${item.image}" alt="Product Image" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">${item.name}</h5>
                        <p class="card-text">Giá: ${item.price}</p>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

</body>

</html>