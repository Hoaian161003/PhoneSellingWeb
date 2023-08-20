<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Welcome Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        
        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 100px 20px;
            text-align: center;
        }
        
        h1 {
            font-size: 32px;
            margin-bottom: 40px;
        }
        
        .button-container {
            display: flex;
            justify-content: space-between;
        }
        
        .button-container a {
            display: inline-block;
            padding: 12px 24px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s;
        }
        
        .button-container a:hover {
            background-color: #0056b3;
        }
        
        .background-image {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: url("images/2561184c0d83292e2814a8db5dfe49e1.jpg");
            background-size: cover;
            background-position: center;
            opacity: 0.6; /* Điều chỉnh độ mờ của ảnh nền (từ 0.1 đến 1) */
            z-index: -1; /* Đặt vị trí nền phía sau nội dung */
        }
    </style>
</head>
<body>
    <div class="background-image"></div>
    <div class="container">
        <h1>Welcome!</h1>
        <div class="button-container">
            	<a href="${pageContext.request.contextPath}/product/search" class="btn btn-primary">Mua Hàng</a><br>

           		<a href="${pageContext.request.contextPath}/login" class="btn btn-primary">Login</a><br>

        </div>
        
        
        <div class="container">
	<a href="${pageContext.request.contextPath}/product/search" class="btn btn-primary">HomePage</a><br>
	<h5>-------------------------------</h5><br>
		<a href="${pageContext.request.contextPath}/product/search-and-page" class="btn btn-primary">Search Theo Tên Và Phân Trang</a><br>
		<h5>-------------------------------</h5><br>
		<a href="${pageContext.request.contextPath}/report/inventory-by-category" class="btn btn-primary">Hàng Trong Kho</a><br>
				<h5>-------------------------------</h5><br>
		<a href="${pageContext.request.contextPath}/product/bai4" class="btn btn-primary">Bài 4</a><br>
				<h5>-------------------------------</h5><br>
		<a href="${pageContext.request.contextPath}bai5" class="btn btn-primary">Bài 5</a><br>
		<a href="${pageContext.request.contextPath}/login" class="btn btn-primary">Login</a><br>
	<h5>-------------------------------</h5><br>
</div>
        
        
        
        
    </div>
</body>
</html>
