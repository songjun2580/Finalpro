<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./webjars/bootstrap/4.3.1/css/bootstrap.css">
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script language="javascript">

function goPopup(){
   // 주소검색을 수행할 팝업 페이지를 호출합니다.
   // 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
   var pop = window.open("cleanJusoPopup.do","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
   // 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다. 
}

function jusoCallBack(clAddrDetail, clRoadAddr){
      // 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
      document.userCleanEstimate.clRoadAddr.value = clRoadAddr;
      document.userCleanEstimate.clAddrDetail.value = clAddrDetail;
}
</script>

<script>
document.addEventListener("DOMContentLoaded", function() {
    var elements = document.getElementsByTagName("INPUT");
    for (var i = 0; i < elements.length; i++) {
        elements[i].oninvalid = function(e) {
            e.target.setCustomValidity("");
            if (!e.target.validity.valid) {
                e.target.setCustomValidity("견적서를 제출하기 전 약관에 동의해주세요");
            }
        };
        elements[i].oninput = function(e) {
            e.target.setCustomValidity("");
        };
    }
})
function tosPopup(){//이용약관 팝업
   window.open('userTermsOfService.do','tosPopup','width=1200,height=900,left=30');
}
function addrValue(){//submit전 청소 업체 소재지 값 합치는 메서드
   var clCoAddr1=document.userCleanEstimate.clCoAddr1.value;
   var clCoAddr2=document.userCleanEstimate.clCoAddr2.value;
   document.userCleanEstimate.clCoAddr.value=clCoAddr1+" "+clCoAddr2;
   
//   var clAddrDetail= document.userCleanEstimate.clAddrDetail.value
//   clAddrDetail=clAddrDetail.replace('%28','(');
//   clAddrDetail=clAddrDetail.replace('%29',')');

}
$(function(){
   $('#clCoAddr1').change(function(){
   //시/군/구
   var seoul=['강남구', '강동구', '강북구', '강서구', '관악구', '광진구', '구로구', '금천구', '노원구', '도봉구', '동대문구', '동작구', '마포구','서대문구', '서초구', '성동구', '성북구', '송파구', '양천구', '영등포구', '용산구', '은평구', '종로구', '중구', '중랑구']; //시/군/구
   var kyeongki=['가평군', '고양시', '과천시', '광명시', '광주시', '구리시', '군포시', '김포시', '남양주시', '동두천시', '부천시', '성남시', '수원시', '시흥시', '안산시', '안성시', '안양시', '양주시', '양평군', '여주시', '연천군', '오산시', '용인시', '의왕시', '의정부시', '이천시', '파주시', '평택시', '포천시', '하남시', '화성시']; 
   var incheon=['강화군', '계양구', '남동구', '동구', '미추홀구', '부평구', '서구', '연수구', '옹진군', '중구'];
   var Busan=['강서구','금정구','기장군','남구','동구','동래구','부산진구','북구','사상구','사하구','서구','수영구','연제구','영도구','중구','해운대구'];
   var Daegu=['대덕구','동구','서구','유성구','중구'];
   var Gwangju=['광산구','남구','동구','북구','서구'];
   var Daejeon=['대덕구','동구','서구','유성구','중구'];
   var Ulsan=['남구','동구','북구','울주군','중구'];
   var Kangwon=['강릉시','고성군','동해시','삼척시','속초시','양구군','양양군','영월군','원주시','인제군','정선군','철원군','춘천시','태백시','평창군','홍천군','화천군','횡성군'];
   var kyeongnam=['거제시','거창군','고성군','김해시','남해군','밀양시','사천시','산청군','양산시','의령군','진주시','창녕군','창원시','통영시','하동군','함안군','함양군','합천군'];
   var kyeongbook=['경산시','경주시','고령군','구미시','군위군','김천시','문경시','봉화군','상주시','성주군','안동시','영덕군','영양군','영주시','영천시','예천군','울릉군','울진군','의성군','청도군','청송군','칠곡군','포항시'];
   var Jeonnam=['강진군','고흥군','곡성군','광양시','구례군','나주시','담양군','목포시','무안군','보성군','순천시','신안군','여수시','영광군','영암군','완도군','장성군','장흥군','진도군','함평군','해남군','화순군'];
   var Jeonbook=['고창군','군산시','김제시','남원시','무주군','부안군','순창군','완주군','익산시','임실군','장수군','전주시','정읍시','진안군'];
   var Chungnam=['계룡시','공주시','금산군','논산시','당진시','보령시','부여군','서산시','서천군','아산시','예산군','천안시','청양군','태안군','홍성군'];
   var Chungbook=['괴산군','단양군','보은군','영동군','옥천군','음성군','제천시','증평군','진천군','청주시','충주시'];
   var Jeju=['서귀포시','제주시'];
   var Sejong=['세종시'];
   //var selectItem=$('select#clCoAddr1').val();
   var changeItem;
   if(this.value==''){
      changeItem=['시/군/구'];
   }else if(this.value=='서울'){
      changeItem=seoul;
   }else if(this.value=='경기'){
      changeItem=kyeongki;
   }else if(this.value=='인천'){
      changeItem=incheon;
   }else if(this.value=='부산'){
      changeItem=Busan;
   }else if(this.value=='대구'){
      changeItem=Daegu;
   }else if(this.value=='광주'){
      changeItem=Gwangju;
   }else if(this.value=='대전'){
      changeItem=Daejeon;
   }else if(this.value=='울산'){
      changeItem=Ulsan;
   }else if(this.value=='강원'){
      changeItem=Kangwon;
   }else if(this.value=='경남'){
      changeItem=kyeongnam;
   }else if(this.value=='경북'){
      changeItem=kyeongbook;
   }else if(this.value=='전남'){
      changeItem=Jeonnam;
   }else if(this.value=='전북'){
      changeItem=Jeonbook;
   }else if(this.value=='충남'){
      changeItem=Chungnam;
   }else if(this.value=='충북'){
      changeItem=Chungbook;
   }else if(this.value=='제주'){
      changeItem=Jeju;
   }else if(this.value=='세종'){
      changeItem=Sejong;
   }
   
   $('#clCoAddr2').empty();
   
   for(var count=0; count<changeItem.length; count++){
      var option=$('<option>'+changeItem[count]+'</option>');
      $('#clCoAddr2').append(option);
   }
   });
});
</script>

<title>청소 견적서 작성</title>
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
</head>
<body>
<c:if test="${empty sessionScope.uIdx}">
   <script>
   window.alert('로그인 후 이용해주세요');
   location.href="index.do"
   </script>
</c:if>
<c:if test="${not empty sessionScope.uIdx}">
   <%@include file="../header.jsp" %>
   <div class="center" style="margin-top:3%">
   <div class="alert alert-secondary" role="alert" style="font-size: 20px; font-weight:bold;">
      청소 견적 신청
   </div>
   <hr>
      <form name="userCleanEstimate" action="userCleanEstSubmit.do" onsubmit="addrValue()">
      <input type="hidden" value="${sessionScope.uIdx}" name="uIdx">
      <div class="bodyContent">
         <div style="margin-bottom: 20px;">
            <label class="question">청소날을 입력해주세요</label><br>
            <input type="date" name="clDate">
         </div>
         <div style="margin-bottom: 20px;">
            <label class="question">신청인 성함</label><br>
            <input type="text" name="clName">
         </div>
         <div style="margin-bottom: 20px;">
            <label class="question">신청인 연락처</label><br>
            <input type="text" name="clTel">
         </div>
         <div style="margin-bottom: 20px;">
            <label class="question">도로명 주소</label><br>
            <input type="text"  style="width:200px;" id="clRoadAddr"  name="clRoadAddr" readonly required/>
            <input type="button" value="도로명 검색" onclick="goPopup()" class="btn btn-primary" style="padding: 9.75px 11.25px;">
               <br>
                  <br>
            <label class="question">상세주소</label><br>
            <input type="text" style="width:400px; margin-top:2%; size: 100; width:400px" id="clAddrDetail"  name="clAddrDetail"  placeholder="주소입력" readonly required/>
               &nbsp;
         </div>
         <div style="margin-bottom: 20px;">
            <label class="question">원하는 업체 소재지</label><br> <!-- ajax활용해서 변경!! -->
            <select name="clCoAddr1" id="clCoAddr1"><!-- onchange="coAddrSelectboxChange()" -->
               <option value="">시/도</option>
               <option value="서울">서울</option>
               <option value="경기">경기</option>
               <option value="인천">인천</option>
               <option value="부산">부산</option>
               <option value="대구">대구</option>
               <option value="광주">광주</option>
               <option value="대전">대전</option>
               <option value="울산">울산</option>
               <option value="강원">강원</option>
               <option value="경남">경남</option>
               <option value="경북">경북</option>
               <option value="전남">전남</option>
               <option value="전북">전북</option>
               <option value="충남">충남</option>
               <option value="충북">충북</option>
               <option value="제주">제주</option>
               <option value="세종">세종</option>
            </select>
            &nbsp;&nbsp;
            <select name="clCoAddr2" id="clCoAddr2">
               <option value="">--시/군/구--</option>
            </select>
            <input type="hidden" name="clCoAddr">
         </div>
         <div style="margin-bottom: 10px;">
            <label class="question">청소 종류</label><br>
               <input type="radio" id="r1" name="clType1" value="입주 청소"><label for="r1">&nbsp;입주 청소(신축 건물에 첫 입주하는 경우/이전 거주자가 살던 집에 이사하는 경우)</label><br>
               <input type="radio" id="r2" name="clType1" value="거주 청소"><label for="r2">&nbsp;거주 청소(현재 거주하고 있는 집 청소)</label><br>
               <input type="radio" id="r3" name="clType1" value="사무실 청소"><label for="r3">&nbsp;사무실 청소</label><br>
               <input type="radio" id="r4" name="clType1" value="준공 청소"><label for="r4">&nbsp;준공 청소</label><br>
            <label class="question">부가서비스 (중복선택 가능)</label><br>
               <input type="checkbox" id="r5" name="clType2" value="세탁기 청소"><label for="r5">&nbsp;세탁기 청소</label><br>
               <input type="checkbox" id="r6" name="clType2" value="에어컨 청소"><label for="r6">&nbsp;에어컨 청소</label><br>
               <input type="checkbox" id="r7" name="clType2" value="전기오븐 청소"><label for="r7">&nbsp;전기오븐 청소</label><br>
               <input type="checkbox" id="r8" name="clType2" value="단문 냉장고"><label for="r8">&nbsp;단문 냉장고</label><br>
               <input type="checkbox" id="r9" name="clType2" value="양문 냉장고"><label for="r9">&nbsp;양문 냉장고</label><br>
               <input type="checkbox" id="r10" name="clType2" value="침대 매트리스"><label for="r10">&nbsp;침대 매트리스</label><br>
         </div>
          <div style="text-align:center"><input type="checkbox" id="r11" name="agreement" required><label for="r11">&nbsp;서비스 이용약관 동의 <a href="javascript:tosPopup();">[전문보기]</a></label></div>
         <div style="text-align:center; margin-bottom: 10px;"><button type="submit" class="btn btn-primary" style="width:150px;">견적서 등록</button></div>
      </form>
   </div>
   <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   <script src="./webjars/bootstrap/4.3.1/js/bootstrap.js"></script>
   <%@include file="../footer.jsp" %>
</c:if>
</body>
</html>