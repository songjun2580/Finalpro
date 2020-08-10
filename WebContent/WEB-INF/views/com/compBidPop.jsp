<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function show(){
	window.self.close();
}
</script>
</head>
<body>
<form name="fm" action="bidInsert.do">
<fieldset>
	<legend>입찰금액 측정</legend>
	<input type="hidden" name="moIdx" value="${moIdx}">
	입찰금액 : <input type="text" name="mbMoney">
	<input type="submit" value="입찰 확인">
</fieldset>
</form>
</body>
</html>