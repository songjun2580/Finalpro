<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./webjars/bootstrap/4.3.1/css/bootstrap.css">
<link rel="stylesheet" href="css/selectbox.css">
<style>	
.compBidTable{
	border-width: 10px; 
	width: 88px; 
	height: 32px; 
	}
.local{
text-align: right;
margin-left: 560px;
font-size:14px;
}
th, td{
	text-align:center;
}
</style>
<script>
function bidPopup(moIdx){
		window.open('bidpop.do?moIdx='+moIdx,'bidpop','width=400,height=150');
}
function estimatePopup(moIdx){
	var url='estimatePopup.do?moIdx='+moIdx;
	window.open(url,'estimatePopup','width=600,height=600,left="30"')
	
}
</script>
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
		    <a class="nav-link" id="pills-record-tab" data-toggle="pill" href="compRecord.do" role="tab" aria-selected="false">실적조회</a>
		  </li>
		  <li class="nav-item" role="presentation">
		    <a class="nav-link" data-toggle="pill" href="compBlog.do" aria-selected="false">업체블로그</a>
		  </li>
		   <li class="nav-item" role="presentation">
		    <a class="nav-link active" id="pills-bid-tab" data-toggle="pill" href="compBid.do" role="tab" aria-selected="false">견적서 조회(입찰)</a>
		  </li>
		</ul>
	</div>
	<div class="col-9">
	<!-- 이사 견적서 조회 -->
	  <div class="alert alert-secondary" role="alert">
         	이사 견적서 조회(입찰중) 
      </div>
	  <div>
		<table border="0" cellspacing="0" style="margin:0px auto; width:1400px; background-color:#E0F8F1;" >
			<thead>
				<tr>
					<th>날짜</th>
					<th>고객명</th>
					<th>출발지(상세주소)	</th>
					<th>이사유형</th>
					<th>서비스</th>
					<th>예상가격</th>
					<th>견적서 조회</th>
					<th>입찰상태</th>
				</tr>
				</thead>
				<tbody>
				<c:if test="${!empty list2}">
					<c:forEach var="dto2" items="${list2}">
						<tr>
							<td>${dto2.moDate}</td>
							<td>${dto2.moName }</td>
							<td>${dto2.moSaddr }</td>
							<td>${dto2.moType}</td>
							<td>
							<c:if test="${empty dto2.moService2 }">${dto2.moService1 }</c:if>
							<c:if test="${empty dto2.moService1 }">${dto2.moService2 }</c:if>
							</td>
							<td>${dto2.motempPrice}원</td>
							<td><button type="button" class="btn btn-warning" onclick="javascript:estimatePopup(${dto.moIdx });">견적서 조회</button></td>
							<td>
								<button type="button" class="btn btn-danger" onclick="javascript:bidPopup(${dto2.moIdx});">입 찰</button>
							</td>
						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${empty list2 }">
					<tr>
					<td colspan="9">입찰할 견적서가 없습니다.</td>
					</tr>
				</c:if>
		</tbody>
		</table>
	<hr>
	</div>
	<div class="alert alert-secondary" role="alert">
         	이사 견적서 조회 <b>(입찰완료)</b>
      </div>
	  <div>
		<table border="0" cellspacing="0" style="margin:0px auto; width:1400px; background-color:#E0F8F1;" >
			<thead>
				<tr>
					<th>날짜</th>
					<th>고객명</th>
					<th>출발지(상세주소)	</th>
					<th>이사유형</th>
					<th>서비스</th>
					<th>예상가격</th>
					<th>입찰가격</th>
					<th>견적서 조회</th>
					<th>입찰상태</th>
				</tr>
				</thead>
				<tbody>
				<c:if test="${!empty list}">
					<c:forEach var="dto" items="${list}">
						<tr>
							<td>${dto.moDate}</td>
							<td>${dto.moName }</td>
							<td>${dto.moSaddr }</td>
							<td>${dto.moType}</td>
							<td>
							<c:if test="${empty dto.moService2 }">${dto.moService1 }</c:if>
							<c:if test="${empty dto.moService1 }">${dto.moService2 }</c:if>
							</td>
							<td>${dto.motempPrice}원</td>
							<td>
							${dto.mbMoney }원
							</td>
							<td><button type="button" class="btn btn-warning" onclick="javascript:estimatePopup(${dto.moIdx });">견적서 조회</button></td>
							<td>
								<c:if test="${dto.mbMoney==0 }">
									<button type="button" class="btn btn-danger" onclick="javascript:bidPopup(${dto.moIdx});">입 찰</button>
								</c:if>
							    <c:if test="${dto.mbMoney!=0 }">
							    	<button type="button" class="btn btn-primary" disabled>입찰 완료</button>
							    </c:if>
							</td>
						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${empty list }">
					<tr>
					<td colspan="9">입찰할 견적서가 없습니다.</td>
					</tr>
				</c:if>
		</tbody>
		</table>
	<hr>
	</div>
</div>
</div>
</body>
  <%@include file="../footer.jsp" %>
</html>