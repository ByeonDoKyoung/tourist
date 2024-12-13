<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방문자 수 페이지</title>
</head>
<body>
	<h2>방문자 수</h2>
	
	<%
		// 세션에서 방문자 수를 추적
		Integer visitCount=(Integer) session.getAttribute("visitCount");	
	
		if (visitCount == null){
			//세션이 처음 시작되면 1로 초기화.
			visitCount = 1;
		} else {
			// 방문할때마다 카운트를 증가.
			visitCount++;
		}
		
		// 방문자수 세션에 저장
		session.setAttribute("visitCount",visitCount);
	%>
	
	<p>현재 방문자 수: <%=visitCount %></p>
</body>
</html>