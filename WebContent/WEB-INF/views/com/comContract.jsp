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
		    <a class="nav-link" data-toggle="pill" href="compBlog.do?coIdx=${sessionScope.coIdx}" aria-selected="false">업체블로그</a>
		  </li>
		   <li class="nav-item" role="presentation">
		    <a class="nav-link" id="pills-bid-tab" data-toggle="pill" href="compBid.do" role="tab" aria-selected="false">견적서 조회(입찰)</a>
		  </li>
		   <li class="nav-item" role="presentation">
		    <a class="nav-link active" id="pills-bid-tab" data-toggle="pill" href="comContract.do" role="tab" aria-selected="false">견적서 조회(확정)</a>
		  </li>
		</ul>
	</div>
	<div class="col-9">
	<!-- 이사 견적서 조회 -->
	  <div class="alert alert-secondary" role="alert">
         	이사 견적서 조회(확정) 
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
					<th>확정가격</th>
					<th>계약서 조회</th>
					<th>계약금 상태</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="dto" items="${list }">
				<tr>
					<td>${dto.moDate }</td>
					<td>${dto.moName }</td>
					<td>${dto.moSaddr }</td>
					<td>${dto.moType }</td>
					<td>${dto.moService1}</td>
					<td>${dto.motempPrice }</td>
					<td>${dto.moconfirmPrice }</td>
					<td><button type="button" class="btn btn-warning">계약서 조회</button></td>
					<td>
					<c:if test="${dto.final2==0}">입금중</c:if>
					<c:if test="${dto.final2==1}">입금완료</c:if>
					</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	<hr>
	</div>
	
</div>
</div>
</body>
  <%@include file="../footer.jsp" %>
</html>