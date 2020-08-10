<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제내역 조회</title>
<link rel="stylesheet" href="./webjars/bootstrap/4.3.1/css/bootstrap.css">
<link rel="stylesheet" href="css/selectbox.css">
<style>
.left-nav{
	width:300px;
	margin-right:5px;
}
#v-pills-home{
	margin-left:43px;
}
table{
	width:1300px;
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
<script>
function estimatePopup(moIdx){
	var url='estimatePopup.do?moIdx='+moIdx;
	window.open(url,'estimatePopup','width=600,height=600,left="30"')
	
}
</script>
</head>
<body>
<%@include file="../header.jsp" %>
<div class="left-nav" style="float:left;">
	<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
		<a class="nav-link" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="false" onclick="location.href='userInfoCheck.do'">정보수정</a>
		<a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="true" onclick="location.href='userMoveList.do'">이사내역 조회</a>
		<a class="nav-link active" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="true" onclick="location.href='endPriceList.do'">결제내역 조회</a>
		<a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false" onclick="location.href='userCleanChoice.do'">청소업체 선정</a>
		<a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false" onclick="location.href='userCleanList.do'">청소내역 조회</a>
	</div>
</div>
<div class="right-content" style="float:left; width:500px; margin-left:5px;">
	<div class="tab-content" id="v-pills-tabContent">
		<div><!-- 결제내역 -->
			<h2 style="margin-bottom: 15px; font-weight: bold;">결제내역 조회</h2>
			<div style="background-color:#E0F8F1; padding-top: 20px; width:1400px;">
				<table>
					<thead>
						<tr>
							
							<th>신청자 명</th>
							<th>이사날짜</th>
							<th>업체명</th>
							<th>출발지</th>
							<th>결제금액</th>
							<th>계약서 조회</th>
							<th>리뷰작성</th>	
							<th>불만신고</th>							
						</tr>
					</thead>
					<tfoot>
						<tr>
							<td colspan="11">
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
						<c:forEach var="dto" items="${endlist}">		
						<tr>
							
							<td>${dto.moName }</td>
							<td>${dto.mctDate }</td>
							<td><a href="userBlogView.do?coIdx=${dto.coIdx }">${dto.coName }</a></td>
							<td>${dto.moSaddr }</td>
							<td>${dto.moconfirmPrice}원</td>
							<td><button type="button" class="btn btn-warning" onclick="javascript:estimatePopup(${dto.moIdx });">조회</button></td>
							<td>
								<button type="button" class="btn btn-primary" onclick="location.href='userReviewWrite.do?moIdx=${dto.moIdx}'">리뷰</button>
						    </td>
						    <td>
								<a href="userCompWrite.do?moIdx=${dto.moIdx }"><button type="button" class="btn btn-danger" style="margin-top: 2px;" >신고</button></a>
							</td>					
						</tr>
						</c:forEach>				
					<c:if test="${empty endlist }">
					<tr><td>결제내역이 없습니다.</td></tr>
					</c:if>
					</tbody>
				</table>
			</div>
		</div> 
	</div>
</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="./webjars/bootstrap/4.3.1/js/bootstrap.js"></script>

</body>
</html>