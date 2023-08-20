<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
	<head>
  <meta charset="utf-8">
  <title>Insert title here</title>
</head>
	
</head>
<body>

	<div class="container">
		<div class="row col-md-6 col-md-offset-2 custyle">
			<h1>Search by name</h1>
			<form action="bai5" method="post">
				<input class="form-control" name="keywords" value="${keywords}">
				<button class="btn btn-warning">Search</button>
			</form>
			<hr>
			<table class="table table-striped custab">
				<thead>
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>Image</th>
						<th>Price</th>
						<th>Date</th>
					</tr>
				</thead>
				<c:forEach var="item" items="${page.content}">
					<tr>
						<td>${item.id}</td>
						<td>${item.name}</td>
						<td><img src="/images/${item.image}" alt="Product Image"
						style="max-width: 100px; max-height: 100px;"></td>
						
						<td>${item.price}</td>
						<td>${item.createDate}</td>
					</tr>
				</c:forEach>
			</table>
			<table>
    <tr>
        <td>
            <a href="bai5?p=0" class="btn btn-primary">First</a>
        </td>
        <td>
            <a href="bai5?p=${page.number-1}" class="btn btn-primary">Previous</a>
        </td>
        <td>
            <a href="bai5?p=${page.number+1}" class="btn btn-primary">Next</a>
        </td>
        <td>
            <a href="bai5?p=${page.totalPages-1}" class="btn btn-primary">Last</a>
        </td>
    </tr>
</table>

			<ul>
				<li>Số thực thể hiện tại: ${page.numberOfElements}</li>
				<li>Trang số: ${page.number+1}</li>
				<li>Kích thước trang: ${page.size}</li>
				<li>Tổng số thực thể: ${page.totalElements}</li>
				<li>Tổng số trang: ${page.totalPages}</li>
			</ul>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
