<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.io.*" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    
    Connection conn = null;
    PreparedStatement pstmt = null;
    
    String dbURL = "jdbc:mysql://localhost:3306/user_db";
    String dbUser = "root";
    String dbPassword = "password";  // 자신의 데이터베이스 비밀번호로 변경
    
    try {
        // 데이터베이스 연결
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
        
        // SQL 쿼리 실행
        String sql = "INSERT INTO users (username, password, email) VALUES (?, ?, ?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, username);
        pstmt.setString(2, password);
        pstmt.setString(3, email);
        
        int result = pstmt.executeUpdate();
        
        if (result > 0) {
            out.println("<h2>회원가입이 완료되었습니다.</h2>");
        } else {
            out.println("<h2>회원가입에 실패했습니다.</h2>");
        }
    } catch (Exception e) {
        out.println("<h2>에러 발생: " + e.getMessage() + "</h2>");
    } finally {
        try {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>

