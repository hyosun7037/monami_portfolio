<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>joinPage</title>
<link rel="stylesheet" href="css/default.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<style>
body {
	margin: 0 auto;
}

body, table, div, p, span {
	font-family: 'Noto Sans KR';
}

#main_container {
	background: rgba(0, 0, 0, 0.5);
	height: 100vh;
}

a {
	text-decoration: none;
	color: #333;
}

#login {
	width: 600px;
	height: 600px;
	margin: 0 auto;
	/* position: relative; */
	/* background:#ddd; */
}

#login_form {
	/* text-align:center; */
	border-radius: 10px;
	padding: 30px 50px;
	background: #fff;
	text-align: center;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.login {
	font-size: 20px;
	font-weight: 600;
	color: #333;
}

.size {
	width: 300px;
	height: 30px;
	padding-left: 10px;
	background-color: #f4f4f4;
	/* margin-left:10px; */
	border: none;
	border-radius: 5px;
}

.btn {
	width: 310px;
	height: 40px;
	font-size: 15px;
	background-color: #df3278;
	color: #fff;
	border: none;
	cursor: pointer;
	border-radius: 5px;
}

.btn:hover {
	background: #ca296a;
}

hr {
	margin-top: 20px;
	background: #eee;
}

.find {
	color: #ddd;
	font-size: 12px;
}

.find span {
	padding-left: 10px;
}

.find span::before {
	content: '|';
	color: #333;
	padding-right: 10px;
}

.find span:nth-child(1):before {
	content: none;
}

.find span:nth-child(1) {
	padding-left: 0px;
}

.find a:hover {
	color: #707070;
}

.num1 {
	width: 60px;
	text-align: left;
}

.num2 {
	width: 235px;
}

.login_form_con p {
	padding-top: 10px;
}
</style>
</head>
<body>
	<div id="main_container">
		
		<!-- header 영역 -->
		<%@include file="include/header.jsp"%>

		<div id="login">
			<div id="login_form">
				<!--회원가입 폼-->
				<form class="login_form_con">
					<h3 class="login" style="letter-spacing: -1px;">회원가입</h3>

					<!-- <p>
           				 <input type="submit" value="Sign in with Google" class="btn" style="background-color:#217Af0">
       				 </p> 구글로 로그인-->

					<hr>

					<!-- <span>ID</span> -->
					<p style="text-align: left; font-size: 12px; color: #666">username</p>
					<input type="text" placeholder="아이디" class="size">
					<p></p>
					</label>
					<!--아이디-->

					<label> <!-- <span>PW</span> -->
						<p style="text-align: left; font-size: 12px; color: #666">Password</p> <input type="password" placeholder="비밀번호" class="size">
					</label>
					<!--비밀번호-->

					<label> <!-- <span>PW</span> -->
						<p style="text-align: left; font-size: 12px; color: #666"></p> <input type="password" placeholder="비밀번호 확인" class="size">
					</label>
					<!--비밀번호 확인-->

					<label> <!-- <span>PW</span> -->
						<p style="text-align: left; font-size: 12px; color: #666">Mobile Phone</p> <select class="size num1">
							<option value="1" selected>SKT</option>
							<option value="2" selected>KT</option>
							<option value="3" selected>LG</option>
					</select> <input placeholder="-빼고 숫자만 입력" class="size num2" required>
					</label>
					<!--전화번호-->


					<label> <!-- <span>PW</span> -->
						<p style="text-align: left; font-size: 12px; color: #666">E-mail</p> <input type="text" placeholder="이메일" class="size">
					</label>
					<!--이메일-->


					<br>
					<p>
						<input type="submit" value="Create Acoout" class="btn">

					</p>
				</form>

				<hr>
				<p class="find">
					<span><a href="login.jsp">로그인 페이지로 이동</a></span>
				</p>
			</div>
			<div></div>
			<!--con-->
</body>
</html>