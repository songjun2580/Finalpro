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

  <title>사원관리</title>
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

<body>
<%@include file="adm_header.jsp" %>
  
  <header class="masthead"  style="background-image: url('resources/img/emp_main.png');">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>사원관리</h1>
            <span class="subheading"></span>
          </div>
        </div>
      </div>
    </div>
  </header>
  
    <div class="row">
    <div class="col-2">
       <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
         <a class="nav-link " id="v-pills-home-ta"  href="admEmpSel.do" role="tab" aria-haspopup="true" aria-expanded="false">사원 관리</a>
		<a class="nav-link " id="v-pills-home-tab"  href="admEmpUpd.do" role="tab" aria-controls="v-pills-home" aria-selected="true">사원 수정</a>
         <a class="nav-link active" id="v-pills-home-tab"  href="admEmpAdd.do" role="tab" aria-controls="v-pills-home" aria-selected="true">사원 등록</a>
       </div>
    </div>
    
    <div class="col-9">
        <div class="card bg-secondary text-white shadow" style="margin-top: 10px;">
            <div class="card-body" style="text-align: center;font-size: 30px;">
            	사원 등록
                <div class="text-white-50 small"></div>
             </div>
        </div>
    	<form name="admEmpAdd" action="empAdd.do">
    	<div class="input-group mb-3" style="margin-top: 10%; margin-left: 30%">
		  <div class="input-group-prepend">
		    <span style="width: 150px;">이름</span>
		  </div>
		  <input type="text" style="width: 250px;margin-left: 50px;" name="empName">
		</div>
		
		<div class="input-group mb-3" style="margin-left: 30%">
		  <div class="input-group-prepend">
		    <span style="width: 150px;">아이디</span>
		  </div>
		  <input type="text" style="width: 250px;margin-left: 50px;" name="empId">
		</div>
		
		<div class="input-group mb-3" style="margin-left: 30%">
		  <div class="input-group-prepend">
		    <span style="width: 150px;">비밀번호</span>
		  </div>
		  <input type="text" style="width: 250px;margin-left: 50px;" name="empPwd">
		</div>
		<div class="input-group mb-3" style="margin-left: 30%">
		  <div class="input-group-prepend">
		    <span style="width: 150px;">전화번호</span>
		  </div>
		  <input type="text" style="width: 250px;margin-left: 50px;" name="empTel">
		</div>
		
		<div class="input-group mb-3" style="margin-left: 30%">
		  <div class="input-group-prepend">
		    <span style="width: 150px;">이메일</span>
		  </div>
		  <input type="text" style="width: 250px;margin-left: 50px;" name="empEmail">
		</div>
		<div class="input-group mb-3" style="margin-top: 5%; margin-left: 35%">
		 <button type="submit" class="btn btn-primary" style="margin-right: 5%;"value=>등록하기</button>
         <button type="button" class="btn btn-warning">취소하기</button>    
		</div>
		</form>
     </div>
    
    </div>
  <hr>
  <%@include file="../footer.jsp" %>
  </body>
  </html>