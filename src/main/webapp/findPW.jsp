<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="readPW.jsp">
		<fieldset style="width: 200px">
			<legend>PW ã��</legend>
			<div>
				<span>���̵�</span>
				<input type="text" placeholder="���̵� �Է�" name="id" value="admin">
			</div>
			<div>
				<span>�̸���</span>
				<input type="text" placeholder="�̸��� �Է�" name="email"value="asd123@naver.com">
			</div>

			<div>
				<input type="submit" value="PW ã��" />
			</div>
			<hr>
			<div align="right">
				<span ><a href="index.jsp">���ư���</a></span>
			</div>
		</fieldset>
	</form>
</body>
</html>