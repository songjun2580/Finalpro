<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>청소 견적서 작성</title>
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
.bodyContent{
	margin-left:50px;
}
</style>
<script>
/**
 * 
 //주소찾기(다음 우편번호 API)
$('#zipcode_search').click(function(){
    new daum.Postcode({
         oncomplete: function(data) {
          // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

          // 각 주소의 노출 규칙에 따라 주소를 조합한다.
          // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
          var fullAddr = ''; // 최종 주소 변수
          var extraAddr = ''; // 조합형 주소 변수

          // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
          if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
              fullAddr = data.roadAddress;

          } else { // 사용자가 지번 주소를 선택했을 경우(J)
              fullAddr = data.jibunAddress;
          }

          // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
          if(data.userSelectedType === 'R'){
              //법정동명이 있을 경우 추가한다.
              if(data.bname !== ''){
                  extraAddr += data.bname;
              }
              // 건물명이 있을 경우 추가한다.
              if(data.buildingName !== ''){
                  extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
              }
              // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
              fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
          }

          // 우편번호와 주소 정보를 해당 필드에 넣는다.
          document.getElementById('m_zipcode').value = data.zonecode; //5자리 새우편번호 사용
          document.getElementById('m_addr1').value = fullAddr;

          // 커서를 상세주소 필드로 이동한다.
          document.getElementById('m_addr2').focus();
      }
  }).open();
 });*/

function tosPopup(){//이용약관 팝업
	window.open('termsOfService.jsp','tosPopup','width=1200,height=900,left=30');
}
</script>
</head>
<body>
<%@include file="../header.jsp" %>
<label style="font-weight:bold; font-size:30px;">청소 견적 신청</label>
<hr>
<form name="cleaningEstimate" action="????????">
	<div class="bodyContent">
		<div style="margin-bottom: 20px;">
			<label class="question">청소날을 입력해주세요</label><br>
			<input type="date" name="cl_date">
		</div>
		<div style="margin-bottom: 20px;">
			<label class="question">신청인 성함</label><br>
			<input type="text" name="us_name">
		</div>
		<div style="margin-bottom: 20px;">
			<label class="question">신청인 연락처</label><br>
			<input type="text" name="us_tel">
		</div>
		<div style="margin-bottom: 20px;">
			<label class="question">주소</label><br>
			<input type="text" value="우편번호검색 api 여기에" name="cl_addr">
		</div>
		
		<div style="margin-bottom: 20px;">
			<label class="question">원하는 업체 소재지</label><br> <!-- ajax활용해서 변경!! -->
			<select name="cl_addr1">
				<option>서울시</option>
				<option>부산광역시</option>
			</select>
			&nbsp;&nbsp;
			<select name="cl_addr2">
				<option>강남구</option>
				<option>서대문구</option>
				<option>마포구</option>
			</select>
		</div>
		<div style="margin-bottom: 10px;">
			<label class="question">청소 종류</label><br>
				<input type="radio" id="r1" name="cl_type1" value="입주 청소"><label for="r1">&nbsp;입주 청소(신축 건물에 첫 입주하는 경우/이전 거주자가 살던 집에 이사하는 경우)</label><br>
				<input type="radio" id="r2" name="cl_type1" value="거주 청소"><label for="r2">&nbsp;거주 청소(현재 거주하고 있는 집 청소)</label><br>
				<input type="radio" id="r3" name="cl_type1" value="사무실 청소"><label for="r3">&nbsp;사무실 청소</label><br>
				<input type="radio" id="r4" name="cl_type1" value="준공 청소"><label for="r4">&nbsp;준공 청소</label><br>
			<label class="question">부가서비스 (중복선택 가능)</label><br>
				<input type="checkbox" id="r5" name="세탁기 청소" value="on"><label for="r5">&nbsp;세탁기 청소</label><br>
				<input type="checkbox" id="r6" name="에어컨 청소" value="on"><label for="r6">&nbsp;에어컨 청소</label><br>
				<input type="checkbox" id="r7" name="전기오븐 청소" value="on"><label for="r7">&nbsp;전기오븐 청소</label><br>
				<input type="checkbox" id="r8" name="단문 냉장고" value="on"><label for="r8">&nbsp;단문 냉장고</label><br>
				<input type="checkbox" id="r9" name="양문 냉장고" value="on"><label for="r9">&nbsp;양문 냉장고</label><br>
				<input type="checkbox" id="r10" name="침대 매트리스" value="on"><label for="r10">&nbsp;침대 매트리스</label><br>
		</div>
		<div style="text-align:center; margin-bottom: 10px;"><button type="submit" class="btn btn-primary" style="width:150px;">견적서 등록</button></div>
		<div style="text-align:center"><input type="checkbox" id="r5" name="agreement"><label for="r5">&nbsp;서비스 이용약관 동의 <a href="javascript:tosPopup();">[전문보기]</a></label></div>
	</div>
</form>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="./webjars/bootstrap/4.3.1/js/bootstrap.js"></script>
<%@include file="../footer.jsp" %>

</body>
</html>