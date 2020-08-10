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

  <title>emp_header</title>
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
.col-6{
	 margin:0px auto;
}
th,td{
	text-align:center;
}
</style>
<script>
function popUp(mbIdx){
	window.open('contractPopup.do?mbIdx='+mbIdx,'contractPopup','width=800px, heigth:400px');
}
</script>
</head>
<c:set var="moIdx" value="${requestScope.moIdx }"></c:set>
<body>
<%@include file="emp_header.jsp" %>
   <header class="masthead"  style="background-image: url('resources/img/emp_main.png');">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>이사업체 리스트</h1>
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
    
       	 <div class="col-9">
            <div class="card bg-secondary text-white shadow">
               <div class="card-body">
                      김무순 고객님 이사업체 목록
               <div class="text-white-50 small"></div>
               </div>
            </div>
                 
			<table class="table table-striped">
				<thead>
				<tr>
				<th scope="col">입찰번호</th>
				<th scope="col">업체명</th>
				<th sbsortable="name" scope="col"><span>담당자</span></th>
				<th sbsortable="area" scope="col"><span >담당자 연락처</span></th>
				<th sbsortable="population" scope="col"><span >주소지</span></th>
				<th sbsortable="population" scope="col"><span>가격</span></th>
				<th  sbsortable="population" scope="col"><span >업체 선정</span></th>
				</tr>
				</thead>
				<hr>
				<tbody>
				<c:forEach var="dto" items="${list }">
					<tr>
					<td><ngb-highligh>${dto.mbIdx }</ngb-highligh></td>
					<th scope="row"><a href="userBlogView.do?coIdx=${dto.coIdx}">${dto.coName }</a></th>
					<td><ngb-highligh>${dto.coRep}</ngb-highlight></td>
					<td><ngb-highlight>${dto.coTel }</ngb-highlight></td>
					<td><ngb-highlight>${dto.coAddr}</ngb-highlight></td>
					<td><ngb-highlight>${dto.mbMoney}원</ngb-highlight></td>
					<td>
					<c:if test="${Idx==0}">
						<ngb-highlight>
						<button type="button" class="btn btn-primary btn-sm" onclick="location.href='comConfirmForm.do?mbIdx=${dto.mbIdx }'">확정하기</button>
						</ngb-highlight>
					</c:if>
					<c:if test="${Idx!=0}">
						<c:if test="${dto.coIdx==Idx}">
						<ngb-highlight>
						<b>확정완료</b>
						</ngb-highlight>
						</c:if>
						<c:if test="${dto.coIdx!=Idx}">
						<ngb-highlight>
						확정불가
						</ngb-highlight>
						</c:if>
					</c:if>
					</td>
					<td>
					 <c:if test="${!empty mbIdx}">
						 <c:if test="${dto.coIdx==Idx}">
							<ngb-highlight>
								 <button type="button" class="btn btn-success" onclick="popUp(${mbIdx});">계약서 보기</button>
							</ngb-highlight>
						</c:if>
		            	<c:if test="${dto.coIdx!=Idx}">
		            		<ngb-highlight>
								 <button type="button" class="btn btn-success">----</button>
							</ngb-highlight>
		            	</c:if>
		             </c:if>
		            </td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
</div>
</div>


  <hr>
  <%@include file="../footer.jsp" %>
  </body>
  </html>