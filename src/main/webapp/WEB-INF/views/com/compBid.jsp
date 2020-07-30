<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./webjars/bootstrap/4.3.1/css/bootstrap.css">
<style>
body {
	width: 80%;
	margin: 0px auto;
}	
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

</style>
<%@include file="comp_Header.jsp" %>
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
		    <a class="nav-link active" id="pills-bid-tab" data-toggle="pill" href="compBid.do" role="tab" aria-selected="false">이사견적서조회</a>
		  </li>
		</ul>
	</div>
	<!-- 이사 견적서 조회 -->
	<div class="col-9">
	<div>
	  <div class="alert alert-secondary" role="alert">
         	이사 견적서 조회
      </div>
	</div>
	<div>
		<b style="font-size: 11pt;">(입찰 페이지)</b>
	</div>
	<div>
		<div class="local">출발지&nbsp;<button type="button" class="btn btn-primary">지역조회</button>&nbsp;&nbsp;도착지&nbsp;<button type="button" class="btn btn-primary">지역조회</button></div>
	<p/>
		<table border="0" cellpadding="0" cellspacing="0" >
			<tbody>
		<tr>
		<th class="compBidTable">
			<p style="text-align: center; "><b>&nbsp;번호</b>
			</p>
			</th>
		<th class="compBidTable">
			<p style="text-align: center; "><b>&nbsp;날짜</b>
			</p>
			</th>
		<th class="compBidTable">
			<p style="text-align: center; "><b>&nbsp;고객명</b>
			</p>
			</th>
		<th class="compBidTable">
			<p style="text-align: center;"><b>&nbsp;출발지<br>(상세주소)</b>
			</p>
			</th>
		<th class="compBidTable">
			<p style="text-align: center; ">
			<b>&nbsp;도착지</b>
			</p>
		</th>
		<th class="compBidTable">
			<p style="text-align: center;">
			<b>&nbsp;예상 가격</b>
			</p>
			</th>
		<th class="compBidTable">
			<p style="text-align: center; " align="center">
			<b>&nbsp;상세 정보</b>
			</p>
			</th>
		</tr>
		<tr>
		<td>
			<p>1</p>
		</td>
		<td>
			<p>date</p>
		</td>
		<td>
			<p>홍길동</p>
		</td>
		<td>
			<p>경기 광주시</p>
		</td>
		<td>
			<p>광주광역시</p>
		</td>
		<td>
			<p>3,457,233원</p>
		</td>
		<td>
			<p><input type="button" value="견적서 조회"><br>
			   <input type="button" value="   입     찰   "></p>
		</td>
		</tr>
		</tbody>
		</table>
	<hr>
	</div>
</div>
</div>
</body>
  <%@include file="../footer.jsp" %>
</html>