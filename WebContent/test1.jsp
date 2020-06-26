<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/monami/test?cmd=test" method="post">
		<input name="url" type="text">
		<button type="submit">데이터넣기</button>
		
		<input name="value" type="text">
		<button type="submit">value값 넣기</button>
	</form>
</body>
</html>