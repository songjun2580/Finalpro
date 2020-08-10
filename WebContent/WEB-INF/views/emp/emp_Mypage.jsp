<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>직원 정보수정</title>
  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
  <link href="css/clean-blog.min.css" rel="stylesheet">

<style>
body{
	font-family:sans-serif;
}
.col-6{
	 margin:0px auto;
}
</style>
</head>

<script>
$(document).ready(function() {

    
    var readURL = function(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('.avatar').attr('src', e.target.result);
            }
    
            reader.readAsDataURL(input.files[0]);
        }
    }
    

    $(".file-upload").on('change', function(){
        readURL(this);
    });
});
</script>
<body>
<%@include file="emp_header.jsp" %>
   <header class="masthead"  style="background-image: url('resources/img/emp_main.png');">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>마이페이지</h1>
            <span class="subheading"></span>
          </div>
        </div>
      </div>
    </div>
  </header>
  
    <div class="row">
    <div class="col-2">
	    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
	      <a class="nav-link active" id="v-pills-home-tab"  href="emp_Mypage.do" role="tab" aria-controls="v-pills-home" aria-selected="true">정보 수정</a>
	    </div>
    </div>
    <div class="col-9">
<!-- -직원정보수정 시작 -->
	
      <div class="col-lg-12 col-md-10 mx-auto">
        <p><h2>직원 정보 수정</h2></p>
        <form name="emp_mypage" id="contactForm" novalidate action="#">
        <div class="text-center">
        <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">
        <h6>프로필 사진</h6>
        <input type="file" class="text-center center-block file-upload">
        </div><br>
          <div class="control-group">
            <div class="form-group floating-label-form-group controls">
              <label>ID</label>
              <input type="text" class="form-control" id="id" value="20151293">
              <p class="help-block text-danger"></p>
            </div>
          </div>
          <div class="control-group">
            <div class="form-group floating-label-form-group controls">
              <label>이름</label>
              <input type="text" class="form-control" id="emp_name" required data-validation-required-message="이름을 입력해주세요." value="이정민">
              <p class="help-block text-danger"></p>
            </div>
          </div>
          <div class="control-group">
            <div class="form-group col-xs-12 floating-label-form-group controls">
              <label>PWD</label>
              <input type="password" class="form-control" placeholder="비밀번호" id="emp_pwd" required data-validation-required-message="비밀번호 입력을 해주세요.">
              <p class="help-block text-danger"></p>
            </div>
          </div>
          <div class="control-group">
            <div class="form-group floating-label-form-group controls">
              <label>PWD 확인</label>
              <input type="password" class="form-control" placeholder="비밀번호 확인" id="emp_pwd" required data-validation-required-message="비밀번호 확인을 해주세요.">
              <p class="help-block text-danger"></p>
            </div>
          </div>
           <div class="control-group">
            <div class="form-group floating-label-form-group controls">
              <label>연락처</label>
				<input type="tel" class="form-control" id="emp_tel" required data-validation-required-message="연락처를 입력해 주세요." value="010-7376-1733"><p class="help-block text-danger"></p>
            </div>
           </div>
           <div class="control-group">
            <div class="form-group floating-label-form-group controls">
              <label>이메일</label>
				<input type="email" class="form-control" id="emp_email" required data-validation-required-message="이메일을 입력해 주세요." value="ccmljh0211@gmail.com"><p class="help-block text-danger"></p>
            </div>
           </div>
          <br>
          <button type="submit" class="btn btn-primary" id="sendMessageButton">수정하기</button>
        </form>
      </div>
    </div>
    </div>
  <hr>
  <%@include file="../footer.jsp" %>
  </body>
  </html>