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
  <!-- Page Header -->
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
         
     <a class="nav-link " id="v-pills-home-tab"  href="admEmpSel.do" role="tab" aria-controls="v-pills-home" aria-selected="true">사원 관리</a>
         <a class="nav-link active" id="v-pills-home-tab"  href="admEmpUpd.do" role="tab" aria-controls="v-pills-home" aria-selected="true">사원 수정</a>
         <a class="nav-link " id="v-pills-home-tab"  href="admEmpAdd.do" role="tab" aria-controls="v-pills-home" aria-selected="true">사원 등록</a>
       </div>
    </div>
    
    <div class="col-lg-9 mb-4">
        <div class="card bg-secondary text-white shadow" style="margin-top: 10px;">
            <div class="card-body" style="text-align: center;font-size: 30px;">
            	사원 수정
                <div class="text-white-50 small"></div>
             </div>
        </div>
    	
   <div style="margin-top: 6%;">
	  <div class="search" align="center">
	  <span style="width: 150px; padding-right: 8%;">사원번호</span>
         <input type="text" name="search">
         <input type="button" value="수정하기">
         <hr>
	  </div>
  </div>

    	<div class="table-responsive" style="margin-top: 10%;" align="center">
                <table class="table table-bordered" id="dataTable" style="width: 50%;">
                  <tbody>
                    <tr>
                      <th>사원번호</th>
                      <td colspan="3">2017546</td>
                    </tr>
                    <tr>
                      <th>직원이름</th>
                      <td colspan="3">홍길동</td>
                    </tr>
                    <tr>
                      <th>직급</th>
                      <td colspan="3"><input type="text" placeholder="대리"></td>
                    </tr>
                    <tr>
                      <th>연봉</th>
                      <td colspan="3"><input type="tel" placeholder="40,000,000"></td>
                    </tr>
                    <tr>
                      <th>입사날짜</th>
                      <td colspan="3"><input type="date" placeholder="2017-01-01"></td>
                    </tr>
                    <tr>
                      <th>실적</th>
                      <td colspan="3"><input type="number" placeholder="5">건</td>
                    </tr>
                  </tbody>
                </table>
				<div align="center" style="margin-top: 10%;">
		            <button type="button" class="btn btn-primary" style="margin-right: 5%; width: 12%">수정완료</button>
		        </div>       
              </div>
     </div>
    
    </div>
  <hr>
  <%@include file="../footer.jsp" %>
  </body>
  </html>