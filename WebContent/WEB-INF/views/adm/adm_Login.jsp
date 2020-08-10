<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
 <form name="admLogin" action="admStatus.do" method="post">
 <table style="width: 300px; height: 300px; margin: 0px auto;">
 	<tr>
 		<th style="text-align: center;"><h2>ADMIN</h2></th>
 	</tr>
	<tr>  
		<th><label>관리자 아이디</label></th>
	</tr>
	<tr>
		<td style="size: 100;"> <input type="text" class="form-control" name="adId" placeholder="관리자아이디를 입력해주세요"></td></tr> 
	<tr>
		<th><label>비밀번호</label></th>
	</tr>
	<tr>
		<td><input type="password" class="form-control" name="adPwd" placeholder="비밀번호"></td>
	</tr>
	<tr>
		<td><button type="submit" class="btn btn-primary">로그인</button></td>
	</tr>
</table>
</form>
</body>
</html>