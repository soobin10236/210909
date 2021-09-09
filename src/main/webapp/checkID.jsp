<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복확인</title>
</head>
<body>
	<%
	String inputID = request.getParameter("inputID"); // 아이디 input에서 받은 값을 넘겨받음
	
	Connection conn = null; // DB 커넥션 연결 객체 생성
	Statement stmt = null; // statement 쿼리를 담는 객체 생성
	ResultSet rs = null; // Select 결과를 담는 객체 생성

	String URL = "jdbc:mysql://localhost:3306/db01?serverTimezone=UTC";
	String USERNAME = "root"; // DBMS접속 시 아이디
	String PASSWORD = "123123"; // DBMS접속 시 비밀번호

	Class.forName("com.mysql.cj.jdbc.Driver");
	conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);

	String sql = "SELECT mb_id FROM dz_member WHERE mb_id = '" + inputID + "'";
	stmt = conn.createStatement();
	rs = stmt.executeQuery(sql);
	
	if(rs.next()) {
			out.println("<span style='color:#FF0000'>이미 존재하는 아이디입니다.</span>");
			return;
	}
	
	out.println("<strong>사용 가능한 아이디입니다.</strong>");
	
	stmt.close();
	conn.close();
	%>
</body>
</html>