<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<script type="text/javascript" src="js/httpRequest.js"></script>
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
	정보 확인
  </div>
  <div>
  <form name="fm" action="infoCheck.do">
	  <div class="form-group">
	    <label for="inputId" class="col-sm-2 control-label"><b>ID</b></label>
	      <input type="text" class="form-control" id="inputId" name="usId" placeholder="ID">
	  </div>
	  <div class="form-group">
	    <label for="inputPassword" class="col-sm-2 control-label"><b>Password</b></label>
	      <input type="password" class="form-control" id="inputPassword" name="uPwd" placeholder="Password">
	  </div>
	   <div class="form-group" style="text-align:center;">
	   <input type="submit" value="확인"><br>
	  </div>
	</form>
</div>
</div>
</div>
<%@include file="../footer.jsp" %>
</body>
</html>