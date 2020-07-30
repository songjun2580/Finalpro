<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이사 견적서 작성 결과</title>
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
	padding-top:150px;
	width:1155px;
	margin:0px auto;
}
.comment{
	margin: 0px auto;
	text-align: center;
	font-size: 27px;
}
.below{
	margin: 0px auto;
	text-align: center;
	font-size: 20px;
	color: blue;
}
.ad{
	margin: 0px auto;
	text-align: center;
	font-size:38px;
	font-weight: bold;
}
</style>
</head>
<body>
<%@include file="../header.jsp" %>
<div class="comment">
	<label class="content">견적 신청이 완료 되었습니다.<br>문의 주셔서 감사합니다. 빠른 시간 내에 연락 드리겠습니다.</label><br>
</div>
<div class="below">
	<label class="content">고객센터 운영시간 09:00 ~ 21:00</label>
</div>
<div class="ad">
	<label>청소 업체 견적을 추가로 받아 보시겠습니까?</label>
</div>
<div style="text-align:center;">
	<button type="button" class="btn btn-primary" style="width:300px; height:50px;" onclick="location.href='cleaningEstimateForm.jsp'">청소 비교 견적 사이트 바로가기</button>
</div>
<div style="text-align:center; margin-top: 10px;">
	<button type="button" class="btn btn-info" style="width:300px; height:50px;" onclick="location.href='movingList.jsp'">이사 내역 조회하기</button>
</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="./webjars/bootstrap/4.3.1/js/bootstrap.js"></script>
<%@include file="../footer.jsp" %>
</body>
</html>