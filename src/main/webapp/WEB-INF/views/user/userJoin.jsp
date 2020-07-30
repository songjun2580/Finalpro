<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<link rel="stylesheet" href="./webjars/bootstrap/4.3.1/css/bootstrap.css">
<style>
header {
   position: fixed;
   width: 1155px;
   z-index: 9999;
   top: 0;
   background-color: white;
   margin: 0px auto;
}
body{
	padding-top:85px;
	width:1155px;
	margin:0px auto;
}
td{
	padding-bottom: 15px;
	
}
</style>
<script type="text/javascript" src="js/httpRequest.js"></script>
<script>
function idCheck(){
	var usId=document.userAdd.usId.value;
	var param="usId="+usId;
	sendRequest('idCheck.do',param,idCheckResult,'GET');
}
function idCheckResult(){
	if(XHR.readyState==4){
		if(XHR.status==200){
			var data=XHR.responseText;
			document.all.idCheckMsg.innerHTML=data;
		}
	}
}
function pwdCheck(){
	var pwd1=document.userAdd.uPwd.value;
	var pwd2=document.userAdd.uPwd2.value;
	
	if(pwd1!=pwd2){
		document.all.pwdCheckMsg.innerHTML='<span style="color:red;">패스워드가 동일하지 않습니다.</span>';
	}else{
		document.all.pwdCheckMsg.innerHTML=null;
	}
}
function emailAuth(){
	var uEmail1=document.userAdd.uEmail1.value;
	var uEmail2=document.userAdd.uEmail2.value;
	var param="uEmail1="+uEmail1+"&uEmail2="+uEmail2;
	sendRequest('emailAuth.do',param,emailResult,'GET');
}
function emailResult(){
	if(XHR.readyState==4){
		if(XHR.status==200){
			var data=XHR.responseText;
			document.all.ckEmailMsg.innerText=data;
			
		}
	}	
}
function emailNumAuth(){
	var userkey=document.userAdd.userkey.value;
	param="userkey="+userkey;
	sendRequest('emailNumAuth.do',param,emailNumResult,'GET');
}
function emailNumResult(){
	if(XHR.readyState==4){
		if(XHR.status==200){
			var data=XHR.responseText;
			document.all.ckEmailNumMsg.innerHTML=data;
		}
	}	
}
</script>
</head>
<body>
<%@include file="../header.jsp" %>
<form name="userAdd" action="userAdd.do"  method="POST">
	<table style="width:480px; margin:0px auto;">
		<tr>
			<td style="text-align:center"><h3>회원정보 입력</h3></td>
		</tr>
		<tr>
			<th>아이디</th>
		</tr>
		<tr>
			<td>
				<input type="text" name="usId" size="40" placeholder="아이디를 입력해주세요" onchange="idCheck()"><br>
				<span id="idCheckMsg"></span>
			</td>
		</tr>
		<tr>
			<th>비밀번호</th>
		</tr>
		<tr>
			<td>
				<input type="password" name="uPwd" size="40" placeholder="비밀번호를 입력해 주세요" onchange="pwdCheck()">		
			</td>
		</tr>
		<tr>
			<th>비밀번호 재확인</th>
		</tr>
		<tr>
			<td>
				<input type="password" name="uPwd2" size="40" placeholder="비밀번호를 다시 한 번 입력해 주세요" onchange="pwdCheck()"><br>
				<span id="pwdCheckMsg"></span>
			</td>
		</tr>
		<tr>
			<th>이름</th>
		</tr>
		<tr>
			<td><input type="text" name="uName" size="40" placeholder="이름을 입력해 주세요"></td>
		</tr>
		<tr>
			<th>휴대전화 ( - 를 포함해서 입력해주세요)</th>
		</tr>
		<tr>
			<td><input type="tel" name="uTel" size="40" placeholder="휴대폰 번호를 입력해 주세요" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}"></td>
		</tr>
		<tr>
			<th>생년월일</th>
		</tr>
		<tr>
			<td><input type="date" name="uBirth">
			</td>
		</tr>
		<tr>
			<th>이메일</th>
		</tr>
		<tr>
			<td><input type="text" name="uEmail1" size="8"> @
			<input type="text" name="uEmail2" size="8">
			<input type="button" value="이메일 인증하기" onclick="emailAuth();">
			<span id="ckEmailMsg"></span>
			<input type="hidden" name="uEmail" value="${sessionScope.email}">
			</td>
		</tr>
		<tr>
			<td><b>이메일 인증번호:</b> <input type="text" name="userkey" size="7">
			<input type="button" value="인증확인" onclick="emailNumAuth();"><br>
			<span id="ckEmailNumMsg"></span>
			</td>
		</tr>
		<br>
		<tr>
			<th>주소</th>
		</tr>
		<tr>
			<td><input type="text" name="uAddr" placeholder="주소를 입력해주세요"></td>
		</tr>
		<tr>
			<td style="text-align:center"><button type="submit" class="btn btn-primary" style="width:300px; height:35px;">가입 완료하기</button></td>
		</tr>	
	</table>
</form>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="./webjars/bootstrap/4.3.1/js/bootstrap.js"></script>
<%@include file="../footer.jsp" %>
</body>
</html>