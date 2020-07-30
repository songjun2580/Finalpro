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

  <title>adm_header</title>
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

h2{
   text-align:center;
}
.rewrite{
   text-align:center;
}
.page{
   text-align:center;
   padding:20px;
   
}
</style>
</head>
<body>
<%@include file="adm_header.jsp" %>
  <!-- Page Header -->
  <header class="masthead"  style="background-image: url('resources/img/emp_main.png');">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>게시판 관리</h1>
            <span class="subheading"></span>
          </div>
        </div>
      </div>
    </div>
  </header>
  
<div class="row">
  <div class="col-2">
    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
      <a class="nav-link" id="v-pills-home-tab"  href="admBbsQnA.do" role="tab" aria-controls="v-pills-home">자주묻는 질문</a>
      <a class="nav-link active" id="v-pills-profile-tab"  href="admBbsTip.do" role="tab" aria-controls="v-pills-profile">꿀팁 게시판</a>
    </div>
  </div>
  <div class="col-lg-9">
   <h3>꿀팁게시판 관리</h3>
   <br>
<div class="row">
    <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <tbody>
                   <tr>
                     <td>번호:</td>
                     <td><input type="text"></td>
                      <td>작성자:</td>
                      <td><input type="text"></td>
                      <td>날짜:</td>
                      <td><input type="text"></td>
                   </tr>
                   <tr>
                      <td>제목:</td>
                      <td  colspan="5"><input type="text" size="120"></td>
                   </tr>
                   <tr>
                   <td colspan="6"><textarea class="form-control" rows="7"></textarea></td>
                   </tr>
              </tbody>
            </table>
          </div>
</div>
<div class="rewrite">
   <button type="button" class="btn btn-primary">게시글삭제</button>
   <button type="button" class="btn btn-primary">목록으로</button>
</div><br>
</div>
</div>
  <%@include file="../footer.jsp" %>