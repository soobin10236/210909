<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Hashtable"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
String driver = "com.mysql.cj.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/db01";
String user = "root";
String pass = "1234";

String id, ps;

RequestDispatcher dispatcher;
HttpSession session;
public void init(){
	System.out.println("드라이버 연결을 시도합니다.");
	try {
		Class.forName(driver);
		System.out.println("mysql드라이버 성공");
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		System.out.println("mysql드라이버 실패");
	}
}

public Connection getConnection() {
	System.out.println("DB Connect를 시도합니다.");
	Connection conn = null;

	try {
		conn = DriverManager.getConnection(url, user, pass);
		System.out.println("DB Connect 성공 : " + conn);

	} catch (SQLException e) {
		// TODO Auto-generated catch block
		System.out.println("DB 연동 실패");
	}

	return conn;
}

public Map<String, String> readIdPsAll(/* String id, String ps */){
	Map<String, String> map = new Hashtable<String, String>();
	
	String sql = "select * from dz_member";
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	init();
	conn = getConnection();
	
	try {
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);

		while (rs.next()) {
			map.put(rs.getString("mb_id"), rs.getString("mb_password"));
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally {
		try {
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	return map;
}

public int isin(String id, String ps, Map<String, String> map){
	if(map.containsKey(id)){
		if(ps.equals(map.get(id)))
			return 1;
		else
			return 2;
	}
	else
		return 3;
}
%>

<%
	id = request.getParameter("id");
	System.out.println(id);
	ps = request.getParameter("ps");
	System.out.println(ps);
	Map<String, String> map = readIdPsAll();
	
	session = request.getSession(false);
	
	int result = isin(id, ps, map);
		
	switch(result){
		
	case 1:	// 로그인 성공 이벤트
		System.out.println(String.format("로그인 성공!! %s님 안녕하세요!",id));%>
		<h1><%=id %>님 안녕하세요.</h1>
		<% break;
		
	case 2:	// 비밀번호 불일치 이벤트
		System.out.println("비밀번호가 일치하지 않습니다.");%>
		<script>alert('비밀번호가 일치하지 않습니다.\n다시 입력해주세요.'); location.href='index.jsp?';</script>
		
		<%break;
		
	case 3: // 아이디 존재 X 이벤트
		System.out.println("존재하지 않는 아이디입니다. 회원 가입을 해주세요.");%>
		<script>alert('존재하지 않는 아이디입니다. \n회원가입을 해주세요.'); location.href='index.jsp';</script>
		<% break;
	}%>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Process</title>
</head>
<body> -->

<!-- </body>
</html> -->