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
				Connection conn = null; // DB Ŀ�ؼ� ���� ��ü ����
				Statement stmt = null; // statement ������ ��� ��ü ����
				ResultSet rs = null; // Select ����� ��� ��ü ����

				// DBMS������ db�� , Timezone error �ذ�
				String URL = "jdbc:mysql://localhost:3306/db01?serverTimezone=UTC";
				String USERNAME = "root";// DBMS���� �� ���̵�
				String PASSWORD = "1234";// DBMS���� �� ��й�ȣ

				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);

				String sql = ""; // Query��
				stmt = conn.createStatement();
				sql = "select mb_id from dz_member where mb_email='"+email+"'";
				rs = stmt.executeQuery(sql);
				
				if(rs.next()){
			%>
	<h1>ID ã�� ����</h1>
	<div>
	ȸ������ ���̵�� <%=rs.getString(1) %> �Դϴ�.
	</div>
	<div>
		<span><a href="index.jsp">���ư���</a></span>
	</div>
		<%} else{%>
	<h1>ID ã�� ����</h1>
	<div>�̸��� �Է��� �ùٸ��� �ʽ��ϴ�..</div>
	<div>
		<span><a href="findID.jsp">���ư���</a></span>
	</div>
	<%
	}
	%>
</body>
</html>