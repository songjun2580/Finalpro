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

  <title>진행중인 계약</title>
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
</style>
</head>
<body>
<%@include file="emp_header.jsp" %>
   <header class="masthead"  style="background-image: url('resources/img/emp_main.png');">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>진행중인 계약</h1>
            <span class="subheading"></span>
          </div>
        </div>
      </div>
    </div>
  </header>
  
   <div class="row">
  <div class="col-2">
    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
      <a class="nav-link active" id="v-pills-home-tab"  href="emp_Year.do" role="tab" aria-controls="v-pills-home" aria-selected="false">연간 실적</a>
      <a class="nav-link" id="v-pills-profile-tab"  href="emp_Month.do" role="tab" aria-controls="v-pills-profile" aria-selected="false">월별 실적</a>
      <a class="nav-link" id="v-pills-profile-tab"  href="emp_MoveCustomerList.do" role="tab" aria-controls="v-pills-profile" aria-selected="true">진행중인 계약</a>
    </div>
  </div>
	
 <div class="col-lg-9 mb-4">
                  <div class="card bg-secondary text-white shadow">
                    <div class="card-body">
                      진행중인 계약
                      <div class="text-white-50 small"></div>
                    </div>
                  </div>
                  <div class="container">
                  <br>                          

<div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">1</h6>
                </div>
                <div class="card-body">
                  고객명:홍길동
                  <p>상세 주소:판교역로 245 1층 102호</p>
                  <p>위치:서울 -> 판교</p>
                  <p>가격:4,500,000</p>
                  <p>담당 이사업체:24 express</p>
                  <p>담당자:김무순</p>
                  <p>담당자 연락처: 010-8372-2093</p>
                  <button type="button" class="btn btn-outline-secondary">견적서 보기</button>
                </div>
              </div>
              
              
</div>
</div>
</div>
  <hr>
  <%@include file="../footer.jsp" %>
  </body>
  </html>