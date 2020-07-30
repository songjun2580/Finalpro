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

  <title>이사고객리스트</title>
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
<%@include file="emp_header.jsp" %>
   <header class="masthead"  style="background-image: url('resources/img/emp_main.png');">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>업체 조회</h1>
            <span class="subheading"></span>
          </div>
        </div>
      </div>
    </div>
  </header>
    <div class="row">
    <div class="col-2">
	    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
	      <a class="nav-link active" id="v-pills-home-tab"  href="emp_MoveCustomerList.do" role="tab" aria-controls="v-pills-home" aria-selected="true">이사고객 리스트</a>
	    </div>
    </div>
    
    <div class="col-lg-9 mb-4">
                  <div class="card bg-secondary text-white shadow">
                    <div class="card-body">
                      이사고객 리스트
                      <div class="text-white-50 small"></div>
                    </div>
                  </div>
    
     <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>NO.</th>
                      <th>고객명</th>
                      <th>연락처</th>
                      <th>지역</th>
                      <th>날짜</th>
                      <th>이사업체 리스트</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>1</td>
                      <td>김숙주</td>
                      <td>010-7892-4524</td>
                      <td>서울 강북구 -> 부산 해운대구</td>
                      <td>2020-08-23</td>
                      <td><a href="emp_MoveCompanyList.do"><button type="button" class="btn btn-primary btn-block">보기</button></a></td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>이무진</td>
                      <td>010-3512-4568</td>
                      <td>충북 충주시 -> 울산 마리구</td>
                      <td>2020-09-12</td>
                      <td><button type="button" class="btn btn-primary btn-block ">보기</button></td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
    
    </div>
  <hr>
  <%@include file="../footer.jsp" %>
  </body>
  </html>