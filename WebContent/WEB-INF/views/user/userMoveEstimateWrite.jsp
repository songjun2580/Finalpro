<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${empty sessionScope.uIdx }">
<script>
   window.alert('로그인 후 이용가능합니다.');
   location.href="index.do";
</script>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이사 견적서 작성</title>
<link rel="stylesheet" href="./webjars/bootstrap/4.3.1/css/bootstrap.css">
<link rel="stylesheet" href="css/selectbox.css">
<style>
input[type=date],
input[type=text],
button[type=submit]{
	width:25%;
	padding: 1.3% 1.5%;
}

input[type=checkbox]{
	display: none;
}

input[type=checkbox] + label{
	display :inline-bloc;
	cursor:pointer;
	position: relative;
	padding-left: 25px;
	margin-right:15px;
	font-size:13px;
}
input[type=checkbox]+label:before{
	
	content:"";
	display:inline-block;
	
	width:20px;
	height:20px;
	
	margin-right:10px;
	position: absolute;
	left: 0;
	bottom: 1px;
	background-color: #ccc;
	border-radius: 2px;
	box-shadow: inset 0px 1px 1px 0px rgba(0, 0, 0, .3), 0px 1px 0px 0px rgba(255, 255, 255, .8);
}

input[type=checkbox]:checked + label:before {
	content:"\2713"; /*check shape*/
	text-shadow: 1px 1px 1px rgba(0, 0, 0, .2);
	font-size: 18px;
	font-weight:800;
	color: #fff;
	background: #2f87c1;
	text-align:center;
	line-height: 18px;
}


.question{
   font-weight: bold;
   margin-bottom:10px;
}

.box{
   width:25%;
   padding: 10px 11.25px;
}

.radio{
   margin-left:50px;
   font-size:18px;
}
.bodyContent{
   margin-left:50px;
}
.center{
   width:800px;
   margin:0px auto;
}

.serviceCheckBox{
	margin-top:3%;
	margin-bottom:5%;
}

</style>
<script>
window.onload=function(){
	   var now=new Date();
	   var year=now.getFullYear();
	   var mon=now.getMonth()+1;
	   var day=now.getDate();
	   var day2=now.getDate()+7;
	   
	   if(mon<10){
	      mon='0'+mon;
	   }
	   if(day<10){
	      day='0'+day;
	   }
	   var str=year+"-"+mon+"-"+day;
	   var str2=year+"-"+mon+"-"+day2;
	   document.movingEstimate.moDate.value=str;
	   document.movingEstimate.moDate.min=str;
	}
	
