<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 인증</title>
<link rel="stylesheet" href="./webjars/bootstrap/4.3.1/css/bootstrap.css">
<style>
td{
	padding-bottom: 15px;
}
th{
	vertical-align: top;
}
</style>
</head>
<body>
<table style="margin:0px auto;">
	<tr>
		<td style="margin:0px auto;"><h3>이메일 인증</h3></td>
	</tr>
	<tr>
		<th>이메일</th>
		<td>
			<input type="text" placeholder="이메일을 입력해주세요" name="us_email1">
			&nbsp;&nbsp;&#64;&nbsp;&nbsp;
			<select name="us_email2" >
				<option>naver.com</option>
				<option>gmail.com</option>
				<option>daum.net</option>
				<option>사용자 입력</option>
			</select>
			<button type="button" class="btn btn-primary">인증코드 발송</button><br>
			<label>전송했습니다. 이메일을 확인해주세요</label>
		</td>
	</tr>
	<tr>
		<th>인증코드</th>
		<td><input type="text" name="code" placeholder="인증 코드를 입력해주세요"></td>
	</tr>
	<tr>
		<td colspan="2" style="text-align:center;">
			<button type="button" class="btn btn-primary">인증하기</button><button type="button" class="btn btn-light">닫기</button>
		</td>
	</tr>
</table>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="./webjars/bootstrap/4.3.1/js/bootstrap.js"></script>
</body>
</html>