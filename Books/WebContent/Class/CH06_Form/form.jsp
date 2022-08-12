<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form</title>
</head>
<body>
	<h2>radio</h2>
	<p>문제 : 1 + 1 = ?</p>
	<p>
		답안 :
		<input type="radio" name="sol" value="1번" checked>
		1
		<input type="radio" name="sol" value="2번">
		2
		<input type="radio" name="sol" value="3번">
		3
		<input type="radio" name="sol" value="4번">
		4
	</p>

	<h2>==============================</h2>
	<h2>checkbox</h2>
	<p>
		취미 :
		<input type="checkbox" name="hobby1">
		독서
		<input type="checkbox" name="hobby2">
		영화
		<input type="checkbox" name="hobby3">
		운동
	</p>

	<h2>==============================</h2>
	<h2>select</h2>
	<p>
		<select name="city" size="5">
			<option value="서울">서울</option>
			<option value="인천">인천</option>
			<option value="대전">대전</option>
			<option value="대구">대구</option>
			<option value="부산">부산</option>
			<option value="울산">울산</option>
			<option value="광주">광주</option>
			<option value="세종">세종</option>
			<option value="제주">제주</option>
		</select>
	</p>
</body>
</html>