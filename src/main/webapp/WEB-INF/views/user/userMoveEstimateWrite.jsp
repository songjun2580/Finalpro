<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="uIdx" value="${sessionScope.uIdx }"></c:set>
<c:if test="${empty uIdx}">
<script>
	window.alert('로그인 후 이용가능합니다.');
	location.href='index.do';
</script>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이사 견적서 작성</title>
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
<script>
function goPopup(){	//출발지 주소
	var pop = window.open("jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
}
function goPopup2(){	//도착지 주소
	var pop = window.open("jusoPopup2.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
}
function tosPopup(){//이용약관 팝업
	window.open('termsOfService.jsp','tosPopup','width=1200,height=900,left=30');
}
function jusoCallBack(moSaddr, szipNo){	//출발지 주소
	document.movingEstimate.moSaddr.value = moSaddr;
	document.movingEstimate.szipNo.value = szipNo;
}
function jusoCallBack2(moEaddr, ezipNo){	//도착지 주소
	document.movingEstimate.moEaddr.value = moEaddr;
	document.movingEstimate.ezipNo.value = ezipNo;
}
function agreeCheck(frm){				//개인정보 동의시 제출버튼활성화
   if (frm.checkButton.disabled==true)
    frm.checkButton.disabled=false
   else
    frm.checkButton.disabled=true
}

</script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script>
$(document).ready(function() {									//라디오버튼 활성화
	$("input[name=moService]").click(function(){
		if( $("input[name=moService1]").attr("disabled") ) {
			$("input[name=moService1]").attr("disabled", false);
		} else {
			$("input[name=moService1]").attr("disabled", true);
		}
	});
}); 
if ($('input[name=moService2check]').is(":checked")) {		//보관이사 미체크시 값넘기기
    $('input[name=moService2]').val('보관이사 서비스');
} else {
    $('input[name=moService2]').val('선택안함');
};

$('#reset').click(function () {							//이사서비스 선택x
    if (!$('input[name=moService]').is(':checked')) {
        window.alert('이사서비스를 선택하지않았습니다.');
        return false;
    }
});

</script>
</head>
<body>
<%@include file="../header.jsp" %>
<label style="font-weight:bold; font-size:30px;">이사 견적 신청</label>
<hr>
<form name="movingEstimate" action="movingEstimateWrite.do">
<input type="hidden" name="uIdx" value="${sessionScope.uIdx }">
	<div class="bodyContent">
		<div style="margin-bottom: 20px;">
			<label class="question">이삿날을 입력해주세요</label><br>
			<input type="date" name="moDate" required>
		</div>
		<div style="margin-bottom: 20px;">
			<label class="question">신청인 성함</label><br>
			<input type="text" name="moName" required>
		</div>
		<div style="margin-bottom: 20px;">
			<label class="question">신청인 연락처</label><br>
			<input type="text" name="moTel" required>
		</div>
		<div style="margin-bottom: 20px;">
			<label class="question">상담은 어떻게 받아보고 싶으세요?</label><br>
			<select name="moConsult"> 
				<option value="전화">전화 상담 받고 싶어요</option>	
				<option value="방문">방문 상담 받고 싶어요</option>	
			</select>
		</div>
		<div style="margin-bottom: 20px;">
			<label class="question">출발지 정보</label><br>
			<input type="text" name="szipNo" size="30" placeholder="우편번호" readonly required><input type="button" value="주소 검색" onclick="goPopup()"><br><br>
			<input type="text" name="moSaddr" size="100" placeholder="주소입력" readonly required><br>
			
			<label>출발지 층수</label>
			<select name="moSfloor">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				<option value="13">13</option>
				<option value="14">14</option>
				<option value="15">15</option>
				<option value="16">16</option>
				<option value="17">17</option>
				<option value="18">18</option>
				<option value="19">19</option>
				<option value="20">20</option>
			</select>
		</div>
		<div style="margin-bottom: 20px;">
			<label class="question">출발지 집의 평수, 이사 유형을 알려주세요.</label><br>
			<label>평수&nbsp;&nbsp;</label>
			<select name="moSize" >
				<option value="10">15평 이하</option>
				<option value="17">15~19평</option>		
				<option value="25">20~29평</option>		
				<option value="35">30~39평</option>				
				<option value="45">40~49평</option>				
				<option value="55">50~59평</option>				
				<option value="60">60평 이상</option>				
			</select>
			<label>이사 유형&nbsp;&nbsp;</label>
			<select name="moType">
				<option value="가정이사">가정 이사</option>
				<option value="소형이사">소형 이사</option>		
				<option value="사무실이사">사무실 이사</option>		
			</select>
		</div>
		<div style="margin-bottom: 20px;">
			<label class="question">도착지 정보</label><br>
			<input type="text" name="ezipNo" size="30" placeholder="우편번호" readonly required><input type="button" value="주소 검색" onclick="goPopup2()"><br><br>
			<input type="text" name="moEaddr" size="100" placeholder="주소입력" readonly required><br>
			
			<label>도착지 층수</label>
			<select name="moEfloor">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				<option value="13">13</option>
				<option value="14">14</option>
				<option value="15">15</option>
				<option value="16">16</option>
				<option value="17">17</option>
				<option value="18">18</option>
				<option value="19">19</option>
				<option value="20">20</option>
			</select>
		</div>
		<div style="margin-bottom: 10px;">
			<label class="question">필요한 서비스를 선택해 주세요.</label><br>
			<input type="checkbox" id="r0" data-toggle="checkbox" name="moService" checked="checked"><label for="r0" >짐 상하차 서비스</label><br><!-- 추후에 ajax로 이거 체크하면 아래 radio버튼 활성화 되도록 만들기-->
				<div class="radio">
					<input type="radio" id="r1" name="moService1" value="포장이사 이용안함" name="radioButton" required><label for="r1">포장이사 이용안함 </label><br><label for="r1">&nbsp;&nbsp;포장이사 서비스를 원하지 않을 경우</label><br>
					<input type="radio" id="r2" name="moService1" value="반/포장이사 서비스" name="radioButton" required><label for="r2">반/포장이사 서비스 </label><br><label for="r2">&nbsp;&nbsp;출발지에서 대형/소형 가전 및 가구제품 포장만 필요한 경우</label><br>
					<input type="radio" id="r3" name="moService1" value="포장이사 서비스" name="radioButton" required><label for="r3">포장이사 서비스 </label><br><label for="r3">&nbsp;&nbsp;출발지에서 짐을 포장하고 옮긴 후 도착지에서 짐정리까지 모두 필요한 경우</label>
				</div>
			<input type="checkbox" id="r4"name="moService2check"><label for="r4">보관이사 서비스</label><br>
			<input type="hidden" name="moService2"/>
		</div>
		<div style="text-align:center"><input type="checkbox" id="r5" name="agreement" onClick="agreeCheck(this.form)"><label for="r5">&nbsp;서비스 이용약관 동의 <a href="javascript:tosPopup();">[전문보기]</a></label></div>
		<div style="text-align:center; margin-bottom: 10px;"><button type="submit" class="btn btn-warning" style="width:150px;" name="checkButton" disabled>제출하기</button></div>
	</div>
</form>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="./webjars/bootstrap/4.3.1/js/bootstrap.js"></script>
<%@include file="../footer.jsp" %>
</body>
</html>