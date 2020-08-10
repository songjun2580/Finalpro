<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이사견적서</title>
<link rel="stylesheet" href="./webjars/bootstrap/4.3.1/css/bootstrap.css">
<style>
header {
   position: fixed;
   width: 500px;
   z-index: 9999;
   top: 0;
   background-color: white;
   margin: 0px auto;
}
body{
   width:500px;
   margin:0px auto;
}
.question{
   font-weight: bold;
   margin-bottom:10px;
}
.radio{
   margin-left:50px;
}
.bodyContent{
   margin-left:50px;
}
</style>

</head>
<body>
<label style="font-weight:bold; font-size:30px;">이사 견적</label>
<hr>
<form name="estimatePopup">
	<div class="bodyContent">
		<div style="margin-bottom: 5px;">
			<label class="question">이삿날</label><br>
			${dto.moDate }
		</div>
		<div style="margin-bottom: 5px;">
			<label class="question">신청인 성함</label><br>
			${dto.moName }
		</div>
		<div style="margin-bottom: 5px;">
			<label class="question">신청인 연락처</label><br>
			${dto.moTel }
		</div>
		<div style="margin-bottom: 5px;">
			<label class="question">상담 유형</label><br>
			${dto.moConsult }
		</div>
		<div style="margin-bottom: 5px;">
			<label class="question">가족 수</label><br>
			${dto.moFamily }명
		</div>
		<div style="margin-bottom: 5px;">
			<label class="question">출발지 주소</label><br>
			${dto.moSaddr }
		</div>
		<div style="margin-bottom: 5px;">
			<label class="question">특수 이삿짐</label><br>
			${dto.moZim }
		</div>
		<div style="margin-bottom: 5px;">
			<label class="question">집의 평수</label><br>
			${dto.moSize}
		</div>
		<div style="margin-bottom: 5px;">
			<label class="question">이사 유형</label><br>
			${dto.moType }
		</div>
		<div style="margin-bottom: 5px;">
			<label class="question">도착지 주소</label><br>
			${dto.moEaddr }
		</div>
		<div style="margin-bottom: 5px;">
			<label class="question">선택한 서비스</label><br>
			${dto.moService1 }
		</div>
		<div style="text-align:center; margin:10px auto;">
		<button type="button" class="btn btn-warning" style="width:150px;" name="checkButton" onClick="window.self.close()">닫기</button>
		</div>
	</div>
</form>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="./webjars/bootstrap/4.3.1/js/bootstrap.js"></script>
</body>
</html>