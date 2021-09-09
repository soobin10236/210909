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
			<legend>PW 찾기</legend>
			<div>
				<span>아이디</span>
				<input type="text" placeholder="아이디 입력" name="id" value="admin">
			</div>
			<div>
				<span>이메일</span>
				<input type="text" placeholder="이메일 입력" name="email"value="asd123@naver.com">
			</div>

			<div>
				<input type="submit" value="PW 찾기" />
			</div>
			<hr>
			<div align="right">
				<span ><a href="index.jsp">돌아가기</a></span>
			</div>
		</fieldset>
	</form>
</body>
</html>