<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
	function CheckForm() {
		/* alert("아이디 : " + document.loginForm.id.value + "\n" + 
		"비밀번호 : " + document.loginForm.passwd.value); */

		/* if (loginForm.id.value == "") {
			alert("아이디를 입력해 주십시오.");
			loginForm.id.focus();
			return false;
		} */
		
		/* if (!isNaN(document.loginForm.id.value.substr(0, 1))) {
			alert("아이디는 숫자로 시작할 수 없습니다.");
			document.loginForm.id.select();
		} */
		
		/* var regExp = /Java/i;
		var str = document.loginForm.id.value;
		var result = regExp.exec(str);
		alert(result[0]); // 책에서 표현한 코드
		alert(result); */
		
		var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		var str = document.loginForm.id.value;
		if (!regExpId.test(str)) {
			alert("아이디는 숫자로 시작할 수 없습니다.");
			return;
		}		
	}
</script>
<body>
	<form name="loginForm">
		<p> 아이디 : <input type="text" name="id">
		<p> 비밀번호 : <input type="password" name="passwd">
		<p> <input type="submit" value="전송" onclick="CheckForm()">
	</form>
</body>
</html>