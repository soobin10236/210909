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
			<legend>ȸ������</legend>
			<div>
				<span>���̵�</span> 
				<input type="text" placeholder="���̵� �Է�" name="id" value="tiger123">
				<input type="button" value="�ߺ�Ȯ��" onclick="javascript:openWin();"/>
			</div>
			<div>
				<span>��й�ȣ</span> <input type="text" placeholder="��й�ȣ"
					name="ps" value="1234">
			</div>
			<div>
				<span>�̸�</span> <input type="text" placeholder="�̸�" name="name"
					value="soobin">
			</div>
			<div>
				<span>�������</span> <input type="text" placeholder="�������"
					name="birth" value="951212">
			</div>
			<div>
				<span>����ó</span> <input type="text" placeholder="����ó"
					name="phone" value="01048492160">
			</div>
			<div>
				<span>�̸���</span> <input type="text" placeholder="�̸���"
					name="email" value="asdf123@naver.com">
			</div>

			<div>
				<input type="submit" value="�����ϱ�" />
			</div>
			<hr>
			<div align="right">
				<span><a href="index.jsp">���ư���</a></span>
			</div>
		</fieldset>
	</form>

	<script language="javascript" type="text/javascript">  


		function openWin() {
			window.open("checkID.jsp", "�ߺ�Ȯ��",
						"width=200, height=100, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
		}
	</script>

</body>


</html>