<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
.search{
	text-align:right;
}
.page{
	text-align:center;
	padding:20px;
}
</style>
</head>
<body>
<%@ include file="adm_header.jsp" %>
 <header class="masthead"  style="background-image: url('resources/img/emp_main.png');">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>불만사항</h1>
            <span class="subheading"></span>
          </div>
        </div>
      </div>
    </div>
  </header>
<div class="row">
  <div class="col-2">
    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
      <a class="nav-link" id="v-pills-home-tab" href="admCplSubList.do" role="tab" aria-controls="v-pills-home">이사업체</a>
      <a class="nav-link" id="v-pills-profile-tab"  href="admCplSubList.do" role="tab" aria-controls="v-pills-profile">청소업체</a>
       <a class="nav-link active" id="v-pills-profile-tab"  href="admCplConfirmListList.do" role="tab" aria-controls="v-pills-profile">완료된 불만사항</a>
    </div>
  </div>
  <div class="col-9">
<div class="card bg-secondary text-white shadow">
	      <div class="card-body">
	               <span>이사업체 불만사항 신고목록</span>
	      </div>
      </div><br>
<div class="search">
		<input type="text" name="search">
		<input type="button" value="검색">
</div><br>
<div class="row">
    <div class="table-responsive">
	           <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
	             <thead>
	                 <tr>
	                  <th>번호</th>
				      <th>업체명</th>
			          <th>불만사항 누적수</th>
			          <th>경고횟수</th>
			          <th>업체경고</th>
	                  </tr>
	             </thead>
				 <tfoot>
	             </tfoot>
	             <tbody>
		               <tr>
		               <td>Name</td>
		               <td><a href="admCplSubList.do">업체명</a></td>
	                   <td>Office</td>
		               <td>Age</td>
		               <td><input type="button" value="업체경고"></td>
		             </tr>
	           </tbody>
	         </table>
	       </div>
	   <br>
</div>
</div>
</div>
  <%@include file="../footer.jsp" %>
</body>
</html>