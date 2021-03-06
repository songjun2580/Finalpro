<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>이사견적서 전체 목록</title>
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
table{
	margin:0px auto;
	width:1000px;
}
.search{
	text-align:right;
}
.page{
	text-align:center;
	padding:20px;
}
</style>
<script>
function openMoveEst(){//이용약관 팝업
	window.open('admMoveEstimate.do','moveEstimate','width=1200,height=900,left=30');
}
function openMoveEst(moIdx){	//이사견적서 보기
	var url = 'admMoveEstimate.do?moIdx='+moIdx;
	window.open(url,'moveEstimate','width=600,height=700,left=30');	
}
</script>
</head>
<body>
<%@include file="adm_header.jsp" %>
 <header class="masthead"  style="background-image: url('resources/img/emp_main.png');">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>이사견적서</h1>
            <span class="subheading"></span>
          </div>
        </div>
      </div>
    </div>
  </header>
<div class="row">
  <div class="col-2">
    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
      <a class="nav-link active" id="v-pills-home-tab"  href="admMest.do" role="tab" aria-controls="v-pills-home">전체 신청목록</a>
      <a class="nav-link" id="v-pills-profile-tab"  href="admMest_wait.do" role="tab" aria-controls="v-pills-profile">승인대기</a>
      <a class="nav-link" id="v-pills-profile-tab"  href="admMest_confirm.do" role="tab" aria-controls="v-pills-profile">승인완료</a>
    </div>
  </div>
  <div class="col-9">
      <div class="card bg-secondary text-white shadow">
	      <div class="card-body">
	                      이사고객 전체 목록
	      </div>
      </div><br>
	  <div class="search">
				<input type="text" name="search">
				<input type="button" value="검색">
	  </div><br>
	  <div class="row">
	    <div class="table-responsive">
		           <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		             <thead>
		                 <tr>
		                  <th>견적번호</th>
					      <th>이름</th>
				          <th>휴대폰번호</th>
				          <th>이사날짜</th>
				          <th>견적서 상세 보기</th>
				          <th>진행상태</th>
		                  </tr>
		             </thead>
					 <tfoot>
		             </tfoot>
		             <tbody>
		             <c:if test="${empty lists }">
		             <tr>
						<td colspan="6" align="center">
							신청된 견적서가 없습니다.
						</td>
					</tr>
					</c:if>
					<c:forEach var="dto" items="${lists}">
			               <tr>
			               <td>${dto.moIdx }</td>
			               <td>${dto.moName }</td>
		                   <td>${dto.moTel }</td>
			               <td>${dto.moDate }</td>
			               <td><input type="button" name="admMoveEstimate" value="견적서 보기" onClick="openMoveEst(${dto.moIdx})"></td>
			               <td>${dto.moStatus}</td>
			             </tr>
			        </c:forEach>
		           </tbody>
		         </table>
		       </div>
		   <br>
	</div>
	</div>
</div>
<div class="page">
	 ${pageStr }
</div>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="./webjars/bootstrap/4.3.1/js/bootstrap.js"></script>
  <%@include file="../footer.jsp" %>
</body>
</html>
