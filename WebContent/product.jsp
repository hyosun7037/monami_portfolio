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
				<ul>
					<li style="font-weight:900; font-size:20px; padding:10px 0;"><a href="#">프리미엄 펜</a></li>
					<li><a href="#">153프리미엄</a></li>
					<li><a href="#">데스크펜/스마트펜</a></li>
					<li><a href="#">파카</a></li>
					<li><a href="#">카렌다쉬</a></li>
					<li><a href="#">카웨코</a></li>
					<li><a href="#">매뉴스크립트</a></li>
				</ul>
				
				<ul>
					<li style="font-weight:900; font-size:20px; padding:10px 0;"><a href="#">펜/펜슬</a></li>
					<li><a href="#">볼펜</a></li>
					<li><a href="#">수성펜/사인펜</a></li>
					<li><a href="#">연필/샤프</a></li>
					<li><a href="#">형광펜</a></li>
				</ul>
				
				<ul>
					<li style="font-weight:900; font-size:20px; padding:10px 0;"><a href="#">마카</a></li>
					<li><a href="#">네임펜/유성매직</a></li>
					<li><a href="#">생활/보드마카</a></li>
					<li><a href="#">패브릭/세라믹마카</a></li>
				</ul>
				
				<ul>
					<li style="font-weight:900; font-size:20px; padding:10px 0;"><a href="#">컬러링/브러쉬</a></li>
					<li><a href="#">컬러링펜</a></li>
					<li><a href="#">브러쉬펜</a></li>
					<li><a href="#">미술용품</a></li>
				</ul>
				
				<ul>
					<li style="font-weight:900; font-size:20px; padding:10px 0;"><a href="#">디자인 문구</a></li>
					<li><a href="#">몰스킨</a></li>
					<li><a href="#">다이어리/노트</a></li>
					<li><a href="#">카드/봉투</a></li>
					<li><a href="#">파우치</a></li>
					<li><a href="#">풀/스티커/테이프</a></li>
					<li><a href="#">스탬프</a></li>
				</ul>
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