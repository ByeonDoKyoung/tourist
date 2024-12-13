<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta charset="utf-8">
<title>관광지 방문자 통계</title>
<style>
th {
	background-color: aqua;
}

td {
	text-align: center;
}
</style>
<script src="https://d3js.org/d3.v7.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
	<h2>관광지 방문자 통계</h2>
	<table border="1">
		<tr>
			<th width="200">위치명</th>
			<!-- 위치명 칸 넓히기 -->
			<th width="200">시작년월</th>
			<!-- 시작년월 칸 넓히기 -->
			<th width="200">종료년월</th>
			<!-- 종료년월 칸 넓히기 -->
			<th width="100">입장</th>
			<!-- 방문자수 칸 좁히기 -->
		</tr>

		<%
		// MySQL에서 데이터 조회 후 테이블에 출력
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		// 데이터 저장용 변수
		StringBuilder dataset = new StringBuilder(); // D3.js에서 사용할 데이터셋
		int rowCount = 0; // 데이터 행 개수

		// 관광지별 색상 지정
		String colorRed = "#FF5733"; // 강동산하해변 (빨강)
		String colorBlue = "#33FF57"; // 강동사랑길 (파랑)
		String colorPurple = "#8A33FF"; // 편백산림욕장 (보라)
		String colorYellow = "#FFEB33"; // 박상진호수공원 (노랑)

		try {
			// MySQL 데이터베이스 연결
			String jdbcUrl = "jdbc:mysql://localhost:3306/team2"; // DB URL
			String dbId = "root"; // DB 사용자
			String dbPass = "1234"; // DB 비밀번호
			Class.forName("com.mysql.cj.jdbc.Driver"); // JDBC 드라이버 로딩
			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);

			// 쿼리 실행 (한글로 된 필드명 사용)
			String sql = "SELECT 위치명 AS location, 시작년월 AS startDate, 종료년월 AS endDate, 입장 AS visitors FROM visit3;";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			// 표와 그래프 데이터 생성
			while (rs.next()) {
				String location = rs.getString("location");
				String startDate = rs.getString("startDate");
				String endDate = rs.getString("endDate");
				int visitors = rs.getInt("visitors");

				// 표에 출력
		%>
		<tr>
			<td><%=location%></td>
			<td><%=startDate%></td>
			<td><%=endDate%></td>
			<td><%=visitors%></td>
		</tr>
		<%
		// 지역별 색상 매핑
		String color = "";
		if (location.equals("강동산하해변")) {
			color = colorRed;
		} else if (location.equals("강동사랑길2구간")) {
			color = colorBlue;
		} else if (location.equals("편백산림욕장")) {
			color = colorPurple;
		} else if (location.equals("박상진호수공원")) {
			color = colorYellow;
		}

		// D3.js용 데이터셋 구성 (막대그래프)
		dataset.append("{ \"name\": \"").append(location).append(" - ").append(startDate).append("\", \"value\": ")
				.append(visitors).append(", \"color\": \"").append(color).append("\" },");

		rowCount++;
		}

		// 데이터셋이 비어 있으면 빈 배열 처리
		if (rowCount == 0) {
		dataset.append("[]");
		}
		} catch (Exception e) {
		e.printStackTrace();
		} finally {
		if (rs != null)
		try {
			rs.close();
		} catch (SQLException sqle) {
		}
		if (pstmt != null)
		try {
			pstmt.close();
		} catch (SQLException sqle) {
		}
		if (conn != null)
		try {
			conn.close();
		} catch (SQLException sqle) {
		}
		}
		%>
	</table>
	<hr>

	<h2>관광지 방문자 수 막대 그래프 (지역별 색상)</h2>
	<canvas id="barChart"></canvas>

	<script>
		// 막대 그래프
		console.log('지역별 색상 데이터:', [
	<%=dataset.toString()%>
		]);
		var dataset = [
	<%=dataset.toString()%>
		];
		var ctx = document.getElementById('barChart').getContext('2d');
		var barChart = new Chart(ctx, {
			type : 'bar',
			data : {
				labels : dataset.map(function(d) {
					return d.name;
				}),
				datasets : [ {
					label : '방문자 수',
					data : dataset.map(function(d) {
						return d.value;
					}),
					backgroundColor : dataset.map(function(d) {
						return d.color;
					}), // 지역별 색상 적용
					borderColor : dataset.map(function(d) {
						return d.color;
					}), // 테두리 색상
					borderWidth : 1
				} ]
			},
			options : {
				responsive : true,
				scales : {
					x : {
						beginAtZero : true,
						ticks : {
							autoSkip : true,
							maxRotation : 45,
							minRotation : 45
						}
					},
					y : {
						beginAtZero : true
					}
				}
			}
		});
	</script>

</body>
</html>