function goPopup(){   //출발지 주소
   var pop = window.open("jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
}
function goPopup2(){   //도착지 주소
   var pop = window.open("jusoPopup2.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
}


function tosPopup(){//이용약관 팝업
   window.open('userTermsOfService.do','tosPopup','width=1200,height=900,left=30');
}

//개인정보 동의시 제출버튼활성화
function show(){
	var frmCheck=document.getElementById('moveEstimateFrm');
	agreeCheck(frmCheck);
	}
function agreeCheck(frm){   
	 (frm.checkButton.disabled==true)
	   if (r12.checked==true){
	    frm.checkButton.disabled=false
		}else {
	    frm.checkButton.disabled=true
	    }
	}

function jusoCallBack(moSaddr, szipNo){   //출발지 주소
   document.movingEstimate.moSaddr.value = moSaddr;
   document.movingEstimate.szipNo.value = szipNo;
}
function jusoCallBack2(moEaddr, ezipNo){   //도착지 주소
   document.movingEstimate.moEaddr.value = moEaddr;
   document.movingEstimate.ezipNo.value = ezipNo;
}



</script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script>
$(document).ready(function() {                           //라디오버튼 활성화
   $("input[name=moService]").click(function(){
      if( $("input[name=moService1]").attr("disabled") ) {
         $("input[name=moService1]").attr("disabled", false);
      } else {
         $("input[name=moService1]").attr("disabled", true);
      }
   });
}); 
if ($('input[name=moService2check]').is(":checked")) {      //보관이사 미체크시 값넘기기
    $('input[name=moService2]').val('보관이사 서비스');
} else {
    $('input[name=moService2]').val('선택안함');
};

$('#reset').click(function () {                     //이사서비스 선택x
    if (!$('input[name=moService]').is(':checked')) {
        window.alert('이사서비스를 선택하지않았습니다.');
        return false;
    }
});



</script>
</head>
<body>
<%@include file="../header.jsp" %>
<div class="center" style="margin-top:3%;">
<div class="alert alert-secondary" role="alert" style="font-size: 20px; font-weight:bold;">
	이사 견적 신청
  </div>
<hr>
<form id="moveEstimateFrm" name="movingEstimate" action="movingEstimateWrite.do">
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
         <select name="moConsult" class="box" required> 
            <option value="전화">전화 상담 받고 싶어요</option>   
            <option value="방문">방문 상담 받고 싶어요</option>   
         </select>
      </div>
      <div style="margin-bottom: 20px;">
         <select name="moFamily" class="box" required> 
         	<option value="가족수">가족 수</option>
            <option value="1">1명</option>   
            <option value="2">2명</option>
            <option value="3">3명</option>
            <option value="4">4명 이상</option>         
         </select>
      </div>
      <div style="margin-bottom: 20px;">
         <label class="question">출발지 정보</label>
         <br>
         <input type="text" name="szipNo" size="30" placeholder="우편번호" readonly required>&nbsp;&nbsp;
         <input type="button" value="주소 검색" onclick="goPopup()" class="btn btn-primary" style="padding: 9.75px 11.25px;">
         <br>
         <br>
         <input type="text" name="moSaddr" size="100" placeholder="주소입력" style="width:400px;" readonly required>
         &nbsp;
         <select name="moSfloor" class="box" required>
         	<option value="0">출발지 층수</option>
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
      <!-- 특수 이삿짐 -->
      <div style="margin-bottom: 10px;">
         <label class="question">특수 이삿짐을 선택해 주세요.</label><br>
            <input type="checkbox" id="r1" name="moZim" value="피아노"><label for="r1">피아노</label><br>
            <input type="checkbox" id="r2" name="moZim" value="붙박이장"><label for="r2">붙박이장 </label><br>
            <input type="checkbox" id="r3" name="moZim" value="돌침대"><label for="r3">돌침대</label><br>
            <input type="checkbox" id="r4" name="moZim" value="에어컨"><label for="r4">에어컨 </label><br>
            <input type="checkbox" id="r5" name="moZim" value="벽걸이 TV"><label for="r5">벽걸이TV </label><br>
      </div>
      <div style="margin-bottom: 20px;">
         <label class="question">출발지 집의 평수, 이사 유형을 알려주세요.</label><br>
        <!-- 평수 -->
         <select name="moSize" class="box" required>
         	<option value="0">평수</option>
            <option value="10">15평 이하</option>
            <option value="17">15~19평</option>      
            <option value="25">20~29평</option>      
            <option value="35">30~39평</option>            
            <option value="45">40~49평</option>            
            <option value="55">50~59평</option>            
            <option value="60">60평 이상</option>            
         </select>
         &nbsp;
         <!-- 이사 유형 -->
         <select name="moType" class="box" required>
         	<option value="이사유형">이사 유형</option>
            <option value="가정이사">가정 이사</option>
            <option value="소형이사">소형 이사</option>      
            <option value="사무실이사">사무실 이사</option>      
         </select>
      </div>
      <div style="margin-bottom: 20px;">
         <label class="question">도착지 정보</label><br>
         <input type="text" name="ezipNo" size="30" placeholder="우편번호" readonly required>&nbsp;&nbsp;
         <input type="button" value="주소 검색" onclick="goPopup2()" class="btn btn-primary" style="padding: 9.75px 11.25px;">
         <br>
         <br>
         <input type="text" name="moEaddr" size="100" placeholder="주소입력" style="width:400px;" readonly required>
         &nbsp;

         <select name="moEfloor" class="box" required>
         	<option value="0">도착지 층수</option>
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
      	<!-- 짐 상하차 서비스  -->
         <label class="question">필요한 서비스를 선택해 주세요.</label>
         <br>
         <input type="checkbox" id="r6" data-toggle="checkbox" name="moService" checked="checked">	  
         <label for="r6" style="font-size:18px; font-weight:bold;">짐 상하차 서비스</label>
         <br><!-- 추후에 ajax로 이거 체크하면 아래 radio버튼 활성화 되도록 만들기-->
            <div class="radio">
               <input type="radio" id="r7" name="moService1" value="포장이사 이용안함" required>
               <label for="r7">포장이사 이용안함 </label>
             	  	<br>
             	  	<label for="r7">&nbsp;&nbsp;포장이사 서비스를 원하지 않을 경우</label>
             	    <br>
            	    <input type="radio" id="r8" name="moService1" value="반/포장이사 서비스" required>
             	    <label for="r9">반/포장이사 서비스</label>
             	    <br>
             	    <label for="r9">&nbsp;&nbsp;출발지에서 대형/소형 가전 및 가구제품 포장만 필요한 경우</label>
             	    <br>
               	 	<input type="radio" id="r10" name="moService1" value="포장이사 서비스" required>
               	 	<label for="r10">포장이사 서비스</label>
               	 	<br>
               	 	<label for="r10">&nbsp;&nbsp;출발지에서 짐을 포장하고 옮긴 후 도착지에서 짐정리까지 모두 필요한 경우</label>
            </div>
            				 <!-- 보관 이사 서비스 -->
         <input type="checkbox" id="r11"name="moService2check">
         <label for="r11" style="font-size:18px; font-weight:bold;">보관이사 서비스</label><br>
         <input type="hidden" name="moService2"/>
      </div>
      <div class="serviceCheckBox">
      <div style="text-align:center">
     	
         <input type="checkbox" id="r12" name="agreement" onchange="agreeCheck(this.form)">
     	 <label for="r12">&nbsp;서비스 이용약관 동의 <a href="javascript:tosPopup();">[전문보기]</a></label>
      </div>
      </div>
      <div style="text-align:center; margin-bottom: 10px;">
     	 <button type="submit" class="btn btn-warning" style="width:150px; padding: 9.75px 11.25px;" id="checkButton" disabled>
     	 제출하기
     	 </button>
      	 </div>
      	 <p/>
      	 <p/>
   </div>
</form>
</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="./webjars/bootstrap/4.3.1/js/bootstrap.js"></script>
<%@include file="../footer.jsp" %>
</body>
</html>