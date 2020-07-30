<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./webjars/bootstrap/4.3.1/css/bootstrap.css">
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
.nav nav-pills mb-3{
  -ms-flex-pack: center !important;
  justify-content: center !important;
	}
	
h4{
	font-size: 11px;
	font-family: Georgia, "Malgun Gothic", serif;
	font-weight: bold;
}

.best_comment{
	font-family: Georgia, "Malgun Gothic", serif;
	vertical-align: top; 
	width: 365px; 
	height: 60px;
}
.company_info{
	font-family: Georgia, "Malgun Gothic", serif;
	vertical-align: top; 
	width: 158px; 
	height: 162px;"
}

.move_addr_table{
	width: 97px; 
	height: 42px; 
	padding: 3px 4px 2px; 
	color: rgb(255, 255, 255); 
	text-align: left; 
	font-weight: normal; 
	background-color: rgb(51, 51, 51);"
}
.move_addr_content{
	width: 251px; 
	height: 34px; 
	padding: 3px 4px 2px; 
	color: rgb(102, 102, 102); 
	background-color: rgb(255, 255, 255);
}
.review_info_main{
	margin-left:3%;
}

#work_img{
	width:250px; 
	height:200px;
}
</style>
<%@include file="adm_header.jsp" %>
  <!-- Page Header -->
 
<body>
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
</head>
	<div class="row">
		<div class="col-2">
		<ul class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
		  <li class="nav-item" role="presentation">
		    <a class="nav-link active" id="pills-mypage-tab" data-toggle="pill" href="admStatus.do" role="tab" aria-selected="true">실적현황보기</a>
		  </li>
		  <li class="nav-item" role="presentation">
		    <a class="nav-link" id="pills-record-tab" data-toggle="pill" href="admProfit.do" role="tab" aria-selected="false">총 금액 실적</a>
		  </li>
		</ul>
	</div>
	<!-- 실적조회 -->
		<div class="col-9">
			 <div class="alert alert-secondary" role="alert">
			실적현황내역
			</div>
				  <div>
					<select name="moveClean"  style="width:100px;height:30px; margin-left:55%">
  					<option value="이사">이사</option>
					<option value="청소">청소</option>
	  			  </select>
	  			  <select name="dailyMonth"  style="width:100px;height:30px; margin-left:3%">
  					<option value="날짜별">날짜별</option>
					<option value="기간별">기간별</option>
	  			  </select>
	  			  <button type="button" class="btn btn-dark" style="margin-left:2%">확인</button>
	  		 	  </div>
	  		 	  <hr>
	  		 	  
	  		 	  <div>
	  		 	  <table class="table">
					  <thead class="thead-light">
					    <tr>
					      <th scope="col">번호</th>
					      <th scope="col">분류</th>
					      <th scope="col">업체명</th>
					      <th scope="col">견적 가격</th>
					      <th scope="col">계약 가격</th>
					      <th scope="col">날짜</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr>
					      <th scope="row">1</th>
					      <td></td>
					      <td></td>
					      <td></td>
					      <td></td>
					      <td></td>
					    </tr>
					    <tr>
					      <th scope="row">2</th>
					      <td></td>
					      <td></td>
					      <td></td>
					      <td></td>
					      <td></td>
					    </tr>
					    <tr>
					      <th scope="row">3</th>
					      <td></td>
					      <td></td>
					      <td></td>
					      <td></td>
					      <td></td>
					    </tr>
					    <tr>
					      <th scope="row">4</th>
					      <td></td>
					      <td></td>
					      <td></td>
					      <td></td>
					      <td></td>
					    </tr>
					  </tbody>
					</table>
					 <!-- 페이징 -->
				     <div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate" style="margin-left:27%;">
				     <ul class="pagination">
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
		  <%@include file="../footer.jsp" %>
</body>
</html>