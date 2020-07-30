<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./webjars/bootstrap/4.3.1/css/bootstrap.css">
<style>
.nav nav-pills mb-3{
  -ms-flex-pack: center !important;
  justify-content: center !important;
	}
body {
	width: 80%;
	margin: 0px auto;
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
	margin-left:%;
}

#work_img{
	width:250px; 
	height:200px;
}
</style>
<%@include file="comp_Header.jsp" %>
</head>
<body>
	
	<div class="row">
		<div class="col-2">
	<ul class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
		  <li class="nav-item" role="presentation">
		    <a class="nav-link" id="pills-mypage-tab" data-toggle="pill" href="compMypage.do" role="tab" aria-selected="true">마이페이지</a>
		  </li>
		  <li class="nav-item" role="presentation">
		    <a class="nav-link" id="pills-record-tab" data-toggle="pill" href="compRecord.do" role="tab" aria-selected="false">실적조회</a>
		  </li>
		  <li class="nav-item" role="presentation">
		    <a class="nav-link active" data-toggle="pill" href="companyBlog.do" aria-selected="false">업체블로그</a>
		  </li>
		   <li class="nav-item" role="presentation">
		    <a class="nav-link" id="pills-bid-tab" data-toggle="pill" href="compBid.do" role="tab" aria-selected="false">이사견적서조회</a>
		  </li>
		</ul>
	</div>
<!-- 업체블로그 -->
			<div>
		 <div class="alert alert-secondary" role="alert">
			매일 익스프레스 </div>
       	 <div class="container">
		<p/>
		<p/>
		<div class="review_all">
		<table border="0" cellspacing="0" cellpadding="0" class="review_info_main">
			<tr>
			<td style="font-family: dotum; vertical-align: top; width: 363px; height: 98px;" class="se2_editarea pcol2 m-tcol-c">
			<table border="0" cellspacing="0" cellpadding="0" class="__se_tbl_review">
			<tr>
			<td class="company_info" colspan="3" rowspan="1">업체정보
			<img src="<%=request.getContextPath()%>/resources/img/company_logo.jpg" alt="업체로고" style="width:350px; height:300px;"> </td>
		  	</tr>
		</table>	
		<br>
		</td>
		<td rowspan="3" style="font-size: 0px; width: 39px; height: 60px;">&nbsp;</td>
		<td rowspan="3" class="best_comment">BEST 후기글&nbsp;<br>
			<table border="0" cellspacing="0" cellpadding="0" class="review">
			 <tr>
				<td colspan="3" rowspan="1">
				<img src="<%=request.getContextPath()%>/resources/img/isa_pic.png" alt="현장이미지" style="width:350px; height:300px;">
				</td>
				</tr>
			</table>
		
			<table border="0" cellspacing="0" cellpadding="0" class="review">
			<tbody>
				<tr>
				<td style="font-family: dotum; vertical-align: top; width: 367px; height: 183px;" class="review_contents" colspan="1" rowspan="1">
				<p/>
				<p/>
				여기서 이사 다섯번 째 했어요~ 물건하나 파손되지 않고 안전이사 했습니다!</td>
				</tr>
			</tbody>
			</table>
			<p/>
			<p/>
			<tr>
			<td style="font-size: 0px; width: 365px; height: 5px;" class="">&nbsp;</td>
			</tr>
			<tr>
			<td style="font-family: dotum; vertical-align: top; width: 363px; height: 120px;">
			<table style="background-color: rgb(199, 199, 199);" class="move_addr_tbl" border="0" cellpadding="0" cellspacing="1" _se2_tbl_template="8">
			<tbody>
				<tr>
					<td class="move_addr_table">
					<p style="text-align: center;">&nbsp;업체주소</p>
					</td>
					<td class="move_addr_content">
					<p>광주광역시</p>
					</td>
				</tr>
				<tr>
					<td class="move_addr_table">
					<p style="text-align: center;">&nbsp;별점</p>
					</td>
					<td class="move_addr_content">
					<p>별다섯개!!!!!!</p>
					</td>
				</tr>
				<tr>
					<td class="move_addr_table">
					<p style="text-align: center;" align="center">공유하기</p>
					</td>
					<td class="move_addr_content">
					<p><a href="">페이스북</a><a href="">&nbsp;네이버블로그링크</a></p>
					</td>
				</tr>
			</tbody>
				</table>
				</td>
				</tr>
				</tbody>
				</table>
			</div>
			<hr>
			<div class="review_info_main">
			현장 사진
			    <div class="row">
			        <div class="col-md-4"><img src="<%=request.getContextPath()%>/resources/img/isa_pic.png" alt="현장이미지" id="work_img"></div>
			        <div class="col-md-4"><img src="<%=request.getContextPath()%>/resources/img/isa_pic.png" alt="현장이미지" id="work_img"></div>
			        <div class="col-md-4"><img src="<%=request.getContextPath()%>/resources/img/isa_pic.png" alt="현장이미지" id="work_img"></div>
			    </div>
			</div>
			<hr>
			<div align="">
			</div>
			<div align="">
				<table border="0" cellspacing="0" cellpadding="0" class="review_info_main">
					<tbody>
					<tr>
						<td style="font-family: dotum; vertical-align: top; width: 743px; height: 143px;" class="se2_editarea pcol2 m-tcol-c" colspan="1" rowspan="1">
						<table border="0" cellspacing="0" cellpadding="0" class="__se_tbl_review">
						<tbody>
						<tr>
						<td style="font-family: dotum; vertical-align: top; width: 188px; height: 157px;" class="se2_editarea pcol2 m-tcol-c">
							<img src="<%=request.getContextPath()%>/resources/img/isa_pic.png" alt="현장이미지" id="work_img"></td>
							<td style="font-size: 0px; width: 5px; height: 159px;" class="">&nbsp;</td>
						<td style="font-family: dotum; vertical-align: top; width: 550px; height: 157px;" class="se2_editarea pcol2 m-tcol-c">&nbsp;&nbsp;ID:Hong123 지역:서울시 강남구->강원도 태백시
							<p/>
							<p/>&nbsp;&nbsp;고동을 들어 보라 </td>
						</tr>
						<tr>
						<td colspan="3" style="font-size: 0px; width: 743px; height: 5px;" class="">&nbsp;</td>
						</tr>
						<tr>
						<td style="font-family: dotum; vertical-align: top; width: 188px; height: 157px;" class="se2_editarea pcol2 m-tcol-c">
							<img src="<%=request.getContextPath()%>/resources/img/isa_pic.png" alt="현장이미지" id="work_img"></td>
							<td style="font-size: 0px; width: 5px; height: 159px;" class="">&nbsp;</td>
						<td style="font-family: dotum; vertical-align: top; width: 550px; height: 157px;" class="se2_editarea pcol2 m-tcol-c">&nbsp;&nbsp;ID:Hong123 지역:서울시 강남구->강원도 태백시
							<p/>
							<p/>&nbsp;&nbsp;고동을 들어 보라 </td>
						</tr>
						<tr>
						<td colspan="3" style="font-size: 0px; width: 743px; height: 5px;" class="">&nbsp;</td>
					</tbody>
				</table>
					<br>
				      <!-- 페이징 -->
			     <div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate" style="margin-left:45%;">
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
				</td>
				</tr>
				
				
				</tbody>
				</table>
				</div>
				</div>
				</p>
				</div>
				</div>
				
</body>
  <%@include file="../footer.jsp" %>
</html>