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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
     header {
            background-color: #333;
            padding: 10px;
            color: white;
            text-align: center;
        }
        
        header .logo {
            color: white;
            font-size: 24px;
            font-weight: bold;
            text-decoration: none;
        }
        
        header .navigation {
            margin-top: 10px;
        }
        
        header .navigation a {
            color: white;
            margin-right: 10px;
            text-decoration: none;
        }
    footer {
            background-color: #333;
            padding: 10px;
            color: white;
            text-align: center;
        }
         header {
        /* ... */
        margin-bottom: 40px; /* Thêm khoảng trống dưới header */
    }
     header {
        background-color: #222;
        color: #fff;
        padding: 10px 0;
    }
    
    .header-top {
        display: flex;
        align-items: center;
        justify-content: space-between;
    }
    
    .logo img {
        max-height: 40px;
    }
    
    .search-box {
        position: relative;
    }
    
    .search-box input[type="text"] {
        width: 200px;
        padding: 5px 10px;
        border: none;
        border-radius: 3px;
    }
    
    .search-box button[type="submit"] {
        position: absolute;
        right: 0;
        top: 0;
        padding: 5px 10px;
        background-color: #ccc;
        border: none;
        border-radius: 3px;
        cursor: pointer;
    }
    
    .user-box a {
        color: #fff;
        margin-left: 10px;
        text-decoration: none;
    }
    
    .cart-box a {
        color: #fff;
        position: relative;
        text-decoration: none;
    }
    
    .cart-box .fa-shopping-cart {
        font-size: 18px;
        margin-right: 5px;
    }
    
    .cart-count {
        position: absolute;
        top: -8px;
        right: -8px;
        background-color: #ff3636;
        color: #fff;
        font-size: 12px;
        font-weight: bold;
        width: 18px;
        height: 18px;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    
    .main-navigation {
        margin-top: 10px;
    }
    
    .menu {
        list-style: none;
        padding: 0;
        margin: 0;
        display: flex;
    }
    
    .menu li {
        margin-right: 20px;
    }
    
    .menu li a {
        color: #fff;
        text-decoration: none;
    }
    
    .menu li:last-child {
        margin-right: 0;
    }
    
    </style>
</head>

<!-- search.jsp -->
<body>
<header>
    <div class="container">
        <div class="header-top">
            <a href="/product/search" class="logo">
                <img src="/images/logo.png" alt="Logo">
            </a>
            <div class="search-box">
                <input type="text" placeholder="Tìm kiếm">
                <button type="submit">Tìm kiếm</button>
            </div>
            <div class="user-box">
                <a href="/account/login">Đăng nhập</a>
                <a href="/account/register">Đăng ký</a>
                <a href="/admin/loginIndex">Quản lý</a>
            </div>
            <div class="cart-box">
                <a href="/product/search/add-to-cart">
                    <i class="fa fa-shopping-cart" style="font-size:48px;color:red"></i>
                    <span class="cart-count">0</span>
                </a>
            </div>
        </div>
        <nav class="main-navigation">
            <ul class="menu">
                <li><a href="#">Điện thoại</a></li>
                <li><a href="#">Laptop</a></li>
                <li><a href="#">Tablet</a></li>
                <li><a href="#">Phụ kiện</a></li>
                <li><a href="#">Khuyến mãi</a></li>
            </ul>
        </nav>
    </div>
</header>




<div class="container">
    <div class="row">
        <c:forEach var="product" items="${products}">
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="card">
                    <img src="/images/${product.image}" alt="Product Image" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">${product.name}</h5>
                        <p class="card-text">Giá: ${product.price}$</p>
                        <p class="card-text">ID: ${product.id}</p>
                        <div class="btn-group d-flex justify-content-between">
                            <form action="/product/search/add-to-cart" method="post">
                                <input type="hidden" name="name" value="${product.name}">
                                <input type="hidden" name="price" value="${product.price}">
                         		 <input type="hidden" name="id" value="${product.id}">
                         		 <input type="hidden" name="image" value="${product.image}">
                  				<a href="/product/search/product/${product.id}" class="btn btn-primary btn-sm">Xem chi tiết</a>
                         		 
                                
                                <button type="submit" class="btn btn-warning btn-sm">Thêm vào giỏ hàng</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

   <footer>
        <p>&copy; 2023 Our Online Store. All rights reserved.</p>
    </footer>



 
</body>
	
</html>