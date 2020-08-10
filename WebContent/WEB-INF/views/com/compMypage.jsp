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

  <title>업체 정보수정</title>
  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
  <link href="css/clean-blog.min.css" rel="stylesheet">
  <link rel="stylesheet" href="./webjars/bootstrap/4.3.1/css/bootstrap.css">
  <link rel="stylesheet" href="css/selectbox.css">
<style>

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
<%@include file="../header.jsp" %>
<body>
    <div class="row">
      <div class="col-2">
      <ul class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
        <li class="nav-item" role="presentation">
          <a class="nav-link active" id="pills-mypage-tab" data-toggle="pill" href="compMypage.do" role="tab" aria-selected="true">마이페이지</a>
        </li>
        <li class="nav-item" role="presentation">
          <a class="nav-link" id="pills-record-tab" data-toggle="pill" href="compRecord.do" role="tab" aria-selected="false">실적조회</a>
        </li>
        <li class="nav-item" role="presentation">
          <a class="nav-link" data-toggle="pill" href="compBlog.do?coIdx=${sessionScope.coIdx}" aria-selected="false">업체블로그</a>
        </li>
         <li class="nav-item" role="presentation">
          <a class="nav-link" id="pills-bid-tab" data-toggle="pill" href="compBid.do" role="tab" aria-selected="false">견적서 조회(입찰)</a>
        </li>
        <li class="nav-item" role="presentation">
		    <a class="nav-link" id="pills-bid-tab" data-toggle="pill" href="comContract.do" role="tab" aria-selected="false">견적서 조회(확정)</a>
		  </li>
      </ul>
   </div> 
<!-- 업체 정보 수정 시작 -->
	
      <div class="col-9 ">
        <div class="alert alert-secondary" role="alert">
			업체정보 수정
		</div>
        <form name="sentMessage" id="contactForm" novalidate action="#">
        <div class="text-center">
        <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">
        <h6>업체 로고</h6>
        <input type="file" class="text-center center-block file-upload">
        </div>
        <br>
          <div class="control-group">
            <div class="form-control-group">
              <label>회사명</label>
              <input type="text" class="form-control" id="id" value="이사만해청소도해" size="10">
              <p class="help-block text-danger"></p>
            </div>
          </div>
          <div class="control-group">
            <div class="form-control-group">
              <label>대표자명</label>
              <input type="text" class="form-control" id="comp_name" value="도도사님">
              <p class="help-block text-danger"></p>
            </div>
          </div>
          <div class="control-group">
            <div class="form-control-group">
              <label>PWD</label>
              <input type="password" class="form-control" placeholder="비밀번호" id="comp_pwd" required data-validation-required-message="비밀번호 입력을 해주세요.">
              <p class="help-block text-danger"></p>
            </div>
          </div>
          <div class="control-group">
            <div class="form-control-group">
              <label>PWD 확인</label>
              <input type="password" class="form-control" placeholder="비밀번호 확인" id="comp_pwd" required data-validation-required-message="비밀번호 확인을 해주세요.">
              <p class="help-block text-danger"></p>
            </div>
          </div>
           <div class="control-group">
            <div class="form-control-group">
              <label>연락처</label>
				<input type="tel" class="form-control" id="comp_tel" required data-validation-required-message="연락처를 입력해 주세요." value="2453-8253">
				<p class="help-block text-danger"></p>
            </div>
           </div>
           <div class="control-group">
            <div class="form-control-group">
              <label>이메일</label>
				<input type="email" class="form-control" id="comp_email" required data-validation-required-message="이메일을 입력해 주세요." value="ddd@naver.com">
				<p class="help-block text-danger"></p>
            </div>
           </div>
          <br>
          <button type="submit" class="btn btn-primary" id="sendMessageButton">수정하기</button>
        </form>
      </div>
    </div>
  <hr>
  </body>
  <%@include file="../footer.jsp" %>
  </html>