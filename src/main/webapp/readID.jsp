<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String email = request.getParameter("email");
		System.out.println(email);
	%>
	<%
				Connection conn = null; // DB 커넥션 연결 객체 생성
				Statement stmt = null; // statement 쿼리를 담는 객체 생성
				ResultSet rs = null; // Select 결과를 담는 객체 생성

				// DBMS접속할 db명 , Timezone error 해결
				String URL = "jdbc:mysql://localhost:3306/db01?serverTimezone=UTC";
				String USERNAME = "root";// DBMS접속 시 아이디
				String PASSWORD = "1234";// DBMS접속 시 비밀번호

				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);

				String sql = ""; // Query문
				stmt = conn.createStatement();
				sql = "select mb_id from dz_member where mb_email='"+email+"'";
				rs = stmt.executeQuery(sql);
				
				if(rs.next()){
			%>
	<h1>ID 찾기 성공</h1>
	<div>
	회원님의 아이디는 <%=rs.getString(1) %> 입니다.
	</div>
	<div>
		<span><a href="index.jsp">돌아가기</a></span>
	</div>
		<%} else{%>
	<h1>ID 찾기 실패</h1>
	<div>이메일 입력이 올바르지 않습니다..</div>
	<div>
		<span><a href="findID.jsp">돌아가기</a></span>
	</div>
	<%
	}
	%>
</body>
</html>