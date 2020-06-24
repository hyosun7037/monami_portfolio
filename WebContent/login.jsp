<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>loginPage</title>
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

a {
	text-decoration: none;
	color: #333;
}

#main_container {
	background: rgba(0, 0, 0, 0.5);
	height: 100vh;
}

#login {
	width: 600px;
	height: 600px;
	margin: 0 auto;
}

#login_form {
	border-radius: 10px;
	padding: 50px;
	background: #fff;
	text-align: center;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	border: 1px solid rgba(0, 0, 0, 0.2);
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
				<!--로그인 폼-->
				<form class="login_form_con">
					<h3 class="login" style="letter-spacing: -1px;">로그인</h3>

					<p>
						<input type="submit" value="Sign in with Google" class="btn" style="background-color: #217Af0">
					</p>

					<hr>
					<label> <!-- <span>ID</span> -->
						<p style="text-align: left; font-size: 12px; color: #666">Username</p> <input type="text" placeholder="아이디를 입력" class="size"> <!-- <input type="submit" value="확인"> -->
						<p></p>
					</label> <label> <!-- <span>PW</span> -->
						<p style="text-align: left; font-size: 12px; color: #666">Password</p> <input type="text" placeholder="비밀번호를 입력" class="size"> <!-- <input type="submit" value="확인"> -->
					</label>

					<p>
						<input type="submit" value="Sign in" class="btn">
					</p>
				</form>
				<hr>
				<p class="find">
					<span><a href="#">아이디 찾기</a></span> <span><a href="#">비밀번호 찾기</a></span> <span><a href="join.html">회원가입</a></span>
				</p>
			</div>
			<div>
				<script src="js/index.js"></script>
			</div>
			<!--con-->
</body>
</html>