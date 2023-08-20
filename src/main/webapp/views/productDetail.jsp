<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Product Detail</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.js"></script>
<link href="css.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="fontawesome-free-6.2.1-web/css/all.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<!-- <link rel="stylesheet" href="css/bootstrap.min.css"> -->
<link rel="stylesheet" href="fontawesome-free-6.2.1-web/css/all.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
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

.header_top {
	background: linear-gradient(90.13deg, #43da43dc 18.76%, #0a8023 96.9%);
	background-image: linear-gradient(90.13deg, rgba(128, 235, 133, 0.808)
		18.76%, rrgb(2, 124, 23) 96.9%);
	background-position-x: initial;
	background-position-y: initial;
	background-size: initial;
	background-repeat-x: initial;
	background-repeat-y: initial;
	background-attachment: initial;
	background-origin: initial;
	background-clip: initial;
	background-color: initial;
}

.container {
	width: 1130px !important;
}

.container {
	width: 1310px !important;
	margin-right: auto;
	margin-left: auto;
	padding-left: 15px;
	padding-right: 15px;
}

.header_top-right {
	display: flex;
	align-items: center;
}

.header_top-flex {
	display: flex;
	justify-content: space-between;
	align-items: center;
	height: 48px;
}

div {
	display: block;
}

* {
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
	text-rendering: geometricPrecision;
}

.header_cate ul {
	display: flex;
	align-items: center;
}

ul {
	padding: 0;
	margin: 0;
	list-style: none;
}

ul {
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	padding-inline-start: 40px;
}

li {
	display: list-item;
	text-align: -webkit-match-parent;
}

.header_click {
	display: flex;
	padding: 0 8px;
	border-right: 1px solid #ed1c24;
	font-weight: 500;
	font-size: 14px;
	line-height: 20px;
	color: #fff;
}

a {
	outline: none;
}

.header_action {
	display: flex;
	align-items: center;
	margin-left: 12px;
}

*, ::after, ::before {
	box-sizing: border-box;
}

* {
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
	text-rendering: geometricPrecision;
}

input {
	text-rendering: auto;
	color: fieldtext;
	letter-spacing: normal;
	word-spacing: normal;
	line-height: normal;
	text-transform: none;
	text-indent: 0px;
	text-shadow: none;
	display: inline-block;
	text-align: start;
	appearance: auto;
	-webkit-rtl-ordering: logical;
	cursor: text;
	background-color: field;
	margin: 0em;
	padding: 1px 2px;
	border-width: 2px;
	border-style: inset;
	border-color: -internal-light-dark(rgb(118, 118, 118),
		rgb(133, 133, 133));
	border-image: initial;
}

.header_action .box-search {
	border-radius: 4px;
	height: 28px;
	display: flex;
	align-items: center;
	font-size: 13px;
	line-height: 18px;
	color: #ff7772;
	width: 29px;
	transition: all .3s;
	box-sizing: content-box;
}

.header__middle {
	box-shadow: 0 4px 20px rgb(0 0 0/ 5%);
	background: rgb(31, 29, 29);
}

*, ::after, ::before {
	box-sizing: border-box;
}

* {
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
	text-rendering: geometricPrecision;
}

div {
	display: block;
}

.container {
	width: 1130px !important;
}

.container {
	width: 1310px !important;
	margin-right: auto;
	margin-left: auto;
	padding-left: 15px;
	padding-right: 15px;
}

.header__nav-flex .menu-nav {
	display: flex;
	align-items: center;
}

ul {
	padding: 0;
	margin: 0;
	list-style: none;
}

ul {
	display: block;
	list-style-type: disc;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	padding-inline-start: 40px;
}

li {
	display: list-item;
	text-align: -webkit-match-parent;
}

.header__nav-flex .menu-nav li .nav-link {
	margin-right: 9.75px;
}

.header__nav-flex .menu-nav li .nav-link {
	padding: 8px 0;
	font-weight: 500;
	font-size: 12px;
	line-height: 18px;
	text-transform: uppercase;
	color: white;
	display: flex;
	align-items: center;
	margin-right: 20.4px;
}

a {
	outline: none;
}

a {
	text-decoration: none;
	color: #666;
	outline: none;
}

*, ::after, ::before {
	box-sizing: border-box;
}

* {
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
	text-rendering: geometricPrecision;
}

user agent stylesheet
a:-webkit-any-link {
	color: -webkit-link;
	cursor: pointer;
	text-decoration: underline;
}

user agent stylesheet
li {
	text-align: -webkit-match-parent;
}

ul {
	padding: 0;
	margin: 0;
	list-style: none;
}

user agent stylesheet
ul {
	list-style-type: disc;
}

.gearvn-header-menu {
	display: none;
}

.gearvn-header-menu {
	color: #333;
	cursor: pointer;
	align-items: center;
	user-select: none;
	z-index: 999;
	margin-right: 7px;
}

.gearvn-header-navigation .gearvn-header-navigation-block {
	flex: 1;
}

.gearvn-header-navigation .gearvn-header-navigation-block {
	flex: 1;
}

.gearvn-header-navigation .gearvn-header-navigation-block .gearvn-header-banner
	{
	margin-top: 5px;
	overflow: hidden;
}

.gearvn-header-navigation .gearvn-header-navigation-block .gearvn-header-banner
	{
	margin-top: 5px;
	overflow: hidden;
}

.gearvn-header-navigation .gearvn-header-navigation-block .gearvn-header-banner .left
	{
	width: 100%;
}

.gearvn-header-navigation .gearvn-header-navigation-block .gearvn-header-banner .left
	{
	float: left;
	/* width: 67%; */
	/* width: 735px; */
	width: calc(100%/ 3 * 2);
}

.gearvn-header-navigation .gearvn-header-navigation-block .gearvn-header-banner .left
	{
	float: left;
	*width: 66%;
}

.gearvn-header-navigation .gearvn-header-navigation-block .gearvn-header-banner .left .slider-wrap
	{
	width: 100%;
}

.gearvn-header-navigation .gearvn-header-navigation-block .gearvn-header-banner .left .slider-wrap
	{
	width: 100%;
	position: relative;
}

.gearvn-header-navigation .gearvn-header-navigation-block .gearvn-header-banner .left .slider-wrap
	{
	width: 100%;
	position: relative;
}

* {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

user agent stylesheet
div {
	display: block;
}

body {
	font-family: "Segoe UI", Helvetica, Arial, sans-serif;
	font-size: 14px;
	line-height: 1.42857143;
	color: #333;
	background-color: #fff;
}

.gearvn-header-navigation .gearvn-header-navigation-block .gearvn-header-banner .left
	{
	width: 100%;
}

.gearvn-header-navigation .gearvn-header-navigation-block .gearvn-header-banner .left
	{
	float: left;
	/* width: 67%; */
	/* width: 735px; */
	width: calc(100%/ 3 * 2);
}

.gearvn-header-navigation .gearvn-header-navigation-block .gearvn-header-banner .left
	{
	float: left;
	*width: 66%;
}

.gearvn-header-navigation .gearvn-header-navigation-block .gearvn-header-banner .right
	{
	display: none;
}

.gearvn-header-navigation .gearvn-header-navigation-block .gearvn-header-banner .right
	{
	float: left;
	/* width: 33%; */
	width: calc(100%/ 3);
	/* width: 367px; */
}

.gearvn-header-navigation .gearvn-header-navigation-block .gearvn-header-banner .right
	{
	float: left;
	width: 33%;
}

.Old:hover {
	text-decoration: underline;
	color: #ed1c24;
}

.New:hover {
	text-decoration: underline;
	color: #ed1c24;
}

.buttonBuy :hover {
	background-color: rgb(29, 179, 74);
}
</style>
</head>

<!-- search.jsp -->
<body ng-app="mymapp"
	style="background-color: rgba(231, 247, 232, 0.918);">

	<div class="header">
		<div class="header_sc">
			<div class="header_top">
				<div class="container">
					<div class="header_top-flex">
						<div class="header_top-left">
							<a href="/product/search" class="logo"> <img
								src="/images/logo.png" alt="Logo"
								style="width: 60px; height: 50px;">
							</a>


						</div>
						<div class="header_top-right">
							<div class="header_cate">
								<ul>
									<li><a href="/account/login" target="_blank" title="Shop"
										class="header_click"><span class="icon"> <svg
													fill="#FF7772" height="16px" width="16px" version="1.1"
													id="Layer_1" xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink"
													viewBox="0 0 472.615 472.615" xml:space="preserve">
													<g id="SVGRepo_bgCarrier" stroke-width="0"></g>
													<g id="SVGRepo_tracerCarrier" stroke-linecap="round"
														stroke-linejoin="round"></g>
													<g id="SVGRepo_iconCarrier"> <g> <g> <circle
														cx="236.308" cy="117.504" r="111.537"></circle> </g> </g> <g> <g> <path
														d="M369,246.306c-1.759-1.195-5.297-3.493-5.297-3.493c-28.511,39.583-74.993,65.402-127.395,65.402 c-52.407,0-98.894-25.825-127.404-65.416c0,0-2.974,1.947-4.451,2.942C41.444,288.182,0,360.187,0,441.87v24.779h472.615V441.87 C472.615,360.549,431.538,288.822,369,246.306z"></path> </g> </g> </g></svg>
										</span> Login</a></li>
									<li><a href="/account/register" target="_blank"
										title="Support" class="header_click"> <span class="icon">
												<svg height="18px" width="18px" version="1.1" id="Capa_1"
													xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink"
													viewBox="0 0 502.987 502.987" xml:space="preserve"
													fill="#FF7772">
													<g id="SVGRepo_bgCarrier" stroke-width="0"></g>
													<g id="SVGRepo_tracerCarrier" stroke-linecap="round"
														stroke-linejoin="round"></g>
													<g id="SVGRepo_iconCarrier"> <g> <g> <circle
														style="fill:#FF7772;" cx="185.994" cy="102.008"
														r="102.008"></circle> <path style="fill:#FF7772;"
														d="M334.444,261.459c-13.244,0-25.95,2.243-37.9,6.191c-25.216-32.335-65.273-53.323-110.55-53.323 c-76.361,0.022-138.226,59.471-138.226,132.898v73.794h172.437c16.221,47.585,61.261,81.969,114.239,81.969 c66.611,0,120.775-54.186,120.775-120.775S401.055,261.459,334.444,261.459z M240.309,382.213 c0-51.899,42.236-94.156,94.135-94.156c51.942,0,94.178,42.257,94.178,94.156c0,51.921-42.236,94.156-94.178,94.156 C282.545,476.369,240.309,434.134,240.309,382.213z"></path> <path
														style="fill:#ff0000;"
														d="M351.269,312.97h-29.983c-0.022,14.366,0,52.158,0,52.158s-32.529,0-48.621,0.043v29.962 c16.092-0.022,48.621-0.022,48.621-0.022s0,37.749-0.022,52.18h29.983c0.022-14.431,0.022-52.18,0.022-52.18s32.507,0,48.599,0 v-29.983c-16.092,0-48.599,0-48.599,0S351.226,327.337,351.269,312.97z"></path> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> </g> </g></svg>
										</span> Register
									</a></li>
									<li><a href="/product/search/add-to-cart" target="_blank"
										title="Driver" class="header_click"> <span class="icon">
												<svg fill="#FF7772" height="22px" width="22px" version="1.1"
													id="Capa_1" xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="http://www.w3.org/1999/xlink"
													viewBox="-137.02 -137.02 781.54 781.54"
													xml:space="preserve" stroke="#e20808"
													stroke-width="0.00507496">
													<g id="SVGRepo_bgCarrier" stroke-width="0"></g>
													<g id="SVGRepo_tracerCarrier" stroke-linecap="round"
														stroke-linejoin="round"></g>
													<g id="SVGRepo_iconCarrier"> <g> <g> <g> <path
														d="M254.88,262.344c8.671-12.813,14.798-27.503,17.753-43.228h43.551v-0.022V174.81h-43.551 c-3.02-15.833-9.103-30.458-17.774-43.249l30.695-30.717l-31.342-31.364l-30.738,30.717c-12.77-8.715-27.46-14.798-43.249-17.839 V38.849h-44.285v43.508c-15.79,3.085-30.458,9.124-43.206,17.839L61.994,69.479L30.609,100.8l30.738,30.76 c-8.671,12.791-14.776,27.395-17.796,43.249H0v44.306h43.551c3.063,15.725,9.146,30.415,17.796,43.228l-30.738,30.738 l31.385,31.321l30.695-30.76c12.791,8.671,27.46,14.841,43.249,17.861v43.551h44.328v-43.551 c15.747-3.041,30.458-9.189,43.249-17.817l30.738,30.717l31.342-31.321L254.88,262.344z M158.071,245.26 c-26.661,0-48.319-21.679-48.319-48.362c0-26.705,21.657-48.319,48.319-48.319c26.683,0,48.362,21.614,48.362,48.319 C206.432,223.581,184.754,245.26,158.071,245.26z"></path> <path
														d="M507.496,365.28v-33.694h-33.09c-2.243-12.015-6.881-23.124-13.525-32.852l23.34-23.34l-23.836-23.836l-23.318,23.34 c-9.728-6.622-20.924-11.238-32.852-13.568v-33.111h-33.694v33.09c-12.015,2.351-23.145,6.946-32.831,13.568l-23.426-23.34 l-23.836,23.814l23.34,23.383c-6.622,9.728-11.238,20.924-13.568,32.874h-33.068v33.694h33.068 c2.308,11.95,6.946,23.167,13.568,32.852l-23.34,23.34l23.836,23.814l23.34-23.383c9.685,6.665,20.88,11.282,32.831,13.611 v33.111h33.694v-33.111c11.993-2.287,23.124-6.946,32.831-13.525l23.34,23.296l23.814-23.814l-23.34-23.34 c6.665-9.685,11.238-20.967,13.525-32.852L507.496,365.28L507.496,365.28z M387.303,385.189 c-20.255,0-36.757-16.48-36.757-36.778c0-20.277,16.502-36.735,36.757-36.735c20.298,0,36.757,16.458,36.757,36.735 C424.06,368.731,407.602,385.189,387.303,385.189z"></path> </g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> <g> </g> </g> </g></svg>
										</span> Cart
									</a></li>
								</ul>
							</div>
							<div class="header_action"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="header__middle">
				<div class="header__postion">
					<div class="header__nav">
						<div class="container">
							<div class="header__nav-flex">

								<ul class="menu-nav">
									<li class="active_menu"><a href="/product/search"
										title="Trang chủ" class="nav-link home"> <svg width="18"
												height="18" viewBox="0 0 18 18" fill="none"
												xmlns="http://www.w3.org/2000/svg">
                                            <path
													d="M3.23348 7.8415L8.81161 2.47448C9.12279 2.17517 9.62721 2.17517 9.93839 2.47448L15.5165 7.8415C15.6659 7.98526 15.75 8.18023 15.75 8.38357V15.7333C15.75 16.1567 15.3932 16.5 14.9531 16.5H10.9688V11.133H7.78125V16.5H3.79688C3.35678 16.5 3 16.1567 3 15.7333V8.38357C3 8.18023 3.08403 7.98526 3.23348 7.8415Z"
													fill="#ED1C24"></path>
                                        </svg>
									</a></li>
									<li><a title="Media" href="" class="nav-link">Search </a></li>
									<li><a title="Thời sự" href="" class="nav-link ">FIND
									</a></li>
									<li><a title="Thế giới" href="" class="nav-link ">GAME
											& TECH </a></li>
									<li><a title="Pháp luật" href="" class="nav-link ">GEFORCE
											EXPRIENCE </a></li>
									<li><a title="Kinh doanh" href="" class="nav-link ">DRIVER
									</a></li>
									<li><a title="Công nghệ" href="" class="nav-link ">NEW
									</a></li>
									<li><a title="Xe" href="/admin/loginIndex"
										class="nav-link ">Quan ly </a></li>


								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<div class="poly-sheet row">

		<aside class="col-md-2"
			style="padding: 20px; padding-left: 70px; border-right: 2px solid rgb(19, 197, 78);">
			<!--CartInfo-->
			<div class="poly-cart">
				<div class="panel panel-default"
					style="background-color: #010722f5; border-style: inset;">
					<div class="panel-body">
						<a href="/product/search" class="logo"> <img
							src="/images/qc.png" alt="Logo"
							style="width: 180px; height: 80px; border-radius: 10px;">
						</a>

					</div>
				</div>
			</div>
			<!--/CartInfo-->

			<!--Search-->


			<div class="nn-cart">
				<div class="panel panel-default"
					style="background-color: #010722f5;">

					<form action="/product/search/search-and-page" method="post">
						<div class="panel-body">
							<input type="text" name="keywords" class="form-control"
								placeholder="Input Keywords" value="${keywords}">
						</div>
					</form>
				</div>
			</div>
			<!--/Search-->

			<!--Category-->
			<div class="panel panel-default" style="border-style: none;">
				<div class="panel-heading"
					style="background-color: #000000; border-style: inset; color: aliceblue;">
					<span class="glyphicon glyphicon-th-list"></span> <strong>Product
						Category</strong>
				</div>

				<div class="list-group">

					<c:forEach var="category" items="${categories}">

						<a class="list-group-item"
							style="background-color: #010722f5; color: aliceblue; border-style: none;"
							href="/product/search/category/${category.id}">${category.name}</a>

					</c:forEach>
				</div>
			</div>
			<div class="panel panel-default" style="border-style: none;">
				<div class="panel-heading"
					style="background-color: #000000; border-style: inset; color: rgb(255, 0, 0);">
					<span class="glyphicon glyphicon-star-empty"></span> <strong>Sắp
						xếp</strong>
				</div>

				<div class="list-group">
					<a class="list-group-item"
						style="background-color: #010722f5; color: aliceblue; border-style: none;"
						href="/product/search/sort-by-price"><i
						class="fas fa-sort-amount-up"></i> Cao đến thấp</a> <a
						class="list-group-item"
						style="background-color: #010722f5; color: aliceblue; border-style: none;"
						href="/product/search/sort-by-priceAsce"><i
						class="fas fa-sort-amount-down"></i> Thấp lên cao</a>


				</div>
			</div>


		</aside>


		<article class="col-xs-9" style="margin: 20px;">

			<div class="row" style="padding-bottom: 50px; padding-left: 126px">
				<div id="carouselExampleIndicators"
					class="carousel slide col-md-9 mt-4" data-ride="carousel">
					<ol class="carousel-indicators" style="padding-left: 380px;">
						<li data-target="#carouselExampleIndicators" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>

					</ol>
					<div class="carousel-inner" style="width: 1150px;">
						<div class="carousel-item active">
							<img class="d-block w-100 img-fluid" src="/images/aaa.png"
								alt="1" style="width: 60px; height: 130px;">

						</div>
						<div class="carousel-item">
							<img class="d-block w-100 img-fluid" src="/images/bbb.png"
								alt="2" style="width: 60px; height: 130px;">

						</div>
						<div class="carousel-item">
							<img class="d-block w-100 img-fluid" src="/images/ccc.png"
								alt="3" style="width: 60px; height: 130px;">

						</div>
						<div class="carousel-item">
							<img class="d-block w-100 img-fluid" src="/images/aaa.png"
								alt="4" style="width: 60px; height: 130px;">

						</div>

					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>

			</div>


			<div class="container">
				<div class="row">
					<div class="product-detail">
						<div class="product-image">
							<img src="/images/${product.image}" alt="Product Image"
								style="width: 300px;">
						</div>
						<div class="product-info">
							<h1 class="product-title">${product.name}</h1>
							<p class="product-price">Giá: ${product.price}$</p>
							<div class="product-features">
								<div class=col-xs-9>
									<h3>Tính năng sản phẩm:</h3>
									<ul>
										<li>Thu cũ Đổi mới: Giảm đến 2 triệu (Tuỳ model máy cũ,
											Không kèm các hình thức thanh toán online, mua kèm)</li>
										<li>Giảm 100,000đ Cho Đơn Hàng Từ 10 Triệu Khi Thanh Toán
											Quét Mã SmartPay QR Bằng Ứng Dụng Ngân Hàng</li>
										<li>Nhập mã MMDIENTU giảm ngay 1% tối đa 100.000đ khi
											thanh toán qua MOMO</li>
										<!-- Thêm các tính năng khác của sản phẩm -->
									</ul>
								</div>
							</div>
							<div class="btn-group d-flex justify-content-between">
								<form action="/product/search/add-to-cart" method="post">
									<input type="hidden" name="name" value="${product.name}">
									<input type="hidden" name="price" value="${product.price}">
									<input type="hidden" name="id" value="${product.id}"> <input
										type="hidden" name="image" value="${product.image}">

									<button type="submit" class="btn btn-warning btn-sm"
										style="font-size: 15px;">Thêm vào giỏ hàng</button>

									<button type="submit" class="btn btn-success btn-sm"
										style="font-size: 15px;">Mua Sản Phẩm</button>





								</form>

							</div>


						</div>

					</div>
				</div>
			</div>


		</article>

	</div>
	<footer>
		<p style="color: red">&copy; 2023 Our Online Store. All rights
			reserved.</p>
	</footer>

</body>
</html>
