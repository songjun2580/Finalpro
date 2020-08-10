<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>진행중인 계약</title>
  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
  <link href="css/clean-blog.min.css" rel="stylesheet">

<style>
body{
   font-family:sans-serif;
}
input{
	text-align:center;
}
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-baqh{text-align:center;vertical-align:top}
.tg .tg-c3ow{border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-hafo{background-color:#fffc9e;border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-elvq{background-color:#fffc9e;border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-dvpl{border-color:inherit;text-align:right;vertical-align:top}
</style>
<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.debug.js"></script>
<script>
window.onload=function(){
	var now=new Date();//<-객체가 생성되는 시점의 시간
	var year=now.getFullYear();
	var mon=now.getMonth()+1;
	var mon2=now.getMonth()+2; mon2=(mon2<10)?'0'+mon2:mon2;
	var day=now.getDate();
	var str=year+'년'+mon+'월'+day+'일';
	var str2=year+'년'+mon2+'월'+day+'일';
	
	var dateNode=document.createTextNode(str);
	var dateNode2=document.createTextNode(str+' ~ '+str2);
	document.getElementById('getdate').appendChild(dateNode);
	document.getElementById('paydate').appendChild(dateNode2);
	document.contract.mctDate.value=str;
}

function popUp(mbIdx){
	window.open('contractPopup.do?mbIdx='+mbIdx,'contractPopup','width=900, height=600');
}
</script>
</head>
<body>
<%@include file="emp_header.jsp" %>
   <header class="masthead"  style="background-image: url('resources/img/emp_main.png');">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>계약서 작성</h1>
            <span class="subheading"></span>
          </div>
        </div>
      </div>
    </div>
  </header>
  
   <div class="row">
  <div class="col-2">
    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
	      <a class="nav-link" id="v-pills-home-tab"  href="emp_MoveCustomerList.do" role="tab" aria-controls="v-pills-home" aria-selected="true">이사고객 리스트</a>
	      <a class="nav-link active" id="v-pills-home-tab"  href="emp_MoveCompanyList.do" role="tab" aria-controls="v-pills-home" aria-selected="true">이사업체 리스트</a>
	    </div>
  </div>
   
 <div class="col-lg-9 mb-4">
     <div class="card bg-secondary text-white shadow">
         <div class="card-body">
                      최종 계약서 작성
         </div>
     </div>
	<div class="table-responsive" style="margin-top: 3%; align:center;">
		<c:if test="${empty mbIdx }">
		<h2 style="text-align:center;">계약서 작성</h2>
		</c:if>
		<c:if test="${!empty mbIdx }">
		<h2 style="text-align:center;">계약서</h2>
		</c:if>
		<br>
		<br>
		<c:set var="dto" value="${dto }"></c:set>
	    <c:set var="dto2" value="${dto2 }"></c:set>
		<form name="contract" action="comConfirmSubmit.do" method="get">
		<div style="text-align:right;">
		</div>
		<input type="hidden" name="mbIdx" value="${dto.mbIdx }">
		<input type="hidden" name="mctDate">
               <table class="tg" style="undefined;table-layout: fixed; width: 1013px; margin:0px auto;">
				<colgroup>
				<col style="width: 185px">
				<col style="width: 78px">
				<col style="width: 78px">
				<col style="width: 78px">
				<col style="width: 78px">
				<col style="width: 136px">
				<col style="width: 143px">
				<col style="width: 123px">
				<col style="width: 114px">
				</colgroup>
				<thead>
				  <tr>
				    <th class="tg-c3ow">입찰번호</th>
				    <th class="tg-c3ow" colspan="4">${dto.mbIdx }번</th>
				    <th class="tg-c3ow" colspan="2">방문 날짜</th>
				    <th class="tg-c3ow" colspan="2"><span id="getdate"></span></th>
				  </tr>
				</thead>
				<tbody>
				  <tr>
				    <td class="tg-hafo" colspan="9">고객</td>
				  </tr>
				  <tr>
				    <td class="tg-c3ow">고객명</td>
				    <td class="tg-c3ow" colspan="4">${dto.moName }</td>
				    <td class="tg-c3ow" colspan="2">휴대폰 번호</td>
				    <td class="tg-c3ow" colspan="2">${dto.moTel }</td>
				  </tr>
				  <tr>
				    <td class="tg-hafo" colspan="9">업체</td>
				  </tr>
				  <tr>
				    <td class="tg-c3ow">업체 명</td>
				    <td class="tg-c3ow" colspan="4">${dto.coName }</td>
				     <td class="tg-c3ow" colspan="2"></td>
				    <td class="tg-c3ow" colspan="2"></td>
				  </tr>
				  <tr>
				    <td class="tg-c3ow">이메일</td>
				    <td class="tg-c3ow" colspan="4">${dto.coEmail}</td>
				    <td class="tg-c3ow" colspan="2">휴대폰 번호</td>
				    <td class="tg-c3ow" colspan="2">${dto.coTel}</td>
				  </tr>
				  <tr>
				  	<td class="tg-c3ow">주소</td>
				    <td class="tg-c3ow" colspan="8">${dto.coAddr }</td>
				  </tr>
				  <tr>
				    <td class="tg-hafo" colspan="9">내용</td>
				  </tr>
				  <tr>
				    <td class="tg-c3ow">이삿날</td>
				    <td class="tg-c3ow" colspan="4">${dto.moDate }</td>
				    <td class="tg-c3ow" colspan="2">이사유형</td>
				    <td class="tg-c3ow" colspan="2">${dto.moType }</td>
				  </tr>
				  <tr>
				    <td class="tg-baqh">평수</td>
				    <td class="tg-baqh" colspan="4">${dto.moSize}평</td>
				    <td class="tg-baqh" colspan="2">층수</td>
				    <td class="tg-baqh" colspan="2">${dto.moSfloor }층</td>
				  </tr>
				  <tr>
				    <td class="tg-c3ow">출발지 주소</td>
				    <td class="tg-c3ow" colspan="8">${dto.moSaddr }</td>
				  </tr>
				  <tr>
				  	<td class="tg-c3ow">도착지 주소</td>
				    <td class="tg-c3ow" colspan="8">${dto.moEaddr }</td>
				  </tr>
				  <tr>
				    <td class="tg-0pky"></td>
				    <td class="tg-elvq">안방</td>
				    <td class="tg-elvq">방2</td>
				    <td class="tg-elvq">방3</td>
				    <td class="tg-elvq">방4</td>
				    <td class="tg-elvq" colspan="2">거실 / 베란다</td>
				    <td class="tg-elvq" colspan="2">주방/베란다/욕실</td>
				  </tr>
				  <tr>
				    <td class="tg-0pky">장롱</td>
				    <td class="tg-c3ow"><input type="text" size="1" name="wardrobe1" value="${dto2.wardrobe1 }" placeholder="0"></td>
				    <td class="tg-c3ow"><input type="text" size="1" name="wardrobe2" value="${dto2.wardrobe2 }"></td>
				    <td class="tg-c3ow"><input type="text" size="1" name="wardrobe3" value="${dto2.wardrobe3 }"></td>
				    <td class="tg-c3ow"><input type="text" size="1" name="wardrobe4"value="${dto2.wardrobe4 }"></td>
				    <td class="tg-0pky">소파(1인)</td>
				    <td class="tg-c3ow"><input type="text" size="1" name="sofaone" value="${dto2.sofaone }"></td>
				    <td class="tg-0pky">진열장</td>
				    <td class="tg-baqh"><input type="text" size="1" name="showcase" value="${dto2.showcase }"></td>
				  </tr>
				  <tr>
				    <td class="tg-0pky">침대(싱글)</td>
				    <td class="tg-c3ow"><input type="text" size="1" name="bedSingle1" value="${dto2.bedSingle1 }"></td>
				    <td class="tg-c3ow"><input type="text" size="1" name="bedSingle2" value="${dto2.bedSingle2 }"></td>
				    <td class="tg-c3ow"><input type="text" size="1" name="bedSingle3" value="${dto2.bedSingle3 }"></td>
				    <td class="tg-c3ow"><input type="text" size="1" name="bedSingle4" value="${dto2.bedSingle4 }"></td>
				    <td class="tg-0pky">소파(2인)</td>
				    <td class="tg-c3ow"><input type="text" size="1" name="sofatwo" value="${dto2.sofatwo }"></td>
				    <td class="tg-0pky">냉장고</td>
				    <td class="tg-baqh"><input type="text" size="1" name="frige" value="${dto2.frige }"></td>
				  </tr>
				  <tr>
				    <td class="tg-0pky">침대(더블)/돌침대</td>
				    <td class="tg-c3ow"><input type="text" size="1" name="bedDouble1" value="${dto2.bedDouble1 }"></td>
				    <td class="tg-c3ow"><input type="text" size="1" name="bedDouble2" value="${dto2.bedDouble2 }"></td>
				    <td class="tg-c3ow"><input type="text" size="1" name="bedDouble3" value="${dto2.bedDouble3 }"></td>
				    <td class="tg-c3ow"><input type="text" size="1" name="bedDouble4" value="${dto2.bedDouble4 }"></td>
				    <td class="tg-0pky">소파(3인)</td>
				    <td class="tg-c3ow"><input type="text" size="1" name="sofathird" value="${dto2.sofathird }"></td>
				    <td class="tg-0pky">김치냉장고</td>
				    <td class="tg-baqh"><input type="text" size="1" name="kimchiFrige" value="${dto2.kimchiFrige }"></td>
				  </tr>
				  <tr>
				    <td class="tg-0pky">TV</td>
				    <td class="tg-c3ow"><input type="text" size="1" name="tv1" value="${dto2.tv1 }"></td>
				    <td class="tg-c3ow"><input type="text" size="1" name="tv2" value="${dto2.tv2 }"></td>
				    <td class="tg-c3ow"><input type="text" size="1" name="tv3" value="${dto2.tv3 }"></td>
				    <td class="tg-c3ow"><input type="text" size="1" name="tv4" value="${dto2.tv4 }" ></td>
				    <td class="tg-0pky">TV(벽, 일반)</td>
				    <td class="tg-c3ow"><input type="text" size="1" name="wallTv" value="${dto2.wallTv }"></td>
				    <td class="tg-0pky">식탁</td>
				    <td class="tg-baqh"><input type="text" size="1" name="cooktable" value="${dto2.cooktable }"></td>
				  </tr>
				  <tr>
				    <td class="tg-0pky">화장대</td>
				    <td class="tg-c3ow"><input type="text" size="1" name="dressTable1" value="${dto2.dressTable1 }"></td>
				    <td class="tg-c3ow"><input type="text" size="1" name="dressTable2" value="${dto2.dressTable2 }"></td>
				    <td class="tg-c3ow"><input type="text" size="1" name="dressTable3" value="${dto2.dressTable3 }"></td>
				    <td class="tg-c3ow"><input type="text" size="1" name="dressTable4" value="${dto2.dressTable4 }"> </td>
				    <td class="tg-0pky">운동기구</td>
				    <td class="tg-c3ow"><input type="text" size="1" name="fit" value="${dto2.fit }"></td>
				    <td class="tg-0pky">의자</td>
				    <td class="tg-baqh"><input type="text" size="1" name="chair" value="${dto2.chair }"></td>
				  </tr>
				  <tr>
				    <td class="tg-0pky">책상/ 책장</td>
				    <td class="tg-c3ow"><input type="text" size="1" name="desk1" value="${dto2.desk1 }"></td>
				    <td class="tg-c3ow"><input type="text" size="1" name="desk2" value="${dto2.desk2 }"></td>
				    <td class="tg-c3ow"><input type="text" size="1" name="desk3" value="${dto2.desk3 }"></td>
				    <td class="tg-c3ow"><input type="text" size="1" name="desk4" value="${dto2.desk4 }"></td>
				    <td class="tg-0pky">피아노</td>
				    <td class="tg-c3ow"><input type="text" size="1" name="piano" value="${dto2.piano }"></td>
				    <td class="tg-0pky">청소기</td>
				    <td class="tg-baqh"><input type="text" size="1" name="cleaner" value="${dto2.cleaner }"></td>
				  </tr>
				  <tr>
				    <td class="tg-0pky">붙박이장</td>
				    <td class="tg-c3ow"><input type="text" size="1" name="built1" value="${dto2.built1 }"></td>
				    <td class="tg-c3ow"><input type="text" size="1" name="built2" value="${dto2.built2 }"></td>
				    <td class="tg-c3ow"><input type="text" size="1" name="built3" value="${dto2.built3 }"></td>
				    <td class="tg-c3ow"><input type="text" size="1" name="built4" value="${dto2.built4 }"></td>
				    <td class="tg-0pky">에어컨</td>
				    <td class="tg-c3ow"><input type="text" size="1" name="aircon" value="${dto2.aircon }"></td>
				    <td class="tg-0pky">선풍기</td>
				    <td class="tg-baqh"><input type="text" size="1" name="fan" value="${dto2.fan }"></td>
				  </tr>
				  <tr>
				    <td class="tg-0pky">서랍장</td>
				    <td class="tg-c3ow"><input type="text" size="1" name="chiffo1" value="${dto2.chiffo1 }"></td>
				    <td class="tg-c3ow"><input type="text" size="1" name="chiffo2" value="${dto2.chiffo2 }"></td>
				    <td class="tg-c3ow"><input type="text" size="1" name="chiffo3" value="${dto2.chiffo3 }"></td>
				    <td class="tg-c3ow"><input type="text" size="1" name="chiffo4" value="${dto2.chiffo4 }"></td>
				    <td class="tg-0pky">수족관</td>
				    <td class="tg-c3ow"><input type="text" size="1" name="aqua" value="${dto2.aqua }"></td>
				    <td class="tg-0pky">뒷 베란다</td>
				    <td class="tg-baqh"><input type="text" size="1" name="porch" value="${dto2.porch }"></td>
				  </tr>
				  <tr>
				    <td class="tg-0pky">놀이기구</td>
				    <td class="tg-c3ow"><input type="text" size="1" name="ride1" value="${dto2.ride1 }"></td>
				    <td class="tg-c3ow"><input type="text" size="1" name="ride2" value="${dto2.ride2 }"></td>
				    <td class="tg-c3ow"><input type="text" size="1" name="ride3" value="${dto2.ride3 }"></td>
				    <td class="tg-c3ow"><input type="text" size="1" name="ride4" value="${dto2.ride4 }"></td>
				    <td class="tg-0pky"></td>
				    <td class="tg-baqh"></td>
				    <td class="tg-0pky">욕실/신발장</td>
				    <td class="tg-baqh"><input type="text" size="1" name="bath" value="${dto2.bath }"></td>
				  </tr>
				  <tr>
				    <td class="tg-elvq">견적금액</td>
				    <td class="tg-dvpl" colspan="4">${dto.motempPrice }원</td>
				    <td class="tg-elvq">금액 납부 기간</td>
				    <td class="tg-c3ow" colspan="3"><span id="paydate"></span></td>
				  </tr>
				  <tr>
				    <td class="tg-elvq">계약금액</td>
				    <td class="tg-dvpl" colspan="4"><input type="text" size="6" name="mctPrice" value="${dto2.mctPrice }" required>원</td>
				    <td class="tg-0pky" colspan="4"></td>
				  </tr>
				  <tr>
					<td style="color:red; text-align:right; font-size: 15px" colspan="9">(계약 내용이 한번 작성하면 수정이 불가하오니, 신중히 계약서를 작성하십시오.)</td>
				  </tr>
				</tbody>
				</table>
				<span></span>
				<div align="center" style="margin-top: 3%;">
				    <c:if test="${empty mbIdx}">
				    <button type="submit" class="btn btn-primary" style="margin-right: 5%; width:12%;">계약 완료</button><br>
				    </c:if>
		             <c:if test="${!empty mbIdx}">
		             <button type="button" class="btn btn-primary" onclick="popUp(${mbIdx});" style="margin-right: 5%; width:12%;">계약서 파일 저장</button>
		             <button type="button" class="btn btn-primary" onclick="location.href='emp_MoveCompanyList.do?moIdx=${dto.moIdx}'" style="margin-right: 5%; width:12%;">닫기</button>
		            </c:if>
		        </div>   
		       </form>
		       
              </div>
	<div style="text-align:center;">
		${pageStr}
	</div>
</div>
</div>
  <hr>
  <%@include file="../footer.jsp" %>
  </body>
  </html>