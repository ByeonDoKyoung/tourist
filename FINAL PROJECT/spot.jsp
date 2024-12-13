<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>인기관광지</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
	display:flex;
	flex-direction:column;
	min-height:100vh;
}

header {
	background-color: #4CAF50;
	color: white;
	padding: 15px;
	text-align: center;
}

nav {
	margin: 20px;
}

.container {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-around;
}

.card {
	background-color: white;
	width: 250px;
	margin: 10px;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	text-align: center;
}

.card a {
	text-decoration: none;
	color: #4CAF50;
	font-size: 18px;
	display: block;
	margin-top: 10px;
}

.card h3 {
	font-size: 22px;
}

footer {
	background-color: #4CAF50;
	color: white;
	padding: 20px;
	text-align: center;
	position: relative;
	bottom: 0;
	width: 100%;
	margin-top: 40px;
	clear: both;
	margin-top:auto;
}

footer p {
	font-size: 14px;
}

footer a {
	color: #f8f8f8;
	text-decoration: none;
}

footer.social-links a {
	margin: 0 10px;
	font-size: 18px;
	color: white;
}

footer.social-links a:hover {
	color: #4CAF50;
}
</style>
</head>
<body>

	<header>
		<h1>울산 추천 관광지</h1>
	</header>

	<nav>
		<div class="container">
			<!-- 로그인 -->
			<div class="card">
				<h3>로그인하기</h3>
				<a href="joinmember.jsp">로그인/회원가입페이지이동</a>
			</div>

			<!-- 울산 5대 추천 관광지 -->
			<div class="card">
				<h3>울산 관광지</h3>
				<a href="tourist.jsp">울산 추천 관광지</a>

			</div>

			<!--  방문자수 통계 -->
			<div class="card">
				<h3>방문자수 통계</h3>
				<a href="visitor.jsp">월별/관광지통계</a>
			</div>

			<!--  게시판 이동하기 -->
			<div class="card">
				<h3>게시판 이동하기</h3>
				<a href="#">사용자리뷰</a>
			</div>
		</div>
	</nav>
	
	<!--  푸터추가 -->
	<footer>
		<h2>여행지</h2>
		<p>편리하게 정리된 분류별 추천 여행지의 콘텐츠를 제공합니다</p>
		<div class="social-links">
			<a href="#" target="blank">자연</a> 
			<a href="#" target="blank">레져</a> 
			<a href="#" target="blank">체험</a> 
			<a href="#" target="blank">문화/유적</a>
			<a href="#" target="blank">먹거리</a> 
			<a href="#" target="blank">숙박</a>
			<a href="#" target="blank">쇼핑</a>
		</div>
	</footer>
</body>
</html>

