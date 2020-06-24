<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/default.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="css/product.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;500;900&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script src="js/index.js"></script>
<title>Monami Product</title>
</head>
<body>
	<div class="main__container">
	
		<!-- header 영역 -->
		<%@include file="include/header.jsp"%>

		<section class="product__menu__wrap">
			<ul class="product__menu">
				<p>PRODUCT</p>
				<li><a href="#">연필</a></li>
				<li><a href="#">색연필</a></li>
				<li><a href="#">프리미엄 펜</a></li>
				<li><a href="#">라이프스타일</a></li>
				<li><a href="#">마카</a></li>
				<li><a href="#">수성펜</a></li>
				<li><a href="#">형광펜</a></li>
				<li><a href="#">유성볼펜</a></li>
			</ul>
		</section>

		<section class="product__con__wrap">
			<div class="product__con1"></div>
			<div class="product__con2"></div>
			<div class="product__con3"></div>
			<div class="product__con4"></div>
			<div class="product__con5"></div>
			<div class="product__con6"></div>
			<div class="product__con7"></div>
			<div class="product__con8"></div>
			<div class="product__con9"></div>
			<div class="product__con10"></div>
			<div class="product__con11"></div>
			<div class="product__con12"></div>
			<div class="product__con13"></div>
			<div class="product__con14"></div>
		</section>
		
		<!-- footer 영역 -->
		<%@include file="include/footer.jsp"%>
		
	</div>
</body>
</html>