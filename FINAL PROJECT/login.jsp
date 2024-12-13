<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인페이지</title>
</head>
<body>
	<div class="login-container">
		<h2>로그인</h2>
		<form action="loginAction.jsp">
			<label for="username">아이디:</label> 
			<input type="text" id="username" name="username" required>
		    <label for="password">비밀번호:</label>
			<input type="password" id="password" name="password" required>

			<input type="submit" class="btn" value="로그인">
		</form>
		
		<div class="error">
			<%= request.getAttribute("errorMessage") != null ? request.getAttribute("errorMessage") : "" %>
		</div>
	</div>

</body>
</html>