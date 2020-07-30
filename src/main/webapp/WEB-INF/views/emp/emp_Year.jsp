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

  <title>연간 실적</title>
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
            <h1>실적 관리</h1>
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
      <a class="nav-link" id="v-pills-profile-tab"  href="emp_Month.do" role="tab" aria-controls="v-pills-profile" aria-selected="true">월별 실적</a>
    </div>
  </div>
	
	 <div class="col-lg-9 mb-4">
                  <div class="card bg-secondary text-white shadow">
                    <div class="card-body">
                      2019년 연간 실적
                      <div class="text-white-50 small"></div>
                    </div>
                  </div>
                  <div class="container">
                  <br>                                         
         <div class="dropdown"> 
                  <button   class="btn  btn-primary  dropdown-toggle"   data-toggle="dropdown"> 
                    년도 선택
                  </button> 
                  <div class="dropdown-menu"> 
                           <a class="dropdown-item"  href="#">2010</a> 
                           <a class="dropdown-item"  href="#">2011</a> 
                           <a class="dropdown-item"  href="#">2012</a> 
                           <a class="dropdown-item"  href="#">2013</a> 
                           <a class="dropdown-item"  href="#">2014</a> 
                           <a class="dropdown-item"  href="#">2015</a> 
                           <a class="dropdown-item"  href="#">2016</a> 
                           <a class="dropdown-item"  href="#">2017</a> 
                           <a class="dropdown-item"  href="#">2018</a> 
                           <a class="dropdown-item"  href="#">2019</a> 
                           <a class="dropdown-item"  href="#">2020</a> 
                    </div> 
         </div> 
         	<div class="row">
<table _ngcontent-mxf-c15="" class="table table-striped">
<thead _ngcontent-mxf-c15=""><tr _ngcontent-mxf-c15="">
<th _ngcontent-mxf-c15="" scope="col">#</th>
<th _ngcontent-mxf-c15="" sbsortable="name" scope="col">
<span _ngcontent-mxf-c15="">거래완료</span><!----></th>
<th _ngcontent-mxf-c15="" sbsortable="area" scope="col">
<span _ngcontent-mxf-c15="">총거래금액</span><!----></th>
<th _ngcontent-mxf-c15="" sbsortable="population" scope="col">
<span _ngcontent-mxf-c15="">진행중</span>
<!---->
</th>
</tr>
</thead>
<tbody _ngcontent-mxf-c15="">
<!---->
<tr _ngcontent-mxf-c15="">
<th _ngcontent-mxf-c15="" scope="row">전체기간</th>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">125건</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">140,000,000</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">3건</ngb-highlight></td>
</tr>

<tr _ngcontent-mxf-c15="">
<th _ngcontent-mxf-c15="" scope="row">1월</th>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">12건</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">2,065,123</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">1건</ngb-highlight></td>
</tr>

<tr _ngcontent-mxf-c15="">
<th _ngcontent-mxf-c15="" scope="row">2월</th>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">3건</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">1,065,123</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">0건</ngb-highlight></td>
</tr>

<tr _ngcontent-mxf-c15="">
<th _ngcontent-mxf-c15="" scope="row">3월</th>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">8건</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">4,065,123</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">0건</ngb-highlight></td>
</tr>

<tr _ngcontent-mxf-c15="">
<th _ngcontent-mxf-c15="" scope="row">4월</th>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">14건</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">0</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">0건</ngb-highlight></td>
</tr>

<tr _ngcontent-mxf-c15="">
<th _ngcontent-mxf-c15="" scope="row">5월</th>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">0건</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">0</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">0건</ngb-highlight></td>
</tr>

<tr _ngcontent-mxf-c15="">
<th _ngcontent-mxf-c15="" scope="row">6월</th>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">0건</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">0</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">0건</ngb-highlight></td>
</tr>

<tr _ngcontent-mxf-c15="">
<th _ngcontent-mxf-c15="" scope="row">7월</th>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">0건</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">0</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">0건</ngb-highlight></td>
</tr>

<tr _ngcontent-mxf-c15="">
<th _ngcontent-mxf-c15="" scope="row">8월</th>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">0건</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">0</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">0건</ngb-highlight></td>
</tr>

<tr _ngcontent-mxf-c15="">
<th _ngcontent-mxf-c15="" scope="row">9월</th>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">0건</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">0</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">0건</ngb-highlight></td>
</tr>

<tr _ngcontent-mxf-c15="">
<th _ngcontent-mxf-c15="" scope="row">10월</th>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">0건</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">0</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">0건</ngb-highlight></td>
</tr>

<tr _ngcontent-mxf-c15="">
<th _ngcontent-mxf-c15="" scope="row">11월</th>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">0건</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">0</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">0건</ngb-highlight></td>
</tr>

<tr _ngcontent-mxf-c15="">
<th _ngcontent-mxf-c15="" scope="row">12월</th>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">0건</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">0</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">0건</ngb-highlight></td>
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