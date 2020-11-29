<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fieldset width="550px;">
	<legend>답글작성</legend>
	<form name="cplRe" action="admReplySubmit.do" >
		<div>
		<textarea rows="10" cols="60" name="cplReply"></textarea>
		<input type="hidden" name="cplIdx" value="${param.cplIdx }">
		</div>
		<div>
		<button type="submit">제출하기</button>
		</div>
	</form>
</fieldset>
</body>
</html>