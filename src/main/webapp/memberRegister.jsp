<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="insertMember.jsp" name="register">
		<fieldset style="width:200px">
			<legend>회원가입</legend>
			<div>
				<span>아이디</span> 
				<input type="text" placeholder="아이디 입력" name="id" value="tiger123">
				<input type="button" value="중복확인" onclick="javascript:openWin();" />
			</div>
			<div>
				<span>비밀번호</span>
				<input type="text" placeholder="비밀번호" name="ps" value="1234">
			</div>
			<div>
				<span>이름</span>
				<input type="text" placeholder="이름" name="name" value="DongGeon">
			</div>
			<div>
				<span>생년월일</span>
				<input type="text" placeholder="생년원일" name="birth" value="940919">
			</div>
			<div>
				<span>연락처</span>
				<input type="text" placeholder="연락처" name="phone" value="01012345678">
			</div>
			<div>
				<span>이메일</span>
				<input type="text" placeholder="이메일" name="email" value="register_test@naver.com">
			</div>
			<div>
				<input type="submit" value="가입하기" />
			</div>
			<hr>
			<div align="right">
				<span><a href="index.jsp">돌아가기</a></span>
			</div>
		</fieldset>
	</form>

	<script type="text/javascript">  
	function openWin() {
		var inputID = document.register.id.value;
		window.open("checkID.jsp?inputID=" + inputID, "아이디 중복확인", "width=300, height=100, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
	}
	</script>
</body>


</html>