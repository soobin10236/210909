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
			<legend>로그인</legend>
			<div>
				<span>아이디</span>
				<input type="text" placeholder="아이디 입력" name="id"value="tiger123">
			</div>
			<div>
				<span>비밀번호</span>
				<input type="text" placeholder="비밀번호" name="ps" value="1234">
			</div>

			<div>
				<input type="submit" value="로그인" />
			</div>
			<hr>
			<div>
				<span><a href="findID.jsp">ID 찾기</a></span> 
				<span><a href="findPW.jsp">PW 찾기</a></span> 
				<span><a href="memberRegister.jsp">회원가입</a></span>
			</div>
		</fieldset>
	</form>
</body>
</html>