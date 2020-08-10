<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./webjars/bootstrap/4.3.1/css/bootstrap.css">
<link rel="stylesheet" href="css/selectbox.css">
<style>
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
<%@include file="../header.jsp" %>
</head>
<body>
	<div class="row">
		<div class="col-2">
		<ul class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
		  <li class="nav-item" role="presentation">
		    <a class="nav-link" id="pills-mypage-tab" data-toggle="pill" href="compMypage.do" role="tab" aria-selected="true">마이페이지</a>
		  </li>
		  <li class="nav-item" role="presentation">
		    <a class="nav-link active" id="pills-record-tab" data-toggle="pill" href="compRecord.do" role="tab" aria-selected="false">실적조회</a>
		  </li>
		  <li class="nav-item" role="presentation">
		    <a class="nav-link" data-toggle="pill" href="compBlog.do?coIdx=${sessionScope.coIdx}" aria-selected="false">업체블로그</a>
		  </li>
		   <li class="nav-item" role="presentation">
		    <a class="nav-link" id="pills-bid-tab" data-toggle="pill" href="compBid.do" role="tab" aria-selected="false">견적서 조회(입찰)</a>
		  </li>
		  <li class="nav-item" role="presentation">
		    <a class="nav-link" id="pills-bid-tab" data-toggle="pill" href="comContract.do" role="tab" aria-selected="false">견적서 조회(확정)</a>
		  </li>
		</ul>
	</div>
	<!-- 실적조회 -->
		<div  class="col-9">
		 <div class="alert alert-secondary" role="alert">
			실 적 관 리 
		</div>
		<div>
		<div>
		<table border="0" cellspacing="0" cellpadding="0" class="__se_tbl_review" style="text-align: center;">
		<tbody>
		<tr>
		<td style="top; width: 183px; height: 51px; text-align:center" class="se2_editarea pcol2 m-tcol-c" rowspan="1" colspan="2">
			<button type="button" class="btn btn-secondary btn-lg" onclick="compRecord.do">&nbsp;실적 현황 내용 보기&nbsp;</button>
		</td>
			
		<td style="width:184px; height:51px; text-align:center" class="se2_editarea pcol2 m-tcol-c" rowspan="1" colspan="2">
			<button type="button" class="btn btn-secondary btn-lg" onclick="javascript:location.href='compTotalPrice.do'">&nbsp;총 실적 금액 확인하기&nbsp;</button>
		</td>
				
			</tr>
		<tr>
			<td colspan="12" style="font-size: 0px; width: 743px; height: 5px;">&nbsp;</td>
		</tr>
			</tbody>
			</table>
			<p/>
			<p/>
			<!-- 실적 현황 내역 -->
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
					      <th scope="col">고객명</th>
					      <th scope="col">파견직원</th>
					      <th scope="col">견적 예상 가격</th>
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
	</div>			
</div>
			

</body>
  <%@include file="../footer.jsp" %>
</html>