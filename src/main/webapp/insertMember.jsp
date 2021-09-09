<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Model.Person" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 결과</title>
</head>
<body>
	<jsp:useBean id="register" class="Model.Person" />
	<jsp:setProperty name="register" property="*" />

	<%
	// 입력한 정보 공백있는지 검사
	if(register.getId() == null || register.getId() == "" 
	|| register.getPs() == null || register.getPs() == ""
	|| register.getName() == null || register.getName() == ""
	|| register.getBirth() == null
	|| register.getPhone() == null || register.getPhone() == ""
	|| register.getEmail() == null || register.getEmail() == "") {	
		out.println("<script>alert('회원 정보를 입력해주세요.'); history.back();</script>");
		return;
	}
	
	String id = register.getId();
	String ps = register.getPs();
	String name = register.getName();
	int birth = Integer.parseInt(register.getBirth());
	String phone = register.getPhone();
	String email = register.getEmail();
	
	Connection conn = null; // DB 커넥션 연결 객체 생성
	Statement stmt = null; // statement 쿼리를 담는 객체 생성
	ResultSet rs = null;

	String URL = "jdbc:mysql://localhost:3306/db01?serverTimezone=UTC";
	String USERNAME = "root"; // DBMS접속 시 아이디
	String PASSWORD = "123123"; // DBMS접속 시 비밀번호

	Class.forName("com.mysql.cj.jdbc.Driver");
	conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);

	// 아이디 중복확인 체크 후 존재하면 뒤로, 생성 가능하면 회원가입 수행
	String sql = "SELECT mb_id FROM dz_member WHERE mb_id = '" + register.getId() + "'";
	stmt = conn.createStatement();
	rs = stmt.executeQuery(sql);
	
	if(rs.next()) {
		out.println("<script>alert('이미 존재하는 아이디입니다.'); history.back();</script>");
	} else {
		sql = "INSERT into dz_member VALUES('" + id + "', '" + ps + "', '" + name + "', " + birth + ", '" + phone + "', '" + email + "')";
		stmt = conn.createStatement();
		stmt.executeUpdate(sql);
	}
	
	stmt.close();
	conn.close();
	%>
	
	<h1><%=id %>님 회원가입이 완료 되었습니다.</h1>
</body>
</html>