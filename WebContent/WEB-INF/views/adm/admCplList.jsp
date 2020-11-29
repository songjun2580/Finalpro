<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>adm_header</title>
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
.search{
	text-align:right;
}
.page{
	text-align:center;
	padding:20px;
}
.liset{
display: inline;
padding: 25px;
}
</style>
</head>
<body>
<%@ include file="adm_header.jsp" %>
 <header class="masthead"  style="background-image: url('resources/img/emp_main.png');">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>불만사항</h1>
            <span class="subheading"></span>
          </div>
        </div>
      </div>
    </div>
  </header>
<div class="row">
  <div class="col-2">
    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
      <a class="nav-link active" id="v-pills-home-tab"  href="admCplSubList.do" role="tab" aria-controls="v-pills-home">이사업체</a>
      <a class="nav-link" id="v-pills-profile-tab"  href="admCplList.do" role="tab" aria-controls="v-pills-profile">청소업체</a>
      <a class="nav-link" id="v-pills-profile-tab"  href="admCplConfirmListList.do" role="tab" aria-controls="v-pills-profile">완료된 불만사항</a>
    </div>
  </div>
  <div class="col-9">
<div class="card bg-secondary text-white shadow">
	      <div class="card-body">
	               <span>이사업체 불만사항 신고목록</span>
	      </div>
      </div><br>
<div class="search" style="display: inline;">
	<ul style="display: inline; list-style: none;">
		<li class="liset">업체명:<span>${dto2.coName }</span></li>
		<li class="liset">불만사항 누적수:<span>${dto2.coCpl }</span></li>
		<li class="liset">경고횟수:<span>${dto2.coWrg }</span></li>
		<li class="liset"><input type="text" name="serch">
		<input type="button" value="검색"></li>
	</ul>
</div><br>
<div class="row">
    <div class="table-responsive">
	           <table class="table table-bordered" id="dataTable" width="100%" >
	             <thead>
	                 <tr>
	                  <th>번호</th>
				      <th>작성자</th>
			          <th>제목 </th>
			          <th>관리자 확인</th>
			          </tr>
	             </thead>
				 <tfoot>
	             </tfoot>
	             <tbody>
	             <c:forEach var="dto" items="${dto }">
		               <tr>
		               <c:if test="${empty dto }">
		               	<td colspan="4">등록된 불만사항이 없습니다.</td>
		               </c:if>
		               <td>${dto.cplIdx }</td>
		               <td>${dto.uName }</td>
		               <td><a href="admCplContent.do?cplIdx=${dto.cplIdx }">${dto.cplSubject }</a></td>
		                <td>
			               <c:if test="${dto.cplConfirm==0 }">
			              	<a href="admCplConfirm.do?cplIdx=${dto.cplIdx }"><button onclick="confirm(${dto.cplIdx})" >답변확인</button></a>
			               </c:if>
			               <c:if test="${dto.cplConfirm==1 }">
			               <span>확인됨</span>
			               </c:if>
		               </td>
		             </tr>
		       </c:forEach>
	           </tbody>
	         </table>
	       </div>
	   <br>
</div>
</div>
</div>
  <%@include file="../footer.jsp" %>
</body>
</html>