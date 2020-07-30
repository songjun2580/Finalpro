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

  <title>불편사항 신고 게시판</title>
  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
  <link href="css/clean-blog.min.css" rel="stylesheet">
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
	font-family:sans-serif;
}
table{
   height:200px;
   margin: 0px auto;
}
td{
    height:100px;
}
</style>
</head>
<body>
<%@include file="../header.jsp" %>
    <div class="row">
    <div class="col-2">
		<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
			<a class="nav-link" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="false" onclick="location.href='userInfoCheck.do'">정보수정</a>
			<a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false" onclick="location.href='userMoveList.do'">이사내역 조회</a>
			<a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false" onclick="location.href='userCleanChoice.do'">청소업체 선정</a>
			<a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false" onclick="location.href='userCleanList.do'">청소내역 조회</a>
		</div>
    </div>
    <div class="col-9">
<form name="complaint" action="#">
<br><br>
   <section>
      <article>
            <table border="1">
            <h2 style="text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;불편사항 신고</h2>
               <tr>
                  <td>
                	  업체명 : <span>24press</span>
                  </td>
                  <td>
                	  지역 : <span>서울시 강남구 -> 경기도 수원시</span>
                  </td>
               </tr>
               <tr>
                  <td colspan="2">사진 첨부하기 <input type="button" name="upload"
                     value="사진넣기"
                     style="float: right; marign-right: 150px;">
                  </td>
               </tr>
               <tr>
                  <td  colspan="2" id="mrev_img">
                   	 사진들어갈 자리
                  </td>
                </tr>
               <tr>
                  <td>제목</td>
                  <td><input type="text" name="mrev_subject" required size="80"></td>
               </tr>
               <tr>
                  
               </tr>
               <tr>
                  <td colspan="2" >내용</td>
               </tr>
               <tr>
                  <td colspan="2" >
                  	 <textarea rows="10" cols="115" placeholder="내용을 작성 해주세요" name="mrev_content" style="resize:none"></textarea>
                  </td>
               </tr>
               <tr>
                  <td colspan="2" style="text-align: center;">
                  	<input type="submit" value="작성 완료"> <input type="reset" value="다시 작성하기">
                  </td>
               </tr>
            </table>
      </article>
   </section>
</form>   
</div>
</div>
<hr>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="./webjars/bootstrap/4.3.1/js/bootstrap.js"></script>
<%@include file="../footer.jsp" %>
</body>
</html>