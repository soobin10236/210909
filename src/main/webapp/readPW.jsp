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
		String id = request.getParameter("id");
		System.out.println(email);
		System.out.println(id);
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
				sql = "select mb_id, mb_password from dz_member where mb_id='"+id+"' and mb_email='"+email+"'";
				rs = stmt.executeQuery(sql);
				
				if(rs.next()){
			%>
	<h1> PW ã�� ����</h1>
	<div>
	<%=rs.getString(1) %>���� ��й�ȣ�� <%=rs.getString(2) %> �Դϴ�.
	</div>
	<div>
		<span><a href="index.jsp">���ư���</a></span>
	</div>
		<%} else{%>
	<h1>PW ã�� ����</h1>
	<div>ID �Ǵ� �̸��� �Է��� �ùٸ��� �ʽ��ϴ�..</div>
	<div>
		<span><a href="findPW.jsp">���ư���</a></span>
	</div>
	<%
	}
	%>
</body>
</html>