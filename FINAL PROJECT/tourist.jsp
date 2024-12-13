<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>울산 5대 관광명소</title>
<style>
body {
	font-family: Arial, sans-serif;
	line-height: 1.6;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

h1 {
	text-align: center;
	margin-top: 50px;
}

.tourist-list {
	display: flex; /* flexbox 사용 */
	justify-content: flex-end; /* 항목들을 오른쪽으로 배치 */
	align-items: center; /* 항목들을 세로로 중앙 정렬 */
	margin: 20px auto;
	width: 80%;
	max-width: 1200px;
	flex-wrap: wrap; /* 화면 크기에 따라 줄 바꿈 */
}

.tourist-item {
	background-color: white;
	padding: 15px;
	margin: 10px;
	border-radius: 8px;
	box-shadow: 0 3px 5px rgba(0, 0, 0, 0.1);
	width: 18%; /* 각 항목의 너비를 18%로 설정하여 수평으로 배치 */
	box-sizing: border-box; /* padding과 margin이 너비에 영향을 미치지 않도록 */
}

.tourist-item h2 {
	margin: 0;
	font-size: 24px;
}

.tourist-item p {
	margin: 5px 0;
	font-size: 16px;
}

.tourist-item image {
	width: 100%; 
	height: 200px;
	object-fit: cover; /* 비율을 유지하며 박스를 꽉 채우도록 설정 */
	border-radius: 8px; /* 이미지 테두리 둥글게 */
	margin-bottom: 10px; /* 이미지와 텍스트 사이에 여백 추가 */
}
</style>
</head>
<body>
	<h1>울산 5대 관광지</h1>
	<div class="tourist-list">
		<div class="tourist-item">
			<!-- 강동산하해변 클릭시 상세 페이지로 이동 -->
			<a href="beach.jsp"> <!-- 링크 추가 --> <img
				src="../imigefile/imageFile/강동산하해변.jpg" alt="강동산하해변">
				<h2>1. 강동산하해변</h2>
				<p>강동산하해변</p>
		</div>

		<div class="tourist-item">
			<!-- 강동사랑길2구간 클릭시 상세 페이지로 이동 -->
			<a href="loveroad.jsp"> <!-- 링크 추가 -->
				<h2>2. 강동사랑길2구간</h2> <img src="../imigefile/imageFile/강동사랑길2구간.jpg"
				alt="강동사랑길2구간">
				<p>강동사랑길2구간</p>
		</div>

		<div class="tourist-item">
			<!-- 편백산림욕장 클릭시 상세 페이지로 이동 -->
			<a href="forestbath.jsp"> <!-- 링크 추가 --> <img
				src="../imigefile/imageFile/편백산림욕장.jpg" alt="편백산림욕장">
				<h2>3.편백산림욕장</h2>
				<p>편백산림욕장</p>
		</div>

		<div class="tourist-item">
			<!-- 박상진호수공원 클릭시 상세 페이지로 이동 -->
			<a href="park.jsp"> <!-- 링크 추가 --> <img
				src="../imigefile/imageFile/박상진호수공원.jpg" alt="박상진호수공원">
				<h2>4.박상진호수공원</h2>
				<p>박상진호수공원</p>
		</div>

		<div class="tourist-item">
			<!-- 달천철장 클릭시 상세 페이지로 이동 -->
			<a href="moon.jsp"> <!-- 링크 추가 --> <img
				src="../imigefile/imageFile/달천철장.jpg" alt="달천철장">
				<h2>5.달천철장</h2>
				<p>달천철장(達川鐵場)</p>
		</div>
	</div>
</body>
</html>
