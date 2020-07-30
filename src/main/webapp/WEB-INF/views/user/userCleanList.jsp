<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>청소내역 조회</title>
<link rel="stylesheet" href="./webjars/bootstrap/4.3.1/css/bootstrap.css">
<style>
header {
   position: fixed;
   width: 1155px;
   z-index: 9999;
   top: 0;
   background-color: white;
   margin: 0px auto;
}
body{
	padding-top:85px;
	width:1155px;
	margin:0px auto;
}
.left-nav{
	width:150px;
	margin-right:10px;
}
#v-pills-home{
	margin-left:43px;
}
table{
	width:900px;
	height:300px;
	margin: 20px auto;
}
#top{
	border-bottom: 1px solid gray;	
}
#center{
	border-top: 1px solid gray;
}
th, td{
	text-align:center;
}
.pagination{
	margin-left: 40%;
}
</style>
</head>
<body>
<%@include file="../header.jsp" %>
<div class="left-nav" style="float:left;">
	<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
		<a class="nav-link" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="false" onclick="location.href='userInfoCheck.do'">정보수정</a>
		<a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false" onclick="location.href='userMoveList.do'">이사내역 조회</a>
		<a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false" onclick="location.href='userCleanChoice.do'">청소업체 선정</a>
		<a class="nav-link active" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="true" onclick="location.href='userCleanList.do'">청소내역 조회</a>
	</div>
</div>
<div class="right-content" style="float:left; width:500px;">
	<div class="tab-content" id="v-pills-tabContent"> 
		<div><!-- 청소내역 조회 -->
			<h2 style="margin-bottom: 15px; font-weight: bold;">청소내역 조회</h2>
			<div style="background-color:#E0F8F1; padding-top: 20px; width:1000px;">
				<table>
					<thead>
						<tr>
							<th>신청날짜</th>
							<th>업체명</th>
							<th>업체소재지</th>
							<th>청소날짜</th>
							<th>주소</th>
							<th>가격</th>
							<th>청소종류</th>
							<th>부가서비스</th>
							<th>진행상태</th>
							<th>리뷰작성</th>													
						</tr>
					</thead>
					<tfoot>
						<tr>
							<td colspan="10">
									<nav aria-label="Page navigation example">
									  <ul class="pagination">
									    <li class="page-item">
									      <a class="page-link" href="#" aria-label="Previous">
									        <span aria-hidden="true">&laquo;</span>
									      </a>
									    </li>
									    <li class="page-item"><a class="page-link" href="#">1</a></li>
									    <li class="page-item"><a class="page-link" href="#">2</a></li>
									    <li class="page-item"><a class="page-link" href="#">3</a></li>
									    <li class="page-item">
									      <a class="page-link" href="#" aria-label="Next">
									        <span aria-hidden="true">&raquo;</span>
									      </a>
									    </li>
									  </ul>
									</nav>	
							</td>
						</tr>
					</tfoot>	
					<tbody>
						<tr>
							<td>2020.07.05</td>
							<td>24클린</td>
							<td>서울시 마포구</td>
							<td>2020.07.23</td>
							<td>서울시 마포구</td>
							<td>28만원</td>
							<td>입주청소</td>
							<td>-</td>
							<td>접수처리</td>	
							<td>
								<button type="button" class="btn btn-primary">리뷰 작성</button>
								<br>
								<button type="button" class="btn btn-secondary" style="margin-top: 2px;">신고하기</button>
							</td>					
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="./webjars/bootstrap/4.3.1/js/bootstrap.js"></script>
<%@include file="../footer.jsp" %>
</body>
</html>