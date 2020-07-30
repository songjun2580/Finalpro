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
<%@include file="emp_header.jsp" %>
   <header class="masthead"  style="background-image: url('resources/img/emp_main.png');">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>마이페이지</h1>
            <span class="subheading"></span>
          </div>
        </div>
      </div>
    </div>
  </header>
  
    <div class="row">
    <div class="col-2">
	    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
	      <a class="nav-link" id="v-pills-home-tab"  href="emp_MoveCustomerList.do" role="tab" aria-controls="v-pills-home" aria-selected="true">이사고객 리스트</a>
	      <a class="nav-link active" id="v-pills-home-tab"  href="emp_MoveCompanyList.do" role="tab" aria-controls="v-pills-home" aria-selected="true">이사업체 리스트</a>
	    </div>
    </div>
    
       	 <div class="col-lg-9 mb-4">
                  <div class="card bg-secondary text-white shadow">
                    <div class="card-body">
                      김무순 고객님 이사업체 목록
                      <div class="text-white-50 small"></div>
                    </div>
                  </div>
                  <div class="container">
                  <br>                                         
         
         	<div class="row">
<table class="table table-striped">
<thead _ngcontent-mxf-c15=""><tr _ngcontent-mxf-c15="">
<th _ngcontent-mxf-c15="" scope="col">업체명</th>
<th _ngcontent-mxf-c15="" sbsortable="name" scope="col">
<span _ngcontent-mxf-c15="">담당자</span></th>
<th _ngcontent-mxf-c15="" sbsortable="area" scope="col">
<span _ngcontent-mxf-c15="">담당자 연락처</span></th>
<th _ngcontent-mxf-c15="" sbsortable="population" scope="col">
<span _ngcontent-mxf-c15="">가격</span></th>
<th _ngcontent-mxf-c15="" sbsortable="population" scope="col">
<span _ngcontent-mxf-c15="">견적서</span></th>
<th _ngcontent-mxf-c15="" sbsortable="population" scope="col">
<span _ngcontent-mxf-c15="">선택</span></th>

</tr>
</thead>
<hr>
<tbody _ngcontent-mxf-c15="">
<!---->
<tr _ngcontent-mxf-c15="">
<th _ngcontent-mxf-c15="" scope="row">24press</th>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">홍길동</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">010-1687-1358</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">3,456,789</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15=""><button type="button" class="btn btn-secondary btn-sm" >견적서 보기</button></ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15=""><button type="button" class="btn btn-primary btn-sm">확정하기</button></ngb-highlight></td>
</tr>

<tr _ngcontent-mxf-c15="">
<th _ngcontent-mxf-c15="" scope="row">24press</th>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">이태훈</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">010-4268-4712</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15="">3,248,321</ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15=""><button type="button" class="btn btn-secondary btn-sm" >견적서 보기</button></ngb-highlight></td>
<td _ngcontent-mxf-c15=""><ngb-highlight _ngcontent-mxf-c15=""><button type="button" class="btn btn-primary btn-sm">확정하기</button></ngb-highlight></td>
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