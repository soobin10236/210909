<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="loginOk.jsp">
		<fieldset style="width: 200px">
			<legend>�α���</legend>
			<div>
				<span>���̵�</span>
				<input type="text" placeholder="���̵� �Է�" name="id"value="tiger123">
			</div>
			<div>
				<span>��й�ȣ</span>
				<input type="text" placeholder="��й�ȣ" name="ps" value="1234">
			</div>

			<div>
				<input type="submit" value="�α���" />
			</div>
			<hr>
			<div>
				<span><a href="findID.jsp">ID ã��</a></span> 
				<span><a href="findPW.jsp">PW ã��</a></span> 
				<span><a href="memberRegister.jsp">ȸ������</a></span>
			</div>
		</fieldset>
	</form>
</body>
</html>