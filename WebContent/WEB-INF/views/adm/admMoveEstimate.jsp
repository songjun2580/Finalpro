<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이사 견적서</title>
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
<label style="font-weight:bold; font-size:30px;">이사 견적 신청서</label>
<hr>
<form name="admMoveEstimate" action="admMoveEstimateAccept.do">
<input type="hidden" name="moIdx" value="${dto.moIdx }">

	<div class="bodyContent">
		<div style="margin-bottom: 20px;">
			<label class="question">이삿날을 입력해주세요</label><br>
			${dto.moDate }
		</div>
		<div style="margin-bottom: 20px;">
			<label class="question">신청인 성함</label><br>
			${dto.moName }
		</div>
		<div style="margin-bottom: 20px;">
			<label class="question">신청인 연락처</label><br>
			${dto.moTel }
		</div>
		<div style="margin-bottom: 20px;">
			<label class="question">상담은 어떻게 받아보고 싶으세요?</label><br>
			${dto.moConsult }
		</div>
		<div style="margin-bottom: 20px;">
			<label class="question">가족 수</label><br>
			${dto.moFamily }명
		</div>
		<div style="margin-bottom: 20px;">
			<label class="question">출발지 정보</label><br>
			${dto.szipNo }<br>
			${dto.moSaddr }		${dto.moSfloor }
		</div>
		<div style="margin-bottom: 20px;">
			<label class="question">출발지 집의 평수, 이사 유형</label><br>
			${dto.moSize}평		${dto.moType}			
		</div>
		<div style="margin-bottom: 20px;">
			<label class="question">도착지 정보</label><br>
			${dto.ezipNo }<br>
			${dto.moEaddr }		${dto.moEfloor }
		</div>
		<div style="margin-bottom: 10px;">
			<label class="question">특수 이삿짐</label><br>
			${dto.moZim }
		</div>
		<div style="margin-bottom: 10px;">
			<label class="question">이사서비스</label><br>
			${dto.moService1}
			${dto.moService2}
		</div>
	</div><br><br>
	<div style="text-align:center; margin-bottom: 10px; margin-right: 900px;">
	<button type="submit" class="btn btn-warning" style="width:150px;">승인하기</button>
	</div>
</form>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="./webjars/bootstrap/4.3.1/js/bootstrap.js"></script>
</body>
</html>