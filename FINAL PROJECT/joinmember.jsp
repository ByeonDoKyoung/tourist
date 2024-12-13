<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입페이지</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #f4f7fc;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.signup-container {
	background-color: white;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
	width: 100%;
	max-width: 400px;
	text-align: center;
}

h2 {
	margin-bottom: 20px;
	color: #333;
}

label {
	font-size: 14px;
	color: #555;
	text-align: center;
	display: block;
	margin-bottom: 5px;
}

.error {
	color: red;
	font-size: 14px;
}


input[type="text"],input[type="password"],input[type="email"]{
	width:100%;
	padding:10px;
	margin-bottom:15px;
	border:1px solid #ccc;
	border-radius:5px;
	font-size:14px;
}

input[type="submit"]{
	width:100%;
	padding:10px;
	background-color:#4CAF50;
	border:none;
	color:white;
	font-size:16px;
	border-radius:5px;
	cursor:pointer;
	transition:background-color 0.3s;
}

input[type="submit"]:hover{
	background-color:#4CAF50;
}
.form-footer {
	margin-top: 20px;
	font-size: 14px;
	clear:both;
}

.form-footer a{
	color:#4caf50;
	text-decoration:none;
}

.form-footer a:hover{
	text-decoration:underline;
}
</style>
</head>
<body>
	<div class="signup-container">
		<h2>회원가입</h2>
		<form action="signupAction.jsp" method="post">
			  <label for="username">아이디:</label><br>
            <input type="text"  placeholder="아이디" id="username" name="username" required><br>

            <label for="password">비밀번호:</label><br>
            <input type="password" placeholder="비밀번호" id="password" name="password" required><br>

            <label for="email">이메일:</label><br>
            <input type="email" placeholder="이메일" id="email" name="email" required><br>

            <input type="submit" value="회원가입">
		</form>
		<div class="form-footer">
			<p>이미 계정이 있으신가요? <a href="#">로그인</a></p>
		</div>
	</div>
</html>