<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>청소업체 선택</title>
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
table{
	margin-top:20px;
}
#format{
	margin-left:7px;
}
th{
	padding-top: 30px;
}
td nav{
	padding-top: 20px;
	padding-left:150px;;
}
</style>
</head>
<body>
<%@include file="../header.jsp" %>
<div class="left-nav" style="float:left; width:150px; margin-right:5px;" >
	<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
		<a class="nav-link" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="false" onclick="location.href='userInfoCheck.do'">정보수정</a>
		<a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false" onclick="location.href='userMoveList.do'">이사내역 조회</a>
		<a class="nav-link active" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="true" onclick="location.href='userCleanChoice.do'">청소업체 선정</a>
		<a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false" onclick="location.href='userCleanList.do'">청소내역 조회</a>
	</div>
</div>
<div class="right-content" style="float:left; margin-left:0px; width:970px;">
	<div class="customer-needs" style="width:470px; height:800px; float:left; border:1px solid gray; margin-left: 5px;">
		<label style="background-color:#F5A9A9;width:300px;height:40px; text-align:center; padding-top: 10px; margin-top:15px;margin-left:90px;">요청내역 및 정보</label>
		<table>
			<tr> 
				<th>신청 서비스</th>
			</tr>
			<tr>
				<td>
					<ul>
						<li>가정 이사</li>
						<li>줄눈 시공</li>
						<li>냉장고 청소</li>
						<li>새집 증후군</li>
					</ul>
				</td>
			</tr>
			<tr>
				<th>고객 성함</th>
			</tr>
			<tr>
				<td>김태훈</td>
			</tr>
			<tr>
				<th>예약 연락처</th>
			</tr>
			<tr>
				<td>010-7892-4412</td>
			</tr>
			<tr>
				<th>날짜</th>
			<tr>
			</tr>
				<td>2020년 12월 27일</td>
			</tr>
			<tr>
				<th>주소 정보</th>
			<tr>
			</tr>
				<td>01067 서울시 마포구 잔다로길 14 동양미래아파트 108동 107호</td>
			</tr>
			<tr>
				<th>분양 면적</th>
			</tr>
			<tr>
				<td>44평</td>
			</tr>
		</table>
	</div>
	<div class="company-application" style="width:470px; height:800px; float:left; margin-left:20px; border:1px solid gray;">
		<label style="background-color:#FCFFA3;width:300px;height:40px; text-align:center; padding-top: 10px; margin-top:15px;margin-left:90px;">청소를 희망하는 업체</label>
		<table id="format">
			<tr>
				<td>
					<select name="order" style="margin-left:350px;">
						<option>낮은 가격순</option>
						<option>높은 가격순</option>
						<option>평점 낮은순</option>
						<option>평점 높은순</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					<table style="border:1px solid gray; width:450px;">
						<tr>
							<td>굿모닝 청소</td>
						</tr>
						<tr>
							<td>담당자: 김철주</td>
						</tr>
						<tr>
							<td>연락처: 010-5541-6666</td>
						</tr>
						<tr>
							<td>평점: 4.5</td>
						</tr>
						<tr>
							<td>사무실: 서울시 강북구 덕릉로 10 굿모닝 빌딩 202호</td>
						</tr>
						<tr>
							<td>예상 가격: 40~64만원</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table style="border:1px solid gray; width:450px;">
						<tr>
							<td>24시 청소</td>
						</tr>
						<tr>
							<td>담당자: 이태곤</td>
						</tr>
						<tr>
							<td>연락처: 010-1982-7892</td>
						</tr>
						<tr>
							<td>평점: 3.6</td>
						</tr>
						<tr>
							<td>사무실: 서울시 강남구 역삼동 35 힐스테이팅빌딩 1053호</td>
						</tr>
						<tr>
							<td>예상 가격: 45~70만원</td>
						</tr>
					</table>
				</td>
			<tr>
				<td><!-- 페이징 -->
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
		</table>
	</div>	
</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="./webjars/bootstrap/4.3.1/js/bootstrap.js"></script>
<%@include file="../footer.jsp" %>
</body>
</html>