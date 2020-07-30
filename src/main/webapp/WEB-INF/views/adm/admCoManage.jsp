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

  <title>emp_header</title>
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
            <h1>업체관리</h1>
            <span class="subheading"></span>
          </div>
        </div>
      </div>
    </div>
  </header>
  
    <div class="row">
    <div class="col-2">
       <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
       
         <a class="nav-link active" id="v-pills-home-tab"  href="admCoManage.do" role="tab" aria-controls="v-pills-home">등록된 업체 목록</a>
         <a class="nav-link " id="v-pills-home-tab"  href="admCoAdd.do" role="tab" aria-controls="v-pills-home">가입 신청 업체 목록</a>
       </div>
    </div>
    
    <div class="col-lg-9 mb-4">
        <div class="card bg-secondary text-white shadow">
            <div class="card-body"> 
                <div class="text-white-50 small"></div>
                    가입 신청 업체 목록           
                    </div>
                  </div>
    
     <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th></th>
                      <th>NO.</th>
                      <th>업체명</th>
                      <th>업체 연락처</th>
                      <th>담당자</th>
                      <th>담장자 연락처</th>
                      <th>업체 이메일</th>
                      <th>사업자 등록증</th>
                      <th>경고횟수</th>
                      <th>영업상태</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td><input type="checkbox"></td>
                      <td>1
                      </td>
                      <td>좋은이사</td>
                      <td>02)7892-4524</td>
                      <td>홍길동</td>
                      <td>010-1224-5144</td>
                      <td>hong@naver.com</td>
                      <td><a href="#">등록증</button></a></td>
                      <td>2/3</td>
                      <td>영업(파란색)</td>
                    </tr>
                    <tr>
                       <td><input type="checkbox"></td>
                      <td>1</td>
                      <td>좋은이사</td>
                      <td>02)7892-4524</td>
                      <td>홍길동</td>
                      <td>010-1224-5144</td>
                      <td>hong@naver.com</td>
                      <td><a href="#">등록증</a></td>
                      <td>3/3</td>
                      <td>영업중지(빨간색)</td>
                    </tr>
                  </tbody>
                </table>
                <div>
                	<div align="right">
                	<button type="button" class="btn btn-primary">경고</button>
                	<button type="button" class="btn btn-warning">정지</button>
                	<button type="button" class="btn btn-danger">업체삭제</button>
                	</div>
                     <!-- 페이징 -->
			     <div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
			     <ul class="pagination" style="margin-left: 33%">
				     <li class="paginate_button page-item previous disabled" id="dataTable_previous">
				     <a href="#" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">이전</a>
				     </li><li class="paginate_button page-item active"><a href="#" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">1</a>
				     </li><li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="2" tabindex="0" class="page-link">2</a>
				     </li><li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="3" tabindex="0" class="page-link">3</a>
				     </li><li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="4" tabindex="0" class="page-link">4</a>
				     </li><li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="5" tabindex="0" class="page-link">5</a>
				     </li><li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="6" tabindex="0" class="page-link">6</a>
				     </li><li class="paginate_button page-item next" id="dataTable_next"><a href="#" aria-controls="dataTable" data-dt-idx="7" tabindex="0" class="page-link">다음</a>
				     </li>
			     </ul>
			     </div>
                </div>
                
              </div>
            </div>
          </div>
    
    </div>
  <hr>
  <%@include file="../footer.jsp" %>
  </body>
  </html>