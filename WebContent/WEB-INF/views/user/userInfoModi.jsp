<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./webjars/bootstrap/4.3.1/css/bootstrap.css">
<link rel="stylesheet" href="css/selectbox.css">
</head>
<style>
h3{
	width:650px;
 	text-align:center;
}
.form-group{
	width:1200px;
	margin:30px auto;
}


</style>
<script>
function pwdModi(){
	
	if(document.getElementById('btnode1')){
		return false;
	}
	var newBTNode1=document.createElement('input');
	newBTNode1.setAttribute('type','password');
	newBTNode1.setAttribute('name','pwd1');
	newBTNode1.setAttribute('placeholder','새 비밀번호 입력');
	newBTNode1.setAttribute('class','form-control');
	newBTNode1.setAttribute('size','64');
	newBTNode1.id='btnode1';
	
	var newBTNode2=document.createElement('input');
	newBTNode2.setAttribute('type','password');
	newBTNode2.setAttribute('name','pwd2');
	newBTNode2.setAttribute('placeholder','새 비밀번호 확인');
	newBTNode2.setAttribute('class','form-control');
	newBTNode2.setAttribute('size','64');
	
	var divNode=document.getElementById('pwd1');
	divNode.appendChild(newBTNode1);
	var divNode=document.getElementById('pwd2');
	divNode.appendChild(newBTNode2);
	
}
function pwdCheck(){
	var pwd1=document.UserInfoModi.pwd1.value;
	var pwd2=document.UserInfoModi.pwd2.value;
	
	if(pwd1!=pwd2){
		document.all.msg.innerHTML='<span style="color:red;">패스워드가 동일하지 않습니다.</span>';
	}else{
		document.all.msg.innerHTML='<span style="color:blue;">패스워드가 동일합니다.</span>';
		document.UserInfoModi.uPwd.value=pwd2;
	}
	
}
</script>
<body>
<%@include file="../header.jsp" %>
<div class="row">
  <div class="col-2">
	<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
		<a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true" onclick="location.href='userInfoCheck.do'">정보수정</a>
		<a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false" onclick="location.href='userMoveList.do'">이사내역 조회</a>
		<a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false" onclick="location.href='userCleanChoice.do'">청소업체 선정</a>
		<a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false" onclick="location.href='userCleanList.do'">청소내역 조회</a>
	</div>
  </div>
  <div>
  <div class="alert alert-secondary" role="alert">
	회원 정보수정
  </div>
  <div>
	<form name="UserInfoModi" action="infoUpdate.do">
	<c:forEach var="list" items="${list }">
	  <div class="form-group">
	    <label for="InputName">Name</label>
	    <input type="text" class="form-control" id="InputName" name="uName" value="${list.uName }">
	  </div>
	  <div class="form-group">
	    <label for="InputPassword">Password</label>
	    <div class="form-inline">
	      <input type="password" class="form-control" id="InputPassword" name="uPwd" value="${list.uPwd }">
	      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  	<button type="button" class="btn btn-primary btn-sm" onclick="pwdModi();" >비밀번호 수정</button>
	    <div class="form-group">
	    <div onchange="pwdCheck();">
			 <div id="pwd1"></div><br>
		     <div id="pwd2"></div>
		     <span id="msg"></span>
	     </div>
		 </div>
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="exampleInputTel">Tel</label>
	    <input type="text" class="form-control" name="uTel" value="${list.uTel }">
	  </div>
	  <div class="form-group">
	    <label for="exampleInputBirth">Birth</label>
	    <input type="text" class="form-control" name="uBirth" value="${list.uBirth }">
	  </div>
	  <div class="form-group">
	    <label for="exampleInputAddr">Address</label>
	    <input type="text" class="form-control" name="uAddr" value="${list.uAddr }">
	  </div>
	  <div class="form-group">
	    <label for="exampleInputEmail">Email</label>
	    <input type="text" class="form-control" name="uEmail" value="${list.uEmail }">
	  </div>
	   <div class="form-group" style="text-align:center;">
	    <button type="submit" class="btn btn-primary">저장하기</button>
	  </div>
	  </c:forEach>
	</form>
 </div>
</div>
</div>
<%@include file="../footer.jsp" %>
</body>
</html>