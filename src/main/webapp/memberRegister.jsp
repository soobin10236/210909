<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="insertMember.jsp">
		<fieldset style="width: 200px">
			<legend>회원가입</legend>
			<div>
				<span>아이디</span> 
				<input type="text" placeholder="아이디 입력" name="id" value="tiger123">
				<input type="button" value="중복확인" onclick="javascript:openWin();"/>
			</div>
			<div>
				<span>비밀번호</span> <input type="text" placeholder="비밀번호"
					name="ps" value="1234">
			</div>
			<div>
				<span>이름</span> <input type="text" placeholder="이름" name="name"
					value="soobin">
			</div>
			<div>
				<span>생년월일</span> <input type="text" placeholder="생년원일"
					name="birth" value="951212">
			</div>
			<div>
				<span>연락처</span> <input type="text" placeholder="연락처"
					name="phone" value="01048492160">
			</div>
			<div>
				<span>이메일</span> <input type="text" placeholder="이메일"
					name="email" value="asdf123@naver.com">
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

	<script language="javascript" type="text/javascript">  


		function openWin() {
			window.open("checkID.jsp", "중복확인",
						"width=200, height=100, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
		}
	</script>

</body>


</html>